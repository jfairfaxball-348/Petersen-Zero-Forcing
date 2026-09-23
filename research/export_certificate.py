#!/usr/bin/env python3
"""Produce a containment certificate; this producer is not trusted by verifiers."""
from pathlib import Path
import json
import sys
sys.path.insert(0, str(Path(__file__).resolve().parent))
from cluster_classify import neighbors, canonical, shifts_to_touch

ROOT = Path(__file__).resolve().parents[1]
data = json.loads((ROOT / 'results/discovery/cluster_shapes.json').read_text())
shapes = [(int(k), tuple(map(tuple, s))) for k, level in data['levels'].items() for s in level]
index = {s: j for j, (_, s) in enumerate(shapes)}
merges = []
for ai, (a, left) in enumerate(shapes):
    for bi, (b, right) in enumerate(shapes):
        if a+b > 7:
            continue
        for shift in sorted(shifts_to_touch(left, right)):
            blue = set(left) | {(i+shift, t) for i, t in right}
            while True:
                added = set()
                for v in blue:
                    white = neighbors(v) - blue
                    if len(white) == 1:
                        added.update(white)
                if not added:
                    break
                blue.update(added)
                assert len(blue) <= 16
            ci = index[canonical(blue)]
            assert shapes[ci][0] <= a+b
            merges.append((ai, bi, shift, ci, min(i for i, _ in blue)))
lines = ['PETERSEN_MERGE_CERTIFICATE_V1', f'7 {len(shapes)} {len(merges)}']
for j, (k, shape) in enumerate(shapes):
    lines.append(' '.join(map(str, [j, k, len(shape)] + [x for v in shape for x in v])))
lines.extend(' '.join(map(str, m)) for m in merges)
out = ROOT / 'certificates/merge_certificate.generated.txt'
out.write_text('\n'.join(lines)+'\n')
print(json.dumps({'shapes': len(shapes), 'ordered_touching_merges': len(merges), 'output': str(out.relative_to(ROOT))}))
