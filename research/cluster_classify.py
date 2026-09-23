"""Exact connected-closure merge classification on the infinite Petersen strip.

No cyclic graph sizes are screened here.  Vertices are pairs (integer, layer).
The bounded output is evidence for a separate mathematical lifting argument.
"""
from functools import lru_cache
from pathlib import Path
import json
import time


@lru_cache(maxsize=None)
def neighbors(v):
    i, layer = v
    step = 1 if layer == 0 else 3
    return frozenset(((i-step, layer), (i+step, layer), (i, 1-layer)))


def canonical(vertices):
    left = min(i for i, _ in vertices)
    return tuple(sorted((i-left, t) for i, t in vertices))


def closure(vertices):
    blue = set(vertices)
    while True:
        added = set()
        for v in blue:
            white = neighbors(v) - blue
            if len(white) == 1:
                added.update(white)
        if not added:
            return canonical(blue)
        blue.update(added)
        if len(blue) > 64:
            raise RuntimeError('Closure exceeded exploration guard; classification incomplete')


def shifts_to_touch(a, b):
    frontier = set(a)
    for v in a:
        frontier.update(neighbors(v))
    return {i-j for i,t in frontier for j,s in b if t == s}


def classify(max_cost=7):
    levels = {1: {((0, 0),), ((0, 1),)}}
    minimum = {s: 1 for s in levels[1]}
    records = []
    for k in range(1, max_cost+1):
        t = time.monotonic()
        merges = 0
        if k > 1:
            current = set()
            for a in range(1, k//2+1):
                b = k-a
                for left in levels[a]:
                    for right in levels[b]:
                        for shift in shifts_to_touch(left, right):
                            seed = set(left) | {(i+shift, l) for i,l in right}
                            result = closure(seed)
                            merges += 1
                            if result not in minimum:
                                current.add(result)
            levels[k] = current
            for shape in current:
                minimum[shape] = k
        record = dict(cost=k, new_shapes=len(levels[k]), merges=merges,
                      max_size=max(len(s) for s in levels[k]),
                      max_span=max(s[-1][0] for s in levels[k]),
                      seconds=time.monotonic()-t)
        records.append(record)
        print(json.dumps(record), flush=True)
        root = Path(__file__).resolve().parents[1]
        target = root / 'results/discovery/cluster_shapes.json'
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_text(json.dumps({'records': records, 'levels': {
            str(j): sorted(shapes) for j, shapes in levels.items()
        }}, separators=(',', ':'))+'\n')
    return levels, records


if __name__ == '__main__':
    classify()
