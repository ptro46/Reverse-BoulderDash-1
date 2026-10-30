//! Portable gamepad adapter, polled once per rendered frame, never per cave tick.
use gilrs::{Axis, Button, EventType, GamepadId, Gilrs};

const CONFIRM: u8 = 1;
const PAUSE: u8 = 2;
const BACK: u8 = 4;
const OVERVIEW: u8 = 8;
const GRAB: u8 = 16;

#[derive(Default, Clone, Copy, Debug, PartialEq)]
pub struct PadInput {
    pub dx: i32,
    pub dy: i32,
    pub grab: bool,
    pub confirm: bool,
    pub pause: bool,
    pub back: bool,
    pub overview: bool,
    pub menu_dx: i32,
    pub menu_dy: i32,
    pub disconnected: bool,
}

#[derive(Default, Clone, Copy)]
struct Snapshot {
    x: f32,
    y: f32, // gilrs uses positive Y for UP; cave coordinates increase downwards.
    dpad_x: i32,
    dpad_y: i32,
    buttons: u8,
    pressed: u8,
}

#[derive(Default)]
struct Mapper {
    x: i32,
    y: i32,
    previous_buttons: u8,
    menu_direction: (i32, i32),
    next_repeat: f64,
}

// Hysteresis keeps a worn stick stable around its activation threshold.
fn axis(value: f32, previous: i32) -> i32 {
    if !value.is_finite() {
        return 0;
    }
    if value > 0.45 || (previous == 1 && value > 0.25) {
        1
    } else if value < -0.45 || (previous == -1 && value < -0.25) {
        -1
    } else {
        0
    }
}

impl Mapper {
    fn update(&mut self, raw: Snapshot, now: f64) -> PadInput {
        self.x = axis(raw.x, self.x);
        self.y = axis(raw.y, self.y);
        let (mut dx, mut dy) = if raw.dpad_x != 0 || raw.dpad_y != 0 {
            (raw.dpad_x, raw.dpad_y)
        } else {
            (self.x, -self.y)
        };
        // Rockford moves one orthogonal tile at a time. Prefer the dominant stick axis.
        if dx != 0 && dy != 0 {
            if raw.dpad_x != 0 || raw.x.abs() >= raw.y.abs() {
                dy = 0;
            } else {
                dx = 0;
            }
        }
        let pressed = raw.pressed | (raw.buttons & !self.previous_buttons);
        self.previous_buttons = raw.buttons;
        let direction = (dx, dy);
        let mut menu = (0, 0);
        if direction != self.menu_direction {
            menu = direction;
            self.menu_direction = direction;
            self.next_repeat = now + 0.4;
        } else if direction != (0, 0) && now >= self.next_repeat {
            menu = direction;
            self.next_repeat = now + 0.16;
        }
        PadInput {
            dx,
            dy,
            grab: raw.buttons & GRAB != 0,
            confirm: pressed & CONFIRM != 0,
            pause: pressed & PAUSE != 0,
            back: pressed & BACK != 0,
            overview: pressed & OVERVIEW != 0,
            menu_dx: menu.0,
            menu_dy: menu.1,
            disconnected: false,
        }
    }
}

fn button_mask(button: Button) -> u8 {
    match button {
        // Physical Dual Action numbering: B1=West, B2=South, B10=Start.
        // B1 confirms only in menus/end screens; during play it toggles pause.
        Button::West => CONFIRM | PAUSE,
        Button::South => OVERVIEW,
        Button::Start => BACK,
        // B5=L1, B6=R1, B7=L2, B8=R2: held to grab in place.
        Button::LeftTrigger
        | Button::RightTrigger
        | Button::LeftTrigger2
        | Button::RightTrigger2 => GRAB,
        _ => 0,
    }
}

pub struct Controller {
    gilrs: Option<Gilrs>,
    active: Option<GamepadId>,
    mapper: Mapper,
    pub name: Option<String>,
    pub error: Option<String>,
    pub diagnostics: String,
}

impl Default for Controller {
    fn default() -> Self {
        Self::new()
    }
}

