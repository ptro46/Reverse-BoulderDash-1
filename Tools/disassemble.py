#!/usr/bin/env python3
"""Reference linear listing: data are not distinguished from code."""
from pathlib import Path
import z80
root=Path(__file__).resolve().parents[1]
m=(root/'Extracted/relocated.bin').read_bytes();p=0x200;lines=['; Linear reference only, includes data.']
while p<0x7225:
 s,n=z80.Z80Machine._disasm(m[p:p+4]);lines.append(f'{p:04x} {m[p:p+n].hex():12} {s}');p+=max(n,1)
(root/'Notes').mkdir(exist_ok=True)
(root/'Notes/linear.asm').write_text('\n'.join(lines)+'\n')
