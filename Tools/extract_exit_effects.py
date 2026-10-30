#!/usr/bin/env python3
"""Targeted original-code probes and extraction for cave exit effects.

Does not regenerate or alter the previously extracted maps, sprites or audio.
AY I/O calls are trapped; bonus code runs with synthetic 300 Hz audio interrupts.
Timings exclude CPC memory contention and the trapped port writer's overhead.
"""
from pathlib import Path
import hashlib, json, struct, wave
import z80
from PIL import Image
ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'assets'
RAM = bytearray((ROOT / 'Extracted/relocated.bin').read_bytes())
HW = [(128,128,128),(128,128,128),(0,255,128),(255,255,128),(0,0,128),(255,0,128),(0,128,128),(255,128,128),(255,0,128),(255,255,128),(255,255,0),(255,255,255),(255,0,0),(255,0,255),(255,128,0),(255,128,255),(0,0,128),(0,255,128),(0,255,0),(0,255,255),(0,0,0),(0,0,255),(0,128,0),(0,128,255),(128,0,128),(128,255,128),(128,255,0),(128,255,255),(128,0,0),(128,0,255),(128,128,0),(128,128,255)]

class Machine:
    def __init__(self):
        self.cpu = z80.Z80Machine()
        self.cpu.set_memory_block(0, bytes(RAM))
        self.m = self.cpu.memory
        self.cpu.iy = 0xc0
        self.cpu.set_breakpoint(0xfff0)
        self.cpu.set_breakpoint(0x1818)
        self.regs = [0]*16
        self.regs[7] = 0x3f
        self.cycles = 0
        self.next_irq = 4_000_000 / 300
        self.frames = []
        # Same register save/restore as the original 0x27c8 handler, audio only.
        shim = bytes.fromhex('f5 c5 d5 e5 dd e5 fd e5 fd21c000 cd8c0f cde00f fde1 dde1 e1 d1 c1 f1 c9')
        self.m[0x9c00:0x9c00+len(shim)] = shim
    def ret(self):
        c = self.cpu
        c.pc = self.m[c.sp] + 256*self.m[c.sp+1]
        c.sp += 2
    def call(self, address, clock=False, stop_at=None):
        c = self.cpu
        c.pc = address
        c.sp = 0x9ff0
        self.m[c.sp:c.sp+2] = bytes([0xf0,0xff])
        if stop_at is not None: c.set_breakpoint(stop_at)
        for _ in range(100000):
            if c.pc == 0xfff0: return
            if stop_at is not None and c.pc == stop_at:
                c.clear_breakpoint(stop_at)
                return
            if clock and self.cycles >= self.next_irq:
                self.frames.append(self.regs.copy())
                self.next_irq += 4_000_000 / 300
                c.sp -= 2
                self.m[c.sp:c.sp+2] = c.pc.to_bytes(2,'little')
                c.pc = 0x9c00
            budget = max(1, int(self.next_irq-self.cycles)) if clock else 1000000
            c.ticks_to_stop = budget
            c.run()
            self.cycles += budget-c.ticks_to_stop
            if c.pc == 0x1818:
                self.regs[c.c&15] = c.a
                self.ret()
        raise RuntimeError(f'timeout at {c.pc:04x}')

# Verify the threshold comparison before producing any runtime assets.
probe = Machine(); probe.call(0x1d28)
probe.m[0xbb:0xbd] = bytes([1,2])  # required BCD 12
probe.m[0xb9:0xbb] = bytes([1,1])  # collected BCD 11
probe.call(0x0965)
assert probe.m[0x62] == 0 and probe.m[0x7a] == 0
probe.m[0xba] = 2
probe.call(0x0965)
assert probe.m[0x62] == 1 and probe.m[0x7a] == 8
assert probe.m[0x136] == 1 and probe.m[0x13d] == 255
flash = []
for _ in range(8):
    probe.call(0x2aef)
    flash.append(probe.m[0x2b9a])
    assert probe.m[0x2b9f] == flash[-1]
assert flash == [0x48,0x47,0x46,0x45,0x44,0x43,0x42,0x54]

# Probe the actual open-exit draw dispatcher before either drawing branch runs.
door = Machine(); door.call(0x1d28)
door.m[0x119:0x11b] = (0xb108).to_bytes(2,'little'); door.m[0xb108] = 5
blink = []
for _ in range(8):
    door.call(0x0b87, stop_at=0x0b5a if ((door.m[0xc2]+1)&2) else 0x03d1)
    blink.append(not bool(door.m[0xc2]&2))
assert blink == [True,False,False,True,True,False,False,True]

# Pixel pens, rather than recolouring by RGB, preserve inks 0/5 exactly.
def pixels(v):
    return (((v>>7)&1)|((v>>2)&2)|((v>>3)&4)|((v<<2)&8),
            ((v>>6)&1)|((v>>1)&2)|((v>>2)&4)|((v<<3)&8))
def character(data, palette):
    image = Image.new('RGB',(8,8))
    for y in range(8):
        for x in range(2):
            for p,pen in enumerate(pixels(data[y*2+x])):
                for stretch in range(2): image.putpixel((x*4+p*2+stretch,y),tuple(palette[pen]))
    return image

