//! Read-only controller diagnostics; no game window/GPU required.
use gilrs::{EventType, Gilrs};
use std::time::{Duration, Instant};
fn main() {
    let seconds = std::env::args()
        .nth(1)
        .and_then(|s| s.parse::<u64>().ok())
        .unwrap_or(3)
        .min(600);
    let mut gilrs = Gilrs::new().expect("initialize gamepad input");
    let deadline = Instant::now() + Duration::from_secs(seconds);
    let mut reported = std::collections::HashSet::new();
    while Instant::now() < deadline {
        while let Some(event) = gilrs.next_event() {
            println!("EVENT {} {:?}", event.id, event.event);
            if event.event == EventType::Connected {
                let pad = gilrs.gamepad(event.id);
                println!(
                    "CONNECTED {:?}: VID={:04x?} PID={:04x?} uuid={:02x?} mapping={:?}",
                    pad.name(),
                    pad.vendor_id(),
                    pad.product_id(),
                    pad.uuid(),
                    pad.mapping_source()
                );
                reported.insert(event.id);
            }
        }
        gilrs.inc();
        std::thread::sleep(Duration::from_millis(8));
    }
    println!("Observed {} gamepad(s)", reported.len());
}
