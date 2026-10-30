use boulder_dash::controller::Controller;
use boulder_dash::*;
use macroquad::audio::{PlaySoundParams, Sound, load_sound_from_bytes, play_sound, stop_sound};
use macroquad::prelude::*;
fn conf() -> Conf {
    Conf {
        window_title: "Boulder Dash · CPC / Rust".into(),
        window_width: 1100,
        window_height: 780,
        high_dpi: true,
        window_resizable: true,
        platform: macroquad::miniquad::conf::Platform {
            apple_gfx_api: macroquad::miniquad::conf::AppleGfxApi::Metal,
            ..Default::default()
        },
        ..Default::default()
    }
}
fn text(s: &str, x: f32, y: f32, size: f32, color: Color) {
    draw_text(s, x, y, size, color);
}
fn center(s: &str, y: f32, size: f32, color: Color) {
    let w = measure_text(s, None, size as u16, 1.).width;
    text(s, (screen_width() - w) / 2., y, size, color)
}
fn button(s: &str, r: Rect, enabled: bool) -> bool {
    let hover = r.contains(Vec2::from(mouse_position()));
    draw_rectangle(
        r.x,
        r.y,
        r.w,
        r.h,
        if hover && enabled {
            Color::from_hex(0x263e45)
        } else {
            Color::from_hex(0x182a32)
        },
    );
    draw_rectangle_lines(r.x, r.y, r.w, r.h, 1., Color::from_hex(0x34505b));
    let m = measure_text(s, None, 20, 1.);
    text(
        s,
        r.x + (r.w - m.width) / 2.,
        r.y + 28.,
        20.,
        if enabled { WHITE } else { GRAY },
    );
    enabled && hover && is_mouse_button_pressed(MouseButton::Left)
}
fn tile(atlas: &Texture2D, t: usize, row: usize, x: f32, y: f32, size: f32) {
    draw_texture_ex(
        atlas,
        x,
        y,
        WHITE,
        DrawTextureParams {
            dest_size: Some(vec2(size, size)),
            source: Some(Rect::new(t as f32 * 16., row as f32 * 16., 16., 16.)),
            ..Default::default()
        },
    );
}
// Isolated presentation fixture: original assets/maps are not modified on disk.
fn exit_demo_cave() -> Game {
    let mut g = Game::new(0, 0);
    g.cells[g.player] = EMPTY;
    let p = 5 * W + 7;
    for y in 4..=6 {
        for x in 5..=11 {
            g.cells[y * W + x] = if y == 5 { EMPTY } else { STEEL };
        }
    }
    g.player = p;
    g.cells[p] = PLAYER;
    g.cells[p + 1] = DIAMOND;
    g.cells[p + 2] = EXIT;
    g.cave.required = 1;
    g.remaining = 240.;
    g
}
async fn sound(bytes: &[u8]) -> Option<Sound> {
    load_sound_from_bytes(bytes).await.ok()
}
#[macroquad::main(conf)]
async fn main() {
    let atlas = Texture2D::from_file_with_format(
        include_bytes!("../assets/sprites.png"),
        Some(ImageFormat::Png),
    );
    atlas.set_filter(FilterMode::Nearest);
    let flash_atlas = Texture2D::from_file_with_format(
        include_bytes!("../assets/cave-flash.png"),
        Some(ImageFormat::Png),
    );
    flash_atlas.set_filter(FilterMode::Nearest);
    let wipe_atlas = Texture2D::from_file_with_format(
        include_bytes!("../assets/cave-wipe.png"),
        Some(ImageFormat::Png),
    );
    wipe_atlas.set_filter(FilterMode::Nearest);
    let title = sound(include_bytes!("../assets/title.wav")).await;
    let sounds = [
        sound(include_bytes!("../assets/step.wav")).await,
        sound(include_bytes!("../assets/dig.wav")).await,
        sound(include_bytes!("../assets/diamond.wav")).await,
        sound(include_bytes!("../assets/rock.wav")).await,
        sound(include_bytes!("../assets/death.wav")).await,
        sound(include_bytes!("../assets/amoeba.wav")).await,
        sound(include_bytes!("../assets/exit-open.wav")).await,
        sound(include_bytes!("../assets/exit-bonus.wav")).await,
    ];
    let args: Vec<String> = std::env::args().collect();
    let smoke = args.iter().any(|s| s == "--smoke-test");
    let demo = args.iter().any(|s| s == "--demo");
    let exit_demo =
        cfg!(feature = "exit-effects-demo") || args.iter().any(|s| s == "--exit-effects-demo");
    let mut demo_age = 0.;
    let mut controller = Controller::new();
    let mut pad_diagnostics = false;
    let mut menu = !demo && !exit_demo;
    let mut overview = false;
    let mut paused = false;
    let mut muted = false;
    let mut fullscreen = false;
    let mut selected = 0;
    let mut difficulty = 0;
    let mut g = if exit_demo {
        exit_demo_cave()
    } else {
        Game::new(ORDER[selected], difficulty)
    };
    let mut lives = 3;
    let mut total = 0;
    let mut accumulator = 0.;
    let mut last_sound = [-10.; 8];
    let mut bonus_playing = false;
    let mut frames = 0;
    let ink = Color::from_hex(0xf4e9d0);
    let dim = Color::from_hex(0x98b1b2);
    let gold = Color::from_hex(0xf9bf62);
    if menu && let Some(s) = &title {
        play_sound(
            s,
            PlaySoundParams {
                looped: true,
                volume: 0.35,
            },
        )
    }
    loop {
        frames += 1;
        let dt = get_frame_time().min(0.1);
        if exit_demo {
            demo_age += dt;
            if demo_age > 8. {
                demo_age = 0.;
                g = exit_demo_cave();
                accumulator = 0.;
            }
        }
        clear_background(Color::from_hex(0x09171d));
        let pad = controller.poll(get_time());
        if is_key_pressed(KeyCode::F2) {
            pad_diagnostics = !pad_diagnostics;
        }
        if pad.disconnected && !menu && g.alive && !g.won {
            paused = true;
            accumulator = 0.;
        }
        if is_key_pressed(KeyCode::M) {
            muted = !muted;
            if muted {
                if let Some(s) = &title {
                    stop_sound(s)
                }
                for s in sounds.iter().flatten() {
                    stop_sound(s)
                }
                bonus_playing = false;
            } else if menu && let Some(s) = &title {
                play_sound(
                    s,
                    PlaySoundParams {
                        looped: true,
                        volume: 0.35,
                    },
                )
            }
        }
        if is_key_pressed(KeyCode::F) {
            fullscreen = !fullscreen;
            set_fullscreen(fullscreen)
        }
        if is_key_pressed(KeyCode::Escape) || (!menu && pad.back) {
            if menu {
                break;
            } else {
                menu = true;
                paused = false;
                if let Some(s) = &sounds[7] {
                    stop_sound(s);
                }
                bonus_playing = false;
                if !muted && let Some(s) = &title {
                    play_sound(
                        s,
                        PlaySoundParams {
                            looped: true,
                            volume: 0.35,
                        },
                    )
                }
            }
        }
        if menu {
            center("BOULDER DASH", 75., 58., gold);
            center("AMSTRAD CPC  /  NATIVE RUST", 108., 19., dim);
            let left = screen_width() / 2. - 390.;
            text("CAVE", left, 155., 18., dim);
            text(
                &format!(
                    "{}  {}",
                    if ORDER[selected] < 16 {
                        format!("{}", (b'A' + ORDER[selected] as u8) as char)
                    } else {
                        format!("I{}", ORDER[selected] - 15)
                    },
                    NAMES[ORDER[selected]]
                ),
                left,
                190.,
                28.,
                ink,
            );
            if button("<", Rect::new(left + 480., 155., 48., 42.), true)
                || is_key_pressed(KeyCode::Left)
                || pad.menu_dx < 0
            {
                selected = (selected + 19) % 20
            }
            if button(">", Rect::new(left + 540., 155., 48., 42.), true)
                || is_key_pressed(KeyCode::Right)
                || pad.menu_dx > 0
            {
                selected = (selected + 1) % 20
            }
            text(
                &format!("LEVEL {}", difficulty + 1),
                left + 630.,
                182.,
                22.,
                gold,
            );
            if button("+", Rect::new(left + 730., 155., 48., 42.), true)
                || is_key_pressed(KeyCode::Up)
                || pad.menu_dy < 0
            {
                difficulty = (difficulty + 1) % 5
            }
            if is_key_pressed(KeyCode::Down) || pad.menu_dy > 0 {
                difficulty = (difficulty + 4) % 5
            }
            let preview = Game::new(ORDER[selected], difficulty);
            let ts = ((screen_width() - 80.) / 40.)
                .min((screen_height() - 370.) / 22.)
                .clamp(4., 16.);
            let ox = (screen_width() - 40. * ts) / 2.;
            let oy = 216.;
            for y in 0..H {
                for x in 0..W {
                    let t = preview.cells[y * W + x];
                    tile(
                        &atlas,
                        if t == PLAYER { 64 } else { t as usize },
                        ORDER[selected],
                        ox + x as f32 * ts,
                        oy + y as f32 * ts,
                        ts,
                    )
                }
            }
            let by = oy + 22. * ts + 22.;
            if button(
                "PLAY  /  ENTER",
                Rect::new(screen_width() / 2. - 140., by, 280., 46.),
                true,
            ) || is_key_pressed(KeyCode::Enter)
                || (pad.confirm && !pad.back)
            {
                g = preview;
                menu = false;
                paused = false;
                total = 0;
                lives = 3;
                accumulator = 0.;
                if let Some(s) = &title {
                    stop_sound(s)
                }
            }
            center(
                if controller.name.is_some() {
                    "PAD: right stick / D-pad: move   B5-B8: grab   B1: play / pause   B2: map"
                } else {
                    "Arrows / WASD: move     Shift + direction: grab     Space: pause"
                },
                by + 86.,
                19.,
                dim,
            );
            center(
                "Tab: overview     R: retry     Esc: caves     M: sound     F: fullscreen",
                by + 116.,
                19.,
                dim,
            );
        } else {
            if (is_key_pressed(KeyCode::Space) || pad.pause) && g.alive && !g.won {
                paused = !paused;
            }
            let retry = is_key_pressed(KeyCode::R)
                || ((!g.alive || (g.won && g.completion_ready()))
                    && (is_key_pressed(KeyCode::Enter) || pad.confirm));
            if retry {
                if let Some(s) = &sounds[7] {
                    stop_sound(s);
                }
                bonus_playing = false;
                if g.won && !is_key_pressed(KeyCode::R) {
                    total += g.score;
                    selected += 1;
                    if selected == 20 {
                        selected = 0;
                        difficulty = (difficulty + 1) % 5
                    }
                } else {
                    if ORDER[selected] >= 16 && !is_key_pressed(KeyCode::R) {
                        selected = (selected + 1) % 20;
                    } else {
                        lives -= 1;
                        if lives == 0 {
                            lives = 3;
                            total = 0
                        }
                    }
                }
                g = Game::new(ORDER[selected], difficulty);
                paused = false;
                accumulator = 0.;
            }
            if !paused && g.alive && !g.won {
                accumulator += dt;
                let step = (0.14 - difficulty as f32 * 0.015).max(0.07);
                while accumulator >= step {
                    let left = is_key_down(KeyCode::Left)
                        || is_key_down(KeyCode::A)
                        || is_key_down(KeyCode::Q);
                    let right = is_key_down(KeyCode::Right) || is_key_down(KeyCode::D);
                    let up = is_key_down(KeyCode::Up)
                        || is_key_down(KeyCode::W)
                        || is_key_down(KeyCode::Z);
                    let down = is_key_down(KeyCode::Down) || is_key_down(KeyCode::S);
                    let input = if exit_demo {
                        Input {
                            dx: i32::from((demo_age > 1. && g.collected == 0) || demo_age > 3.),
                            dy: 0,
                            grab: false,
                        }
                    } else if demo {
                        Input {
                            dx: if (g.ticks / 16).is_multiple_of(2) {
                                1
                            } else {
                                -1
                            },
                            dy: 0,
                            grab: false,
                        }
                    } else {
                        Input {
                            dx: if left || right || up || down {
                                right as i32 - left as i32
                            } else {
                                pad.dx
                            },
                            dy: if left || right || up || down {
                                down as i32 - up as i32
                            } else {
                                pad.dy
                            },
                            grab: is_key_down(KeyCode::LeftShift)
                                || is_key_down(KeyCode::RightShift)
                                || pad.grab,
                        }
                    };
                    g.step(input, step);
                    accumulator -= step;
                    if !muted {
                        for e in &g.events {
                            let i = match e {
                                Event::Step => 0,
                                Event::Dig => 1,
                                Event::Diamond => 2,
                                Event::Rock => 3,
                                Event::Death => 4,
                                Event::Amoeba => 5,
                                Event::ExitOpen => 6,
                                Event::Win => 7,
                            };
                            if *e == Event::Win {
                                for sound in sounds.iter().flatten() {
                                    stop_sound(sound);
                                }
                            }
                            if get_time() - last_sound[i] > 0.08 {
                                if let Some(s) = &sounds[i] {
                                    stop_sound(s);
                                    play_sound(
                                        s,
                                        PlaySoundParams {
                                            looped: false,
                                            volume: 0.5,
                                        },
                                    );
                                }
                                last_sound[i] = get_time();
                                if *e == Event::Win {
                                    bonus_playing = true;
                                }
                            }
                        }
                    }
                }
            }
            if !paused {
                g.advance_effects(dt);
            }
            if bonus_playing && g.bonus_remaining() == 0 {
                if let Some(sound) = &sounds[7] {
                    stop_sound(sound);
                }
                bonus_playing = false;
            }
            if is_key_pressed(KeyCode::Tab) || pad.overview {
                overview = !overview;
            }
            let (cols, rows) = if overview { (W, H) } else { (20, 12) };
            let sx = (g.player % W).saturating_sub(cols / 2).min(W - cols);
            let sy = (g.player / W).saturating_sub(rows / 2).min(H - rows);
            let margin = 28.;
            let header = 108.;
            let footer = 60.;
            let ts = ((screen_width() - 2. * margin) / cols as f32)
                .min((screen_height() - header - footer) / rows as f32)
                .floor()
                .max(1.);
            let ox = (screen_width() - cols as f32 * ts) / 2.;
            let oy = header + (screen_height() - header - footer - rows as f32 * ts) / 2.;
            text("BOULDER DASH", margin, 39., 30., gold);
            text(
                &format!("{}  /  LEVEL {}", NAMES[ORDER[selected]], difficulty + 1),
                margin,
                69.,
                18.,
                dim,
            );
            let stats = format!(
                "DIAMONDS {:02}/{:02}     TIME {:03}     SCORE {:06}     LIVES {}",
                g.collected,
                g.cave.required,
                g.remaining.ceil() as u32,
                total + g.score,
                lives
            );
            text(&stats, margin, 94., 20., ink);
            draw_rectangle(
                ox - 3.,
                oy - 3.,
                ts * cols as f32 + 6.,
                ts * rows as f32 + 6.,
                Color::from_hex(0x31505a),
            );
            for y in 0..rows {
                for x in 0..cols {
                    let t = g.cells[(y + sy) * W + x + sx];
                    let t = if t == OPEN_EXIT && !g.exit_visible() {
                        EXIT
                    } else {
                        t
                    };
                    let t = if t == PLAYER {
                        if g.moving {
                            65 + (g.ticks as usize % 8) + if g.facing_left { 8 } else { 0 }
                        } else {
                            64
                        }
                    } else if t == 18 {
                        16
                    } else if t == 22 {
                        20
                    } else {
                        t as usize
                    };
                    tile(
                        if g.exit_flash_frame().is_some() {
                            &flash_atlas
                        } else {
                            &atlas
                        },
                        t,
                        ORDER[selected] + g.exit_flash_frame().map_or(0, |frame| frame * 20),
                        ox + x as f32 * ts,
                        oy + y as f32 * ts,
                        ts,
                    )
                }
            }
            let wipe_progress = g.wipe_progress();
            if wipe_progress > 0. {
                for cy in 0..rows * 2 {
                    for cx in 0..cols * 2 {
                        if effects::wipe_rank(sx * 2 + cx, sy * 2 + cy) < wipe_progress {
                            draw_texture_ex(
                                &wipe_atlas,
                                ox + cx as f32 * ts / 2.,
                                oy + cy as f32 * ts / 2.,
                                WHITE,
                                DrawTextureParams {
                                    dest_size: Some(vec2(ts / 2., ts / 2.)),
                                    source: Some(Rect::new(
                                        0.,
                                        ORDER[selected] as f32 * 8.,
                                        8.,
                                        8.,
                                    )),
                                    ..Default::default()
                                },
                            );
                        }
                    }
                }
            }
            text(
                if controller.name.is_some() {
                    "PAD   RIGHT STICK / D-PAD: MOVE    B5-B8: GRAB    B1: PAUSE    B2: MAP    B10: MENU"
                } else {
                    "ARROWS / WASD   MOVE     SHIFT   GRAB     SPACE   PAUSE     TAB   OVERVIEW     R   RETRY     ESC   CAVES"
                },
                margin,
                screen_height() - 24.,
                15.,
                dim,
            );
            if paused || !g.alive || (g.won && g.completion_ready()) {
                draw_rectangle(
                    0.,
                    oy,
                    screen_width(),
                    ts * rows as f32,
                    Color::new(0.02, 0.05, 0.07, 0.76),
                );
                center(
                    if paused {
                        "PAUSED"
                    } else if g.won {
                        "CAVE COMPLETE"
                    } else {
                        "ROCKFORD LOST"
                    },
                    screen_height() / 2. - 12.,
                    42.,
                    gold,
                );
                center(
                    if paused {
                        if controller.name.is_some() {
                            "B1 / SPACE TO RESUME"
                        } else {
                            "SPACE TO RESUME"
                        }
                    } else {
                        if controller.name.is_some() {
                            "B1 TO CONTINUE  /  R TO RETRY"
                        } else {
                            "ENTER TO CONTINUE  /  R TO RETRY"
                        }
                    },
                    screen_height() / 2. + 32.,
                    20.,
                    ink,
                );
            }
        }
        let controller_status = if let Some(name) = &controller.name {
            format!("PAD: {name}")
        } else if controller.error.is_some() {
            "PAD UNAVAILABLE / KEYBOARD".into()
        } else {
            "KEYBOARD / CONNECT A GAMEPAD".into()
        };
        text(
            &controller_status,
            (screen_width() - 390.).max(20.),
            26.,
            16.,
            dim,
        );
        if muted {
            text("MUTED", screen_width() - 90., 48., 16., dim)
        }
        if pad_diagnostics {
            text(
                &controller.diagnostics,
                18.,
                screen_height() - 6.,
                15.,
                gold,
            );
        }
        if smoke && frames >= 8 {
            let path =
                std::env::var("BOULDER_SCREENSHOT").unwrap_or_else(|_| "build/smoke.png".into());
            get_screen_data().export_png(&path);
            break;
        }
        next_frame().await;
    }
}
