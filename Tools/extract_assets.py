#!/usr/bin/env python3
"""Offline execution of original Z80 data decoders. No emulator in the Rust game."""
from pathlib import Path
import json, hashlib, struct, wave, math
import z80
from PIL import Image, ImageDraw
from extract_dsk import extract
ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'assets';OUT.mkdir(exist_ok=True)
extract(ROOT/'BoulderDash-1.dsk',ROOT/'Extracted')
b=(ROOT/'Extracted/BOULD.BIN').read_bytes()
RAM=bytearray(65536);RAM[0x200:0x200+len(b)]=b
(ROOT/'Extracted/relocated.bin').write_bytes(RAM)
class Machine:
 def __init__(self):
  self.cpu=z80.Z80Machine();self.cpu.set_memory_block(0,bytes(RAM));self.m=self.cpu.memory;self.cpu.iy=0xc0
  self.cpu.set_breakpoint(0xfff0);self.cpu.set_breakpoint(0x1818)
  self.regs=[0]*16;self.regs[7]=0x3f
 def call(self,addr):
  c=self.cpu;c.sp=0x9ff0;self.m[c.sp]=0xf0;self.m[c.sp+1]=0xff;c.pc=addr
  for _ in range(300):
   c.ticks_to_stop=1000000;c.run()
   if c.pc==0xfff0:return
   if c.pc==0x1818:
    self.regs[c.c&15]=c.a
    c.pc=self.m[c.sp]+self.m[c.sp+1]*256;c.sp+=2
  raise RuntimeError(f'timeout {addr:x}, PC {c.pc:x}')
# CPC gate-array colour numbers, each repeated colour is the real hardware alias.
HW=[(128,128,128),(128,128,128),(0,255,128),(255,255,128),(0,0,128),(255,0,128),(0,128,128),(255,128,128),(255,0,128),(255,255,128),(255,255,0),(255,255,255),(255,0,0),(255,0,255),(255,128,0),(255,128,255),(0,0,128),(0,255,128),(0,255,0),(0,255,255),(0,0,0),(0,0,255),(0,128,0),(0,128,255),(128,0,128),(128,255,128),(128,255,0),(128,255,255),(128,0,0),(128,0,255),(128,128,0),(128,128,255)]
def palette(machine):
 writes=[];machine.cpu.set_output_callback(lambda port,value:writes.append((port,value)))
 machine.call(0x2995)
 result=[(0,0,0)]*16;pen=0
 for port,v in writes:
  if port>>8==0x7f:
   if v<16:pen=v
   elif 0x40<=v<0x60:result[pen]=HW[v&31]
 return result

