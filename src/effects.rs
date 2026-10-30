//! Cave-exit presentation data extracted and probed against the original Z80 code.
use serde::Deserialize;
use std::sync::LazyLock;

#[derive(Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct ExitEffects {
    pub flash_hardware_colours: Vec<u8>,
    pub flash_tick_seconds: f32,
    pub door_visible_cycle: [bool; 4],
    pub bonus_step_seconds: f32,
    pub bonus_wait_seconds: f32,
    pub wipe_seconds: f32,
}
pub static EXIT_EFFECTS: LazyLock<ExitEffects> = LazyLock::new(|| {
    serde_json::from_str(include_str!("../assets/exit-effects.json"))
        .expect("original exit effects")
});

#[derive(Clone)]
pub struct Completion {
    initial: u32,
    pub remaining: u32,
    elapsed: f32,
}
impl Completion {
    pub fn new(seconds: f32) -> Self {
        let initial = seconds.ceil().clamp(0., 255.) as u32;
        Self {
            initial,
            remaining: initial,
            elapsed: 0.,
        }
    }
    /// Returns how many original bonus seconds were converted in this update.
    pub fn advance(&mut self, dt: f32) -> u32 {
        if !dt.is_finite() || dt <= 0. {
            return 0;
        }
        self.elapsed += dt;
        let converted = (self.elapsed / EXIT_EFFECTS.bonus_step_seconds).floor() as u32;
        let remaining = self.initial - converted.min(self.initial);
        let awarded = self.remaining - remaining;
        self.remaining = remaining;
        awarded
    }
    pub fn wipe_progress(&self) -> f32 {
        let start =
            self.initial as f32 * EXIT_EFFECTS.bonus_step_seconds + EXIT_EFFECTS.bonus_wait_seconds;
        ((self.elapsed - start) / EXIT_EFFECTS.wipe_seconds).clamp(0., 1.)
    }
    pub fn ready(&self) -> bool {
        self.wipe_progress() >= 1.
    }
}

/// Stable screen-space ordering for the 8x8-character dissolve, without touching gameplay RNG.
pub fn wipe_rank(x: usize, y: usize) -> f32 {
    let mut n = (x as u32).wrapping_mul(0x9e37_79b9) ^ (y as u32).wrapping_mul(0x85eb_ca6b);
    n ^= n >> 16;
    n = n.wrapping_mul(0x7feb_352d);
    n ^= n >> 15;
    (n & 65535) as f32 / 65536.
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn bonus_counts_once_then_waits_and_wipes() {
        let mut c = Completion::new(12.4);
        assert_eq!(c.remaining, 13);
        let dt = EXIT_EFFECTS.bonus_step_seconds;
        assert_eq!(c.advance(dt * 4.5), 4);
        assert_eq!(c.remaining, 9);
        assert!(!c.ready());
        assert_eq!(c.advance(dt * 100.), 9);
        assert_eq!(c.remaining, 0);
        assert_eq!(c.wipe_progress(), 0.);
        assert_eq!(c.advance(0.1), 0);
        c.advance(2.);
        assert!(c.ready());
        assert_eq!(c.advance(10.), 0);
    }
    #[test]
    fn bonus_is_frame_rate_independent() {
        let mut a = Completion::new(150.);
        let mut b = a.clone();
        let pa = a.advance(0.25);
        let mut pb = 0;
        for _ in 0..25 {
            pb += b.advance(0.01);
        }
        assert_eq!(pa, pb);
        assert_eq!(a.remaining, b.remaining);
    }
}
