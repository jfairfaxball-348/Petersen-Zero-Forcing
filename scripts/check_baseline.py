#!/usr/bin/env python3
import json
from pathlib import Path
import sys


def fail(msg):
    print(f'BASELINE FAILURE: {msg}', file=sys.stderr)
    raise SystemExit(1)


def load(path):
    try:
        return json.loads(Path(path).read_text())
    except Exception as e:
        fail(f'cannot read {path}: {e}')

if len(sys.argv) != 5:
    fail('usage: check_baseline.py cpp_cert.json py_cert.json finite_cpp.json finite_py.json')
cpp, py, fcpp, fpy = map(load, sys.argv[1:])

expected_sizes=[1,2,4,6,8,12,16]
if cpp.get('status')!='passed' or cpp.get('shapes')!=38 or cpp.get('ordered_touching_merges')!=1591:
    fail('C++ certificate summary mismatch')
if cpp.get('uniform_n_at_least')!=22 or cpp.get('seven_seed_bound')!=16:
    fail('C++ certificate cutoff/bound mismatch')
if [r['max_size'] for r in cpp['rows']] != expected_sizes:
    fail('C++ certificate shape-size maxima mismatch')
if py.get('status')!='passed' or py.get('shapes')!=38 or py.get('ordered_touching_merges')!=1591:
    fail('Python certificate summary mismatch')
if py.get('maximum_shape_sizes')!=expected_sizes or py.get('partition_bounds')!=expected_sizes or py.get('maximum_span')!=18:
    fail('Python certificate bound mismatch')
if [r['n'] for r in fcpp] != list(range(13,31)):
    fail('C++ finite range is not exactly 13..30')
if sum(r['tested_with_duplicates'] for r in fcpp) != 14271318:
    fail('C++ reduced-entry total mismatch')
if fcpp[0]['maximum_closure_in_scan'] != 18 or any(r['maximum_closure_in_scan'] != 16 for r in fcpp[1:]):
    fail('C++ finite maxima mismatch')
scans=fpy.get('scans',[])
if fpy.get('status')!='passed' or [r['n'] for r in scans] != list(range(13,31)):
    fail('Python finite range/status mismatch')
if sum(r['tested'] for r in scans) != 14271318:
    fail('Python reduced-entry total mismatch')
if scans[0]['maximum_closure'] != 18 or any(r['maximum_closure'] != 16 for r in scans[1:]):
    fail('Python finite maxima mismatch')
for a,b in zip(fcpp, scans):
    if a['tested_with_duplicates'] != b['tested'] or a['maximum_closure_in_scan'] != b['maximum_closure']:
        fail(f"finite implementations disagree at n={a['n']}")
print('BASELINE PASSED: hashes, 38 shapes, 1591 merges, n=13..30, 14271318 entries/implementation, maxima 18 then 16.')