impl Controller {
    pub fn new() -> Self {
        let (gilrs, error) = match Gilrs::new() {
            Ok(gilrs) => (Some(gilrs), None),
            Err(error) => (None, Some(error.to_string())),
        };
        Self {
            gilrs,
            active: None,
            mapper: Mapper::default(),
            name: None,
            error,
            diagnostics: String::new(),
        }
    }

    pub fn poll(&mut self, now: f64) -> PadInput {
        let Some(gilrs) = &mut self.gilrs else {
            return PadInput::default();
        };
        let mut presses = Vec::new();
        let mut disconnected = false;
        while let Some(event) = gilrs.next_event() {
            match event.event {
                EventType::ButtonPressed(button, _) => {
                    presses.push((event.id, button_mask(button)))
                }
                EventType::Disconnected if self.active == Some(event.id) => disconnected = true,
                _ => {}
            }
        }
        gilrs.inc();
        // Prefer this user's physical Logitech over virtual or other connected controllers.
        let selected = gilrs
            .gamepads()
            .find(|(_, pad)| pad.vendor_id() == Some(0x046d) && pad.product_id() == Some(0xc216))
            .or_else(|| {
                self.active
                    .and_then(|id| gilrs.gamepads().find(|(candidate, _)| *candidate == id))
            })
            .or_else(|| gilrs.gamepads().next())
            .map(|(id, _)| id);
        let changed = selected != self.active;
        if changed || disconnected {
            self.mapper = Mapper::default();
            self.active = selected;
            self.name = selected.map(|id| gilrs.gamepad(id).name().to_owned());
        }
        let Some(id) = self.active else {
            return PadInput {
                disconnected,
                ..Default::default()
            };
        };
        let pad = gilrs.gamepad(id);
        let mut raw = Snapshot {
            x: pad.value(Axis::RightStickX),
            y: pad.value(Axis::RightStickY),
            dpad_x: i32::from(pad.is_pressed(Button::DPadRight))
                - i32::from(pad.is_pressed(Button::DPadLeft)),
            dpad_y: i32::from(pad.is_pressed(Button::DPadDown))
                - i32::from(pad.is_pressed(Button::DPadUp)),
            ..Default::default()
        };
        for button in [
            Button::West,
            Button::South,
            Button::East,
            Button::North,
            Button::Start,
            Button::Select,
            Button::LeftTrigger,
            Button::RightTrigger,
            Button::LeftTrigger2,
            Button::RightTrigger2,
        ] {
            if pad.is_pressed(button) {
                raw.buttons |= button_mask(button);
            }
        }
        for (candidate, mask) in presses {
            if candidate == id {
                raw.pressed |= mask;
            }
        }
        // Do not treat a button already held on connection as a new confirmation/pause.
        if changed || disconnected {
            self.mapper.previous_buttons = raw.buttons;
            raw.pressed = 0;
        }
        let mut input = self.mapper.update(raw, now);
        self.diagnostics = format!(
            "RX {:+.2} RY {:+.2} D-PAD ({},{}) MOVE ({},{}) BTN {:02x} {:?}",
            raw.x,
            raw.y,
            raw.dpad_x,
            raw.dpad_y,
            input.dx,
            input.dy,
            raw.buttons,
            pad.mapping_source()
        );
        input.disconnected = disconnected;
        input
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn neutral_stick_drift_and_hysteresis() {
        let mut m = Mapper::default();
        assert_eq!(
            m.update(
                Snapshot {
                    x: 0.2,
                    y: -0.1,
                    ..Default::default()
                },
                0.
            )
            .dx,
            0
        );
        assert_eq!(
            m.update(
                Snapshot {
                    x: 0.8,
                    ..Default::default()
                },
                0.1
            )
            .dx,
            1
        );
        assert_eq!(
            m.update(
                Snapshot {
                    x: 0.3,
                    ..Default::default()
                },
                0.2
            )
            .dx,
            1
        );
        assert_eq!(
            m.update(
                Snapshot {
                    x: 0.2,
                    ..Default::default()
                },
                0.3
            )
            .dx,
            0
        );
        assert_eq!(axis(f32::NAN, 1), 0);
    }
    #[test]
    fn up_is_negative_cave_y_and_dominant_axis_wins() {
        let mut m = Mapper::default();
        let p = m.update(
            Snapshot {
                x: 0.6,
                y: 0.9,
                ..Default::default()
            },
            0.,
        );
        assert_eq!((p.dx, p.dy), (0, -1));
        let p = m.update(
            Snapshot {
                x: 1.,
                y: 1.,
                dpad_x: -1,
                ..Default::default()
            },
            0.1,
        );
        assert_eq!((p.dx, p.dy), (-1, 0));
    }
    #[test]
    fn action_edges_do_not_repeat() {
        let mut m = Mapper::default();
        let raw = Snapshot {
            buttons: CONFIRM | PAUSE,
            ..Default::default()
        };
        let p = m.update(raw, 0.);
        assert!(p.confirm && p.pause && !p.grab);
        let p = m.update(raw, 0.1);
        assert!(!p.confirm && !p.pause && !p.grab);
        m.update(Snapshot::default(), 0.2);
        assert!(m.update(raw, 0.3).confirm);
        assert!(
            m.update(
                Snapshot {
                    pressed: CONFIRM,
                    ..Default::default()
                },
                0.4
            )
            .confirm
        );
    }
    #[test]
    fn menu_repeat_has_initial_delay_and_neutral_resets_it() {
        let mut m = Mapper::default();
        let raw = Snapshot {
            dpad_x: 1,
            ..Default::default()
        };
        assert_eq!(m.update(raw, 0.).menu_dx, 1);
        assert_eq!(m.update(raw, 0.1).menu_dx, 0);
        assert_eq!(m.update(raw, 0.41).menu_dx, 1);
        assert_eq!(m.update(raw, 0.5).menu_dx, 0);
        m.update(Snapshot::default(), 0.51);
        assert_eq!(m.update(raw, 0.52).menu_dx, 1);
    }
    #[test]
    fn four_shoulders_grab_while_held_without_other_actions() {
        for button in [
            Button::LeftTrigger,
            Button::RightTrigger,
            Button::LeftTrigger2,
            Button::RightTrigger2,
        ] {
            let mut m = Mapper::default();
            let raw = Snapshot {
                dpad_x: 1,
                buttons: button_mask(button),
                ..Default::default()
            };
            for now in [0., 0.1, 0.2] {
                let input = m.update(raw, now);
                assert!(input.grab);
                assert_eq!(input.dx, 1);
                assert!(!input.confirm && !input.pause && !input.back && !input.overview);
            }
            assert!(!m.update(Snapshot::default(), 0.3).grab);
        }
    }
    #[test]
    fn b1_pauses_b2_toggles_overview_and_b10_returns_to_menu_once() {
        for (button, confirm, pause, overview, back) in [
            (Button::West, true, true, false, false),
            (Button::South, false, false, true, false),
            (Button::Start, false, false, false, true),
        ] {
            let mut m = Mapper::default();
            let raw = Snapshot {
                buttons: button_mask(button),
                ..Default::default()
            };
            let input = m.update(raw, 0.);
            assert_eq!(
                (input.confirm, input.pause, input.overview, input.back),
                (confirm, pause, overview, back)
            );
            assert!(!input.grab);
            let held = m.update(raw, 0.1);
            assert!(!held.confirm && !held.pause && !held.overview && !held.back);
            m.update(Snapshot::default(), 0.2);
            let again = m.update(raw, 0.3);
            assert_eq!(again, input);
        }
    }
    #[test]
    fn old_b3_b4_b9_bindings_are_inactive() {
        for button in [Button::East, Button::North, Button::Select] {
            let input = Mapper::default().update(
                Snapshot {
                    buttons: button_mask(button),
                    ..Default::default()
                },
                0.,
            );
            assert_eq!(input, PadInput::default());
        }
    }
}