def tile(index,pal):
 im=Image.new('RGB',(16,16))
 base=RAM[0x5df0+index]
 for q in range(4):
  for y in range(8):
   for x in range(2):
    v=RAM[0x2c00+(base+q)*16+y*2+x]
    a=((v>>7)&1)|((v>>2)&2)|((v>>3)&4)|((v<<2)&8)
    b=((v>>6)&1)|((v>>1)&2)|((v>>2)&4)|((v<<3)&8)
    for p,col in enumerate((a,b)):
     for stretch in range(2):im.putpixel(((q%2)*8+x*4+p*2+stretch,(q//2)*8+y),pal[col])
 return im
names=['Intro','Rooms','Maze','Butterflies','Intermission 1','Guards','Firefly dens','Amoeba','Enchanted wall','Intermission 2','Greed','Tracks','Crowd','Walls','Intermission 3','Apocalypse','Funnel','Enchanted boxes','Intermission 4']
# Original progression table contains 20 entries, with four intermissions.
records=[];allmaps=bytearray();atlas=Image.new('RGB',(81*16,20*16))
for cave in range(1,21):
 for difficulty in range(5):
  z=Machine();z.call(0x1d28);z.m[0x83]=cave;z.m[0x84]=difficulty;z.call(0x13d1)
  params=bytes(z.m[0x152:0x1e5]);z.call(0x11e2);z.call(0x173d);z.call(0x16af)
  grid=bytes(z.m[0xb0e0:0xb0e0+880]);assert len(grid)==880
  assert grid.count(0x25)==1,(cave,difficulty,grid.count(0x25))
  allmaps.extend(grid)
  pal=palette(z)
  if difficulty==0:
   for i in range(64):atlas.paste(tile(i,pal),(i*16,(cave-1)*16))
    # Rockford's sprite is assembled by the original animation routine.
   original=RAM[0x2e80:0x2ec0]
   for frame in range(17):
    data=(RAM[0x58f0:0x5910]+RAM[0x5910:0x5930]) if frame==0 else RAM[(0x59b0 if frame<=8 else 0x5bb0)+((frame-1)%8)*64:(0x59b0 if frame<=8 else 0x5bb0)+((frame-1)%8+1)*64]
    RAM[0x2e80:0x2ec0]=data
    atlas.paste(tile(56,pal),((64+frame)*16,(cave-1)*16))
   RAM[0x2e80:0x2ec0]=original
  records.append({'cave':cave,'difficulty':difficulty+1,'number':cave, 'intermission':cave>=17,'required':params[9+difficulty], 'time':params[14+difficulty], 'diamondValue':params[2], 'extraValue':params[3], 'amoebaSlowSeconds':params[1], 'palette':pal,'parameters':params.hex()})
(OUT/'caves.bin').write_bytes(allmaps);(OUT/'caves.json').write_text(json.dumps(records,indent=2)+'\n');atlas.save(OUT/'sprites.png')
# Entire original tile/animation/font bank, preserving binary provenance.
(OUT/'graphics-bank.bin').write_bytes(RAM[0x2c00:0x5db0])
raw=Image.new('RGB',(32*8,25*8));pal=records[0]['palette']
for i in range((0x5db0-0x2c00)//16):
 for y in range(8):
  for x in range(2):
   v=RAM[0x2c00+i*16+y*2+x]
   cols=[((v>>7)&1)|((v>>2)&2)|((v>>3)&4)|((v<<2)&8),((v>>6)&1)|((v>>1)&2)|((v>>2)&4)|((v<<3)&8)]
   for px,col in enumerate(cols):
    for sx in range(2):raw.putpixel((i%32*8+x*4+px*2+sx,i//32*8+y),tuple(pal[col]))
raw.resize((1024,800),Image.Resampling.NEAREST).save(OUT/'graphics-bank.png')
# Human-readable cave contact sheet with true map data and disk graphics.
contact=Image.new('RGB',(640*4,384*5))
for cave in range(20):
 pal=records[cave*5]['palette'];grid=allmaps[cave*5*880:(cave*5+1)*880]
 for y in range(22):
  for x in range(40): contact.paste(tile(grid[y*40+x],pal),((cave%4)*640+x*16,(cave//4)*384+24+y*16))
 ImageDraw.Draw(contact).text(((cave%4)*640+8,(cave//4)*384+6),f'CAVE {cave+1} / level 1',fill='white')
contact.save(OUT/'caves-contact.png')
# Reconstruct original AY register sequences at 50 Hz, synthesize PCM.
RATE=44100
LEVELS=[0,.009,.013,.019,.027,.04,.057,.083,.12,.17,.25,.36,.51,.71,.85,1]
def render(name,frames):
 phase=[0.,0.,0.];noisephase=0.;lfsr=0x1ffff;pcm=bytearray()
 for r in frames:
  for _ in range(RATE//50):
   noisephase+=1_000_000/(16*max(1,r[6]&31)*RATE)
   while noisephase>=1:
    noisephase-=1;lfsr=(lfsr>>1)|(((lfsr^(lfsr>>3))&1)<<16)
   value=0.
   for ch in range(3):
    period=max(1,(r[ch*2]+256*r[ch*2+1])&4095);phase[ch]=(phase[ch]+1_000_000/(16*period*RATE))%1
    tone=bool(r[7]&(1<<ch)) or phase[ch]<.5
    noise=bool(r[7]&(8<<ch)) or bool(lfsr&1)
    volume=LEVELS[r[8+ch]&15]
    if r[7]&(9<<ch)!=(9<<ch):value+=(1 if tone and noise else -1)*volume/3
   pcm.extend(struct.pack('<h',int(value*24000)))
 with wave.open(str(OUT/(name+'.wav')),'wb') as w:w.setnchannels(1);w.setsampwidth(2);w.setframerate(RATE);w.writeframes(pcm)
 (OUT/(name+'.ay.json')).write_text(json.dumps(frames))
 return len(frames)/50
music=Machine();music.call(0x1d28);frames=[]
# The title advances two note bytes every eight calls of the original sequencer.
for _ in range(128*8):
 music.call(0x183d);frames.extend([music.regs.copy(),music.regs.copy()])
audio={'title':render('title',frames),'effects':{}}
for name,setter in [('diamond',0x099f),('dig',0x09e0),('step',0x09c2),('rock',0x0599),('death',0x14ee),('amoeba',0x1087)]:
 z=Machine();z.call(0x1d28)
 # pickup's bookkeeping does not affect its original audio parameters.
 if name=='diamond':
  for a,v in [(0x13f,0x92),(0x13a,15),(0x140,1),(0x137,1)]:z.m[a]=v
 else:
  z.call(setter)
  if name=='death':
   for a,v in [(0x136,1),(0x139,14),(0x13d,255),(0x13e,1),(0x142,31)]:z.m[a]=v
 fs=[]
 for _ in range(60):z.call(0x0f8c);z.call(0x0fe0);fs.append(z.regs.copy())
 audio['effects'][name]={'setter':hex(setter),'seconds':render(name,fs)}
(OUT/'audio-manifest.json').write_text(json.dumps(audio,indent=2)+'\n')
print(f'{len(records)} caves/difficulties, {len(allmaps)} map bytes, 20 palettes, 64 tiles/palette, audio: {audio}')
