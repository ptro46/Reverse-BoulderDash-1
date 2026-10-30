//! Native, deterministic cave simulation. No Z80 or CPC firmware at runtime.
pub mod controller;
pub mod effects;
use serde::Deserialize;
pub const W: usize = 40;
pub const H: usize = 22;
pub const EMPTY: u8 = 0;
pub const DIRT: u8 = 1;
pub const BRICK: u8 = 2;
pub const MAGIC: u8 = 3;
pub const EXIT: u8 = 4;
pub const OPEN_EXIT: u8 = 5;
pub const STEEL: u8 = 7;
pub const ROCK: u8 = 16;
pub const DIAMOND: u8 = 20;
pub const SPAWN: u8 = 37;
pub const PLAYER: u8 = 56;
pub const AMOEBA: u8 = 58;
pub const ORDER: [usize; 20] = [
    0, 1, 2, 3, 16, 4, 5, 6, 7, 17, 8, 9, 10, 11, 18, 12, 13, 14, 15, 19,
];
pub const NAMES: [&str; 20] = [
    "INTRO",
    "ROOMS",
    "MAZE",
    "BUTTERFLIES",
    "GUARDS",
    "FIREFLY DENS",
    "AMOEBA",
    "ENCHANTED WALL",
    "GREED",
    "TRACKS",
    "CROWD",
    "WALLS",
    "APOCALYPSE",
    "FUNNEL",
    "ENCHANTED BOXES",
    "ENCHANTED BLOCKS",
    "INTERMISSION 1",
    "INTERMISSION 2",
    "INTERMISSION 3",
    "INTERMISSION 4",
];
#[derive(Clone, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct Cave {
    pub cave: usize,
    pub difficulty: usize,
    pub required: u32,
    pub time: u32,
    pub diamond_value: u32,
    pub extra_value: u32,
    pub amoeba_slow_seconds: u32,
}
pub fn caves() -> Vec<Cave> {
    serde_json::from_str(include_str!("../assets/caves.json")).expect("embedded cave data")
}
#[derive(Clone, Copy, PartialEq, Debug)]
pub enum Event {
    Step,
    Dig,
    Diamond,
    ExitOpen,
    Rock,
    Death,
    Win,
    Amoeba,
}
#[derive(Clone, Copy, Default)]
pub struct Input {
    pub dx: i32,
    pub dy: i32,
    pub grab: bool,
}
#[derive(Clone)]
pub struct Game {
    pub cells: [u8; W * H],
    pub cave: Cave,
    pub collected: u32,
    pub score: u32,
    pub ticks: u32,
    pub remaining: f32,
    pub alive: bool,
    pub won: bool,
    pub player: usize,
    pub events: Vec<Event>,
    exit_effect_elapsed: Option<f32>,
    exit_open_tick: u32,
    completion: Option<effects::Completion>,
    pub facing_left: bool,
    pub moving: bool,
    pub magic_active: bool,
    magic_left: f32,
    rng: u32,
    amoeba_age: f32,
    amoeba_result: Option<u8>,
    seen: [bool; W * H],
}
impl Game {
    pub fn new(index: usize, difficulty: usize) -> Self {
        let cave = caves()[index * 5 + difficulty].clone();
        let mut cells = [0; W * H];
        let all = include_bytes!("../assets/caves.bin");
        let offset = (index * 5 + difficulty) * W * H;
        cells.copy_from_slice(&all[offset..offset + W * H]);
        let player = cells
            .iter()
            .position(|&t| t == SPAWN)
            .expect("cave entrance");
        cells[player] = PLAYER;
        Self {
            cells,
            remaining: cave.time as f32,
            cave,
            collected: 0,
            score: 0,
            ticks: 0,
            alive: true,
            won: false,
            player,
            events: vec![],
            exit_effect_elapsed: None,
            exit_open_tick: 0,
            completion: None,
            facing_left: false,
            moving: false,
            magic_active: false,
            magic_left: 0.,
            rng: 0xb01d1234,
            amoeba_age: 0.,
            amoeba_result: None,
            seen: [false; W * H],
        }
    }
    /// Advances visual/audio timing and the original time-to-score conversion while the cave is frozen.
    pub fn advance_effects(&mut self, dt: f32) {
        if !dt.is_finite() || dt <= 0. {
            return;
        }
        if let Some(elapsed) = &mut self.exit_effect_elapsed {
            *elapsed += dt;
        }
        if let Some(completion) = &mut self.completion {
            self.score += completion.advance(dt) * self.cave.difficulty as u32;
            self.remaining = completion.remaining as f32;
        }
    }
    pub fn exit_flash_frame(&self) -> Option<usize> {
        let elapsed = self.exit_effect_elapsed?;
        let frame = (elapsed / effects::EXIT_EFFECTS.flash_tick_seconds).floor() as usize;
        (frame < effects::EXIT_EFFECTS.flash_hardware_colours.len()).then_some(frame)
    }
    pub fn exit_visible(&self) -> bool {
        let phase = (self.ticks.wrapping_sub(self.exit_open_tick) as usize) % 4;
        effects::EXIT_EFFECTS.door_visible_cycle[phase]
    }
    pub fn bonus_remaining(&self) -> u32 {
        self.completion.as_ref().map_or(0, |c| c.remaining)
    }
    pub fn wipe_progress(&self) -> f32 {
        self.completion.as_ref().map_or(0., |c| c.wipe_progress())
    }
    pub fn completion_ready(&self) -> bool {
        self.completion.as_ref().is_some_and(|c| c.ready())
    }
    pub fn random(&mut self) -> u32 {
        self.rng ^= self.rng << 13;
        self.rng ^= self.rng >> 17;
        self.rng ^= self.rng << 5;
        self.rng
    }
    fn neighbour(i: usize, dx: i32, dy: i32) -> Option<usize> {
        let x = i as i32 % W as i32 + dx;
        let y = i as i32 / W as i32 + dy;
        if x >= 0 && x < W as i32 && y >= 0 && y < H as i32 {
            Some(y as usize * W + x as usize)
        } else {
            None
        }
    }
    fn at(&self, i: usize, dx: i32, dy: i32) -> u8 {
        Self::neighbour(i, dx, dy).map_or(STEEL, |j| self.cells[j])
    }
    fn moved(&mut self, a: usize, b: usize, t: u8) {
        self.cells[a] = EMPTY;
        self.cells[b] = t;
        self.seen[b] = true;
    }
    fn collect(&mut self) {
        self.score += if self.collected < self.cave.required {
            self.cave.diamond_value
        } else {
            self.cave.extra_value
        };
        self.collected += 1;
        self.events.push(Event::Diamond);
        if self.collected >= self.cave.required && self.exit_effect_elapsed.is_none() {
            self.exit_effect_elapsed = Some(0.);
            self.exit_open_tick = self.ticks;
            for tile in &mut self.cells {
                if *tile == EXIT {
                    *tile = OPEN_EXIT;
                }
            }
            self.events.push(Event::ExitOpen);
        }
    }
    fn explode(&mut self, center: usize, diamonds: bool) {
        let mut stack = vec![(center, diamonds)];
        let mut exploded = [false; W * H];
        while let Some((c, d)) = stack.pop() {
            if exploded[c] {
                continue;
            }
            exploded[c] = true;
            for dy in -1..=1 {
                for dx in -1..=1 {
                    if let Some(j) = Self::neighbour(c, dx, dy) {
                        let old = self.cells[j];
                        if old == STEEL {
                            continue;
                        }
                        if ((8..12).contains(&old) || (48..52).contains(&old))
                            && j != c
                            && !exploded[j]
                        {
                            stack.push((j, old >= 48));
                        }
                        if old == PLAYER {
                            self.alive = false;
                            self.events.push(Event::Death);
                        }
                        self.cells[j] = if d { 33 } else { 28 };
                        self.seen[j] = true;
                    }
                }
            }
        }
    }
    fn move_player(&mut self, input: Input) {
        let (dx, dy) = if input.dx != 0 {
            (input.dx.signum(), 0)
        } else {
            (0, input.dy.signum())
        };
        self.moving = false;
        if dx == 0 && dy == 0 {
            return;
        }
        if dx != 0 {
            self.facing_left = dx < 0
        }
        let p = self.player;
        let Some(n) = Self::neighbour(p, dx, dy) else {
            return;
        };
        let t = self.cells[n];
        if input.grab {
            if t == DIRT || t == DIAMOND {
                self.cells[n] = EMPTY;
                if t == DIAMOND {
                    self.collect()
                } else {
                    self.events.push(Event::Dig)
                }
            }
            return;
        }
        if t == ROCK
            && dy == 0
            && let Some(b) = Self::neighbour(n, dx, 0)
        {
            if self.cells[b] == EMPTY && self.random().is_multiple_of(4) {
                self.moved(n, b, ROCK);
                self.events.push(Event::Rock);
            } else {
                return;
            }
        }
        let t = self.cells[n];
        if [EMPTY, DIRT, DIAMOND, OPEN_EXIT].contains(&t) {
            if t == DIAMOND {
                self.collect()
            } else if t == DIRT {
                self.events.push(Event::Dig)
            } else {
                self.events.push(Event::Step)
            }
            self.moved(p, n, PLAYER);
            self.player = n;
            self.moving = true;
            if t == OPEN_EXIT {
                self.won = true;
                self.completion = Some(effects::Completion::new(self.remaining));
                self.events.push(Event::Win)
            }
        }
    }
    pub fn step(&mut self, input: Input, dt: f32) {
        self.events.clear();
        if !self.alive || self.won {
            return;
        }
        self.ticks += 1;
        self.remaining = (self.remaining - dt).max(0.);
        if self.remaining <= 0. {
            self.explode(self.player, false);
            return;
        }
        self.seen.fill(false);
        self.move_player(input);
        if self.won {
            return;
        }
        self.seen[self.player] = true;
        self.amoeba_age += dt;
        if self.magic_active {
            self.magic_left -= dt;
        }
        let amoebas = self.cells.iter().filter(|&&c| c == AMOEBA).count();
        let mut can_grow = false;
        for i in 0..W * H {
            if self.seen[i] {
                continue;
            }
            let t = self.cells[i];
            match t {
                ROCK | 18 | DIAMOND | 22 => {
                    let diamond = t == DIAMOND || t == 22;
                    let falling = t == 18 || t == 22;
                    let base = if diamond { DIAMOND } else { ROCK };
                    let down = i + W;
                    if down >= W * H {
                        continue;
                    }
                    let below = self.cells[down];
                    if below == EMPTY {
                        self.moved(i, down, base + 2);
                    } else if falling
                        && (below == PLAYER
                            || (8..12).contains(&below)
                            || (48..52).contains(&below))
                    {
                        self.explode(down, (48..52).contains(&below));
                    } else if falling && below == MAGIC {
                        if !self.magic_active {
                            self.magic_active = true;
                            self.magic_left = self.cave.amoeba_slow_seconds as f32;
                        }
                        self.cells[i] = EMPTY;
                        if self.magic_left > 0. && down + W < W * H && self.cells[down + W] == EMPTY
                        {
                            self.cells[down + W] = if diamond { ROCK + 2 } else { DIAMOND + 2 };
                            self.seen[down + W] = true;
                            self.events.push(Event::Diamond);
                        }
                    } else if [ROCK, DIAMOND, BRICK].contains(&below) {
                        let mut rolled = false;
                        for dx in [-1, 1] {
                            if self.at(i, dx, 0) == EMPTY && self.at(i, dx, 1) == EMPTY {
                                let dest = Self::neighbour(i, dx, 1).unwrap();
                                self.moved(i, dest, base + 2);
                                rolled = true;
                                break;
                            }
                        }
                        if !rolled {
                            self.cells[i] = base;
                            if falling {
                                self.events.push(Event::Rock)
                            }
                        }
                    } else {
                        self.cells[i] = base;
                        if falling {
                            self.events.push(Event::Rock)
                        }
                    }
                }
                8..=11 | 48..=51 => {
                    let butterfly = t >= 48;
                    let base = if butterfly { 48 } else { 8 };
                    let d = (t - base) as usize;
                    let dirs = [(0, -1), (1, 0), (0, 1), (-1, 0)];
                    if dirs
                        .iter()
                        .any(|&(dx, dy)| [PLAYER, AMOEBA].contains(&self.at(i, dx, dy)))
                    {
                        self.explode(i, butterfly);
                        continue;
                    }
                    let turn = if butterfly { (d + 1) % 4 } else { (d + 3) % 4 };
                    let (dx, dy) = dirs[turn];
                    if self.at(i, dx, dy) == EMPTY {
                        let n = Self::neighbour(i, dx, dy).unwrap();
                        self.moved(i, n, base + turn as u8)
                    } else {
                        let (dx, dy) = dirs[d];
                        if self.at(i, dx, dy) == EMPTY {
                            let n = Self::neighbour(i, dx, dy).unwrap();
                            self.moved(i, n, t)
                        } else {
                            self.cells[i] =
                                base + if butterfly { (d + 3) % 4 } else { (d + 1) % 4 } as u8;
                        }
                    }
                }
                AMOEBA => {
                    if let Some(result) = self.amoeba_result {
                        self.cells[i] = result;
                        continue;
                    }
                    let dirs = [(0, -1), (1, 0), (0, 1), (-1, 0)];
                    if dirs
                        .iter()
                        .any(|&(dx, dy)| [EMPTY, DIRT].contains(&self.at(i, dx, dy)))
                    {
                        can_grow = true;
                    }
                    let chance = if self.amoeba_age < self.cave.amoeba_slow_seconds as f32 {
                        128
                    } else {
                        4
                    };
                    if self.random().is_multiple_of(chance) {
                        let (dx, dy) = dirs[self.random() as usize % 4];
                        if [EMPTY, DIRT].contains(&self.at(i, dx, dy)) {
                            let n = Self::neighbour(i, dx, dy).unwrap();
                            self.cells[n] = AMOEBA;
                            self.seen[n] = true;
                        }
                    }
                }
                28..=31 => {
                    self.cells[i] = if t == 31 { EMPTY } else { t + 1 };
                }
                33..=36 => {
                    self.cells[i] = if t == 36 { DIAMOND } else { t + 1 };
                }
                _ => {}
            }
        }
        if amoebas > 200 {
            self.amoeba_result = Some(ROCK)
        } else if amoebas > 0 && !can_grow {
            self.amoeba_result = Some(DIAMOND)
        }
        if self.cells[self.player] != PLAYER && self.alive {
            self.alive = false;
            self.events.push(Event::Death)
        }
    }
}
#[cfg(test)]
mod tests {
    use super::*;
    fn empty() -> Game {
        let mut g = Game::new(0, 0);
        g.cells.fill(EMPTY);
        for x in 0..W {
            g.cells[x] = STEEL;
            g.cells[(H - 1) * W + x] = STEEL
        }
        for y in 0..H {
            g.cells[y * W] = STEEL;
            g.cells[y * W + W - 1] = STEEL
        }
        g.player = 10 * W + 10;
        g.cells[g.player] = PLAYER;
        g
    }
    #[test]
    fn all_original_caves_are_bounded_and_have_one_entrance() {
        for i in 0..20 {
            for d in 0..5 {
                let g = Game::new(i, d);
                assert_eq!(g.cells.iter().filter(|&&c| c == PLAYER).count(), 1);
                assert!(g.cave.required > 0);
                for x in 0..W {
                    assert_eq!(g.cells[x], STEEL);
                    assert_eq!(g.cells[(H - 1) * W + x], STEEL)
                }
            }
        }
    }
    #[test]
    fn falling_rock_only_moves_once_and_kills() {
        let mut g = empty();
        let p = g.player;
        g.cells[p - 2 * W] = ROCK;
        g.step(Input::default(), 0.1);
        assert_eq!(g.cells[p - W], 18);
        assert!(g.alive);
        g.step(Input::default(), 0.1);
        assert!(!g.alive);
    }
    #[test]
    fn stationary_rock_on_head_does_not_kill() {
        let mut g = empty();
        g.cells[g.player - W] = ROCK;
        g.step(Input::default(), 0.1);
        assert!(g.alive);
    }
    #[test]
    fn grab_collects_without_moving_and_opens_exit() {
        let mut g = empty();
        let p = g.player;
        g.cave.required = 1;
        g.cells[p + 1] = DIAMOND;
        g.cells[p + 2] = EXIT;
        g.step(
            Input {
                dx: 1,
                dy: 0,
                grab: true,
            },
            0.1,
        );
        assert_eq!(g.player, p);
        assert_eq!(g.collected, 1);
        assert_eq!(g.cells[p + 2], OPEN_EXIT);
    }
    #[test]
    fn butterfly_explosion_yields_diamonds_and_preserves_steel() {
        let mut g = empty();
        let i = 4 * W + 4;
        g.cells[i] = 48;
        g.cells[i + W] = PLAYER;
        g.cells[i - 1] = STEEL;
        g.step(Input::default(), 0.1);
        for _ in 0..4 {
            g.alive = true;
            g.cells[g.player] = PLAYER;
            g.step(Input::default(), 0.1);
        }
        assert_eq!(g.cells[i], DIAMOND);
        assert_eq!(g.cells[i - 1], STEEL);
    }
    #[test]
    fn magic_wall_converts_falling_rock() {
        let mut g = empty();
        let i = 3 * W + 3;
        g.cells[i] = 18;
        g.cells[i + W] = MAGIC;
        g.step(Input::default(), 0.1);
        assert_eq!(g.cells[i], EMPTY);
        assert_eq!(g.cells[i + 2 * W], 22);
    }
    #[test]
    fn seeded_long_runs_never_leave_bounds() {
        for i in 0..20 {
            let mut g = Game::new(i, 0);
            for n in 0..1000 {
                let d = n % 4;
                g.step(
                    Input {
                        dx: if d == 0 {
                            1
                        } else if d == 2 {
                            -1
                        } else {
                            0
                        },
                        dy: if d == 1 {
                            1
                        } else if d == 3 {
                            -1
                        } else {
                            0
                        },
                        grab: n % 7 == 0,
                    },
                    0.1,
                );
            }
        }
    }
    #[test]
    fn quota_opens_and_flashes_once_with_surplus_diamonds_left() {
        let mut g = empty();
        let p = g.player;
        g.cave.required = 1;
        g.cells[p + 1] = DIAMOND;
        g.cells[p + 2] = EXIT;
        g.cells[p + 3] = DIAMOND;
        g.cells[p + 3 + W] = STEEL;
        g.step(
            Input {
                dx: 1,
                dy: 0,
                grab: true,
            },
            0.1,
        );
        assert_eq!(g.cells[p + 2], OPEN_EXIT);
        assert_eq!(g.cells[p + 3], DIAMOND);
        assert_eq!(
            g.events.iter().filter(|e| **e == Event::ExitOpen).count(),
            1
        );
        assert_eq!(g.exit_flash_frame(), Some(0));
        g.advance_effects(0.2);
        assert_eq!(g.exit_flash_frame(), None);
        g.step(Input::default(), 0.1);
        assert!(!g.events.contains(&Event::ExitOpen));
    }
    #[test]
    fn open_door_blinks_like_original_without_changing_collisions() {
        let mut g = empty();
        let p = g.player;
        g.cave.required = 1;
        g.cells[p + 1] = DIAMOND;
        g.cells[p + 2] = EXIT;
        g.step(
            Input {
                dx: 1,
                dy: 0,
                grab: true,
            },
            0.1,
        );
        for visible in [true, false, false, true] {
            assert_eq!(g.exit_visible(), visible);
            assert_eq!(g.cells[p + 2], OPEN_EXIT);
            g.step(Input::default(), 0.1);
        }
    }
    #[test]
    fn entering_exit_converts_time_to_score_without_recounting() {
        let mut g = empty();
        let p = g.player;
        g.cells[p + 1] = OPEN_EXIT;
        g.remaining = 12.9;
        g.cave.difficulty = 3;
        g.step(
            Input {
                dx: 1,
                dy: 0,
                grab: false,
            },
            0.1,
        );
        assert!(g.won);
        assert_eq!(g.score, 0);
        assert!(!g.completion_ready());
        assert!(g.events.contains(&Event::Win));
        g.advance_effects(1.);
        assert_eq!(g.score, 39);
        assert_eq!(g.remaining, 0.);
        let cells = g.cells;
        g.step(
            Input {
                dx: 1,
                dy: 0,
                grab: false,
            },
            0.1,
        );
        assert_eq!(g.cells, cells);
        g.advance_effects(3.);
        assert!(g.completion_ready());
        assert_eq!(g.score, 39);
    }
}
