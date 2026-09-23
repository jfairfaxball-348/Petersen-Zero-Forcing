# Verification protocol

The bootstrap baseline is accepted only if `./scripts/verify_baseline.sh` exits zero from a clean checkout.

The command must establish all of the following without changing expected values:

1. the preserved pilot ZIP and report match their recorded SHA-256 hashes;
2. the canonical certificate matches its recorded SHA-256 hash;
3. the C++ certificate verifier reports 38 shapes, 1,591 ordered touching merges, maximum span 18, uniform cutoff 22, and seven-seed partition bound 16;
4. the Python certificate verifier independently reports the same shape/merge counts and size/partition bounds;
5. the C++ finite scan covers exactly every `n=13,...,30`, with 14,271,318 reduced entries total, maximum closure 18 at `n=13`, and 16 at every `n=14,...,30`;
6. the Python set-based implementation independently repeats every one of those reduced scans and agrees on entry counts and maxima.

The Python finite scans are deliberately run one `n` per fresh subprocess, with at most four workers at once. This preserves the imported reference implementation while avoiding cumulative interpreter-state/performance effects observed in the bootstrap sandbox. This orchestration change is not a mathematical reduction: each of the same 18 complete reduced scans is still executed.

Timings and RSS are diagnostic only. Baseline scope stops at `n=30`.