def tile(index,palette):
    start = 0x2c00 + RAM[0x5df0+index]*16
    image = Image.new('RGB',(16,16))
    for q in range(4): image.paste(character(RAM[start+q*16:start+(q+1)*16],palette),(q%2*8,q//2*8))
    return image

caves = json.loads((OUT/'caves.json').read_text())
atlas = Image.new('RGB',(81*16,20*8*16))
wipe = Image.new('RGB',(8,20*8))
original = RAM[0x2e80:0x2ec0]
for cave in range(20):
    base = caves[cave*5]['palette']
    wipe.paste(character(RAM[0x3000:0x3010],base),(0,cave*8))
    for frame,colour in enumerate(flash):
        palette = list(base); palette[0] = palette[5] = HW[colour&31]
        row = (frame*20+cave)*16
        for index in range(64): atlas.paste(tile(index,palette),(index*16,row))
        for frame_index in range(17):
            if frame_index == 0: data = RAM[0x58f0:0x5910]+RAM[0x5910:0x5930]
            else:
                address = (0x59b0 if frame_index<=8 else 0x5bb0)+((frame_index-1)%8)*64
                data = RAM[address:address+64]
            RAM[0x2e80:0x2ec0] = data
            atlas.paste(tile(56,palette),((64+frame_index)*16,row))
        RAM[0x2e80:0x2ec0] = original
atlas.save(OUT/'cave-flash.png'); wipe.save(OUT/'cave-wipe.png')

entry = Machine(); entry.call(0x1d28)
entry.cpu.ix = 0xb108; entry.cpu.e = 0; entry.m[0xb108] = 5
entry.call(0x0a3b)
assert entry.m[0x69] == 1 and entry.m[0x74] == 1
assert RAM[0x5df0+4] == 0

RATE = 44100
LEVELS = [0,.009,.013,.019,.027,.04,.057,.083,.12,.17,.25,.36,.51,.71,.85,1]
def render(name,frames,hz):
    phases = [0.,0.,0.];noisephase=0.;lfsr=0x1ffff;pcm=bytearray()
    assert RATE%hz == 0
    for r in frames:
        for _ in range(RATE//hz):
            noisephase += 1_000_000/(16*max(1,r[6]&31)*RATE)
            while noisephase >= 1:
                noisephase -= 1;lfsr=(lfsr>>1)|(((lfsr^(lfsr>>3))&1)<<16)
            value=0.
            for ch in range(3):
                period=max(1,(r[ch*2]+256*r[ch*2+1])&4095)
                phases[ch]=(phases[ch]+1_000_000/(16*period*RATE))%1
                tone=bool(r[7]&(1<<ch)) or phases[ch]<.5
                noise=bool(r[7]&(8<<ch)) or bool(lfsr&1)
                if r[7]&(9<<ch)!=(9<<ch):value+=(1 if tone and noise else -1)*LEVELS[r[8+ch]&15]/3
            pcm.extend(struct.pack('<h',int(value*24000)))
    assert any(pcm),name
    with wave.open(str(OUT/(name+'.wav')),'wb') as w:
        w.setnchannels(1);w.setsampwidth(2);w.setframerate(RATE);w.writeframes(pcm)
    (OUT/(name+'.ay.json')).write_text(json.dumps({'tickHz':hz,'frames':frames})+'\n')
    return len(frames)/hz

opened = Machine(); opened.call(0x1d28); opened.call(0x0857)
frames=[]
for tick in range(450):
    opened.call(0x0f8c)
    if tick%6==0: opened.call(0x0fe0)
    frames.append(opened.regs.copy())
open_seconds = render('exit-open',frames,300)
bonus = Machine(); bonus.call(0x1d28)
# Execute all four busy-wait/period writes for each bonus-second step.
start=bonus.cycles
for second in range(255):
    bonus.m[0xf5]=second
    bonus.call(0x1bff,clock=True)
unit_seconds=(bonus.cycles-start)/4_000_000/255
bonus_seconds=render('exit-bonus',bonus.frames,300)
manifest = {
    'sourceSha256':hashlib.sha256((ROOT/'BoulderDash-1.dsk').read_bytes()).hexdigest(),
    'flashHardwareColours':flash,'flashTickSeconds':.02,
    'doorVisibleCycle':blink[:4],
    'bonusStepSeconds':unit_seconds,'bonusSoundSeconds':bonus_seconds,
    'openingSoundSeconds':open_seconds,'bonusWaitSeconds':1.,'wipeSeconds':.5,
    'addresses':{'quota':'0x0965','openingSound':'0x0857','flash':'0x2aef','doorBlink':'0x0b87','exitEntry':'0x0a56','bonusLoop':'0x1ce0','bonusSound':'0x1bff','wipe':'0x0e28','wipeCharacter':'0x3000'},
    'probes':{'quota11of12Closed':True,'quota12of12OpensAndFlashes':True,'doorDrawBranchVerified':True,'entrySetsCompletionFlags':True},
    'timingNote':'Bonus code measured at 4 MHz with audio interrupts at 300 Hz. AY port writer trapped; CPC contention/firmware scheduling not emulated. Opening driver scheduled at 50 Hz; visual wipe duration chosen for readability.'
}
(OUT/'exit-effects.json').write_text(json.dumps(manifest,indent=2)+'\n')
print(json.dumps(manifest,indent=2))
