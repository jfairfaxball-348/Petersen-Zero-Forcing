#!/usr/bin/env python3
"""Independent Python reproduction of the complete reduced scans for n=13,...,30."""
import argparse
import importlib.util
import json
from pathlib import Path
import subprocess
import sys
from typing import Optional
from concurrent.futures import ThreadPoolExecutor, as_completed

HERE = Path(__file__).resolve().parent
REFERENCE = HERE / 'finite_reference.py'


def load_reference():
    spec = importlib.util.spec_from_file_location('finite_reference', REFERENCE)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


def worker(n: int):
    v = load_reference()
    assert len(v.close(range(8), v.graph(n))) == 2*n
    return v.scan(n, 7, True)


def parent(cpp_output: Path, output: Optional[Path]):
    cpp_rows = json.loads(cpp_output.read_text())
    assert [r['n'] for r in cpp_rows] == list(range(13,31))
    def run_one(row):
        n = row['n']
        proc = subprocess.run([sys.executable, str(Path(__file__).resolve()), '--worker', str(n)],
                              check=True, text=True, capture_output=True)
        lines = [line for line in proc.stdout.splitlines() if line.strip()]
        result = json.loads(lines[-1])['worker_result']
        assert result['tested'] == row['tested_with_duplicates'], (n, result['tested'], row['tested_with_duplicates'])
        assert result['maximum_closure'] == row['maximum_closure_in_scan'], (n, result['maximum_closure'], row['maximum_closure_in_scan'])
        return n, result

    by_n = {}
    with ThreadPoolExecutor(max_workers=4) as pool:
        futures = [pool.submit(run_one, row) for row in cpp_rows]
        for fut in as_completed(futures):
            n, result = fut.result()
            by_n[n] = result
            print(f"python finite n={n}: tested={result['tested']} max={result['maximum_closure']}", flush=True)
    checks = [by_n[n] for n in range(13,31)]
    out = dict(status='passed', scans=checks,
               scope='All n=13,...,30, seven seeds; complete first-force reduced scans with duplicate entries allowed')
    text = json.dumps(out, indent=2) + '\n'
    if output:
        output.write_text(text)
    return out


def main():
    p = argparse.ArgumentParser()
    p.add_argument('--cpp-output', type=Path)
    p.add_argument('--output', type=Path)
    p.add_argument('--worker', type=int)
    args = p.parse_args()
    if args.worker is not None:
        result = worker(args.worker)
        print(json.dumps({'worker_result': result}))
        return
    if args.cpp_output is None:
        p.error('--cpp-output is required outside worker mode')
    out = parent(args.cpp_output, args.output)
    print(json.dumps({'status': out['status'], 'scans': len(out['scans'])}))

if __name__ == '__main__':
    main()
