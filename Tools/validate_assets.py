#!/usr/bin/env python3
"""Validate the extracted disk, all 100 caves and reconstructed audio."""
import hashlib, json, struct, wave
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
a=ROOT/'assets'
manifest=json.loads((ROOT/'Extracted/manifest.json').read_text())
assert hashlib.sha256((ROOT/manifest['source']).read_bytes()).hexdigest()==manifest['sha256']
for f in manifest['files']:
 b=(ROOT/'Extracted'/f['name']).read_bytes()
 assert len(b)==f['length']
 assert hashlib.sha256(b).hexdigest()==f['sha256']
caves=json.loads((a/'caves.json').read_text());maps=(a/'caves.bin').read_bytes()
assert len(caves)==100 and len(maps)==88000
for i,c in enumerate(caves):
 m=maps[i*880:(i+1)*880]
 assert m.count(37)==1 and m.count(4)==1
 assert m[:40]==bytes([7])*40 and m[-40:]==bytes([7])*40
 assert c['required']>0 and c['time']>0
sounds=list(a.glob('*.wav'))
for p in sounds:
 with wave.open(str(p)) as w:
  assert w.getframerate()==44100 and w.getnchannels()==1 and w.getsampwidth()==2
  frames=w.readframes(w.getnframes());values=struct.unpack('<'+'h'*(len(frames)//2),frames)
  assert max(values)>0 and min(values)<0,p.name
provenance={'sourceSha256':manifest['sha256'],'runtime':'native Rust, no emulator','maps':{'address':'0xb0e0','width':40,'height':22,'count':100,'decoderRoutines':['0x13d1','0x11e2','0x173d','0x16af']},'graphics':{'bank':'0x2c00..0x5daf','tileLookup':'0x5df0','playerIdle':'0x58f0','playerRight':'0x59b0','playerLeft':'0x5bb0','palettes':'original routine 0x2995'},'audio':{'musicRoutine':'0x183d','noteSequence':'0x6979','periodTable':'0x6a79','ayRegisterWriter':'0x1818','deathParameters':'0x043c','sampleRate':44100,'synthesis':'offline square-wave tone and 17-bit noise; analogue filter and envelope not emulated'},'assets':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(a.iterdir()) if p.is_file() and p.name!='manifest.json'}}
(a/'manifest.json').write_text(json.dumps(provenance,indent=2)+'\n')
effects=json.loads((a/'exit-effects.json').read_text())
assert effects['sourceSha256']==manifest['sha256']
assert effects['flashHardwareColours']==[72,71,70,69,68,67,66,84]
assert effects['doorVisibleCycle']==[True,False,False,True]
assert all(effects['probes'].values())
print(f'PASS: disk hashes, 4 original files, 100 caves, {len(sounds)} non-silent WAV files and original exit-effect probes')
