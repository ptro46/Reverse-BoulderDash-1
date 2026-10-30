#!/usr/bin/env python3
"""Read a CPC data-format DSK, validate AMSDOS headers and preserve provenance."""
import argparse
import hashlib
import json
from pathlib import Path

def read_disk(path):
    disk = path.read_bytes()
    extended = disk.startswith(b'EXTENDED CPC DSK File')
    if not extended and not disk.startswith(b'MV - CPCEMU'):
        raise ValueError('Unsupported DSK signature')
    offset = 256
    tracks = []
    for i in range(disk[48] * disk[49]):
        size = disk[52+i]*256 if extended else int.from_bytes(disk[50:52], 'little')
        if size == 0:
            continue
        track = disk[offset:offset+size]
        if not track.startswith(b'Track-Info\r\n'):
            raise ValueError(f'Invalid track {i}')
        sectors, pos = [], 256
        for j in range(track[21]):
            entry = track[24+j*8:32+j*8]
            length = int.from_bytes(entry[6:8], 'little') if extended else 128 << entry[3]
            payload = track[pos:pos+length]
            if len(payload) != length:
                raise ValueError('Truncated sector')
            sectors.append((entry[2], payload))
            pos += length
        tracks.append((track[16], track[17], sorted(sectors)))
        offset += size
    # This extractor deliberately accepts CPC DATA format only (C1..C9).
    if disk[49] != 1 or [s for s, _ in tracks[0][2]] != list(range(0xc1, 0xca)):
        raise ValueError('Expected single-sided CPC DATA format')
    data = b''.join(payload for _, _, sectors in tracks for _, payload in sectors)
    entries = {}
    for i in range(0, 2048, 32):
        e = data[i:i+32]
        if e[0] == 0xe5:
            continue
        if e[0] > 15:
            raise ValueError('Invalid CP/M user')
        name = bytes(c & 127 for c in e[1:9]).decode('ascii').rstrip()
        suffix = bytes(c & 127 for c in e[9:12]).decode('ascii').rstrip()
        filename = f'{name}.{suffix}' if suffix else name
        if any(c in filename for c in '/\\') or not name:
            raise ValueError('Unsafe CP/M filename')
        content = b''.join(data[n*1024:(n+1)*1024] for n in e[16:32] if n)
        content = content[:e[15]*128]
        extent = e[12] + 32*e[14]
        entries.setdefault(filename, []).append((extent, content))
    return disk, {n: b''.join(c for _, c in sorted(e)) for n, e in entries.items()}

def extract(source, destination):
    destination.mkdir(parents=True, exist_ok=True)
    disk, files = read_disk(source)
    memory = bytearray(65536)
    manifest = {'source': source.name, 'sha256': hashlib.sha256(disk).hexdigest(), 'files': []}
    for name, raw in files.items():
        header = raw[:128]
        if sum(header[:67]) & 65535 != int.from_bytes(header[67:69], 'little'):
            raise ValueError(f'Invalid AMSDOS checksum: {name}')
        length = int.from_bytes(header[64:67], 'little') or int.from_bytes(header[24:26], 'little')
        payload = raw[128:128+length]
        if len(payload) != length:
            raise ValueError(f'Truncated file: {name}')
        load = int.from_bytes(header[21:23], 'little')
        entry = int.from_bytes(header[26:28], 'little')
        (destination/name).write_bytes(payload)
        (destination/(name+'.amsdos')).write_bytes(raw)
        if header[18] == 2:
            if load + length > 65536:
                raise ValueError('File exceeds RAM')
            memory[load:load+length] = payload
        manifest['files'].append({'name': name, 'type': header[18], 'load': load,
                                  'entry': entry, 'length': length,
                                  'sha256': hashlib.sha256(payload).hexdigest()})
    (destination/'memory.bin').write_bytes(memory)
    (destination/'manifest.json').write_text(json.dumps(manifest, indent=2)+'\n')
    return manifest

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('source', type=Path)
    parser.add_argument('destination', type=Path)
    args = parser.parse_args()
    print(json.dumps(extract(args.source, args.destination), indent=2))
