#!/usr/bin/env python3
"""Standalone Python verifier for the finite merge certificate."""
import argparse
import json
from pathlib import Path


def verify(path: Path):
    rows = path.read_text().splitlines()
    assert rows[0] == 'PETERSEN_MERGE_CERTIFICATE_V1'
    limit, size, num_merges = map(int, rows[1].split())
    assert (limit, size) == (7, 38)
    assert len(rows) == 2 + size + num_merges
    shapes, weights = [], []
    for j, line in enumerate(rows[2:2+size]):
        numbers = list(map(int, line.split()))
        ident, weight, count = numbers[:3]
        assert ident == j and 1 <= weight <= 7 and len(numbers) == 3 + 2*count
        blue = frozenset(zip(numbers[3::2], numbers[4::2]))
        assert len(blue) == count and all(t in (0, 1) for _, t in blue)
        assert min(x for x, _ in blue) == 0
        assert max(x for x, _ in blue) <= 3*(weight-1)
        for x, t in blue:
            d = 2*t + 1
            assert sum(v not in blue for v in ((x-d,t), (x+d,t), (x,1-t))) != 1
        shapes.append(blue); weights.append(weight)
    assert len(set(shapes)) == size
    assert all(any(w == 1 and s == {(0,t)} for s,w in zip(shapes,weights)) for t in (0,1))
    merges = {}
    for line in rows[2+size:]:
        a,b,t,c,q = map(int,line.split())
        assert (a,b,t) not in merges
        merges[a,b,t] = c,q
    needed = set()
    for a,A in enumerate(shapes):
        for b,B in enumerate(shapes):
            if weights[a]+weights[b] > 7:
                continue
            shifts = set()
            for x,t in A:
                contact = ((x,t),(x-(2*t+1),t),(x+(2*t+1),t),(x,1-t))
                for p,l in contact:
                    for y,s in B:
                        if s == l:
                            shifts.add(p-y)
            for shift in shifts:
                key = a,b,shift
                needed.add(key)
                c,q = merges[key]
                assert 0 <= c < size and weights[c] <= weights[a]+weights[b]
                C = {(x+q,t) for x,t in shapes[c]}
                assert A <= C and {(x+shift,t) for x,t in B} <= C
    assert needed == set(merges)
    maximum = [0]+[max(len(s) for s,w in zip(shapes,weights) if w == k) for k in range(1,8)]
    total = [0]
    for k in range(1,8):
        total.append(max(maximum[j]+total[k-j] for j in range(1,k+1)))
    assert total == [0,1,2,4,6,8,12,16]
    return dict(status='passed', shapes=size, ordered_touching_merges=len(needed),
                maximum_shape_sizes=maximum[1:], partition_bounds=total[1:],
                maximum_span=max(x for s in shapes for x,_ in s),
                scope='Finite merge certificate; read mathematical argument separately')


def main():
    p = argparse.ArgumentParser()
    p.add_argument('certificate', type=Path)
    p.add_argument('--output', type=Path)
    args = p.parse_args()
    out = verify(args.certificate)
    text = json.dumps(out, indent=2) + '\n'
    if args.output:
        args.output.write_text(text)
    print(json.dumps(out))

if __name__ == '__main__':
    main()
