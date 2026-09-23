"""Independent set-based check of the bounded selection screen.

This verifies finite cases only; no assertion is made for arbitrary n.
Run after ./petersen_screen > petersen_screen_results.json.
"""
import itertools
import json
import math
import time
from pathlib import Path


def graph(n):
    return [
        ({(v-1) % n, (v+1) % n, n+v} if v < n else
         {v-n, n+(v-n-3) % n, n+(v-n+3) % n})
        for v in range(2*n)
    ]


def close(seed, neighbors):
    blue = set(seed)
    while True:
        new = set()
        for v in blue:
            white_neighbors = neighbors[v] - blue
            if len(white_neighbors) == 1:
                new.update(white_neighbors)
        if not new:
            return blue
        blue.update(new)


def reduced_seeds(n):
    neighbors = graph(n)
    for source in (0, n):
        for pair in itertools.combinations(sorted(neighbors[source]), 2):
            base = {source, *pair}
            rest = sorted(set(range(2*n)) - base)
            for extra in itertools.combinations(rest, 4):
                yield base.union(extra)


def scan(n, k, reduced=False):
    start = time.monotonic()
    neighbors = graph(n)
    seeds = reduced_seeds(n) if reduced else itertools.combinations(range(2*n), k)
    tested, maximum = 0, 0
    for seed in seeds:
        closed = close(seed, neighbors)
        tested += 1
        maximum = max(maximum, len(closed))
        assert len(closed) < 2*n, (n, seed)
    expected = 6*math.comb(2*n-3,4) if reduced else math.comb(2*n,k)
    assert tested == expected
    result = dict(n=n, k=k, reduced=reduced, tested=tested,
                  maximum_closure=maximum, seconds=time.monotonic()-start)
    print(json.dumps(result), flush=True)
    return result


if __name__ == '__main__':
    rows = json.loads(Path('petersen_screen_results.json').read_text())
    for row in rows:
        n = row['n']
        closed = close(row['maximizing_seed'], graph(n))
        assert sorted(closed) == row['closure']
        assert len(closed) == row['maximum_closure_in_scan']
        if row['complete_reduced_scan']:
            assert row['tested_with_duplicates'] == 6*math.comb(2*n-3,4)
    for n in range(9, 101):
        assert len(close(range(8), graph(n))) == 2*n
    checks = [scan(10, 7), scan(11, 6), scan(12, 6),
              scan(13, 7, True), scan(21, 7, True)]
    assert checks[0]['maximum_closure'] == 16
    assert checks[-1]['maximum_closure'] == 16
    Path('petersen_verification_results.json').write_text(json.dumps({
        'status': 'passed',
        'all_cpp_witness_closures_checked': True,
        'eight_outer_vertices_force_checked_n': [9, 100],
        'independent_scans': checks,
        'scope': 'finite computation only; no Lean verification or infinite proof'
    }, indent=2)+'\n')
