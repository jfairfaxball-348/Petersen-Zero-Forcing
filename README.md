# Petersen Zero Forcing

Research repository for the exact statement

> **For every integer `n >= 13`, `Z(P(n,3)) = 8`.**

Here `P(n,3)` has vertices `u_i,v_i` modulo `n`, with edges `u_i u_(i+1)`, `u_i v_i`, and `v_i v_(i+3)`, and `Z` is the standard zero-forcing number.

## Required phase order

**MATHEMATICAL PROOF → LEAN FORMALISATION → PALOMAR → RESEARCH PAPER**

Only **PROOF** is active. The imported pilot is `PILOT_POSITIVE` and its computational baseline has been reproduced, but the mathematical proof is **not accepted** until an independent hostile audit passes every obligation in `audit/OPEN_OBLIGATIONS.md`. Lean, Palomar, and paper work are locked.

## Current bootstrap status

- scaffold: **complete**
- imported pilot verdict: **PILOT_POSITIVE**
- baseline: **reproduced**
- active phase: **PROOF**
- independent proof audit: **pending**
- Lean / Palomar / paper: **locked by preceding gates**

`PROJECT_STATUS.json` is the machine-readable status authority. `ROADMAP.md` is the single phase roadmap.

## Reproduce the baseline

From a clean checkout with Python 3, a C++17 compiler, `sha256sum`, and standard Unix tools:

```bash
./scripts/verify_baseline.sh
```

The command verifies the preserved input hashes, checks the canonical merge certificate with independent C++ and Python verifiers, reproduces the C++ reduced seven-seed scans for every `n=13,...,30`, and independently repeats those finite scans in Python. Acceptance compares counts, ranges, maxima, and hashes; timings are not acceptance criteria. The command keeps certificate/C++ stages serial and uses at most four fresh Python finite-scan workers; each process is capped at 768 MiB virtual memory, keeping the aggregate ceiling below 4 GiB and the computation well below the two-CPU-hour bootstrap budget.

## Evidence boundary

The unchanged pilot archive and standalone report are under `data/pilot/original/`. Working copies are separated by role:

- `certificates/` — canonical certificate and schema;
- `research/` — discovery and certificate-generation / finite-search producers;
- `verifiers/` — checking code, including the independent finite reference implementation;
- `results/bootstrap/` — structural reproduction outputs from this bootstrap;
- `proof/` — imported candidate mathematical argument, definitions, dependencies, and sources;
- `audit/` — claim register, open obligations, findings, and the next-session hostile-audit brief.

Successful computation is evidence, not an independent mathematical audit. In particular, two working implementations do not by themselves justify the projection, coverage, merging, termination, first-force reduction, or theorem assembly arguments.

## Next task

Read `docs/SESSION_HANDOFF.md` and perform the independent proof audit described in `audit/INDEPENDENT_PROOF_AUDIT_BRIEF.md`. Do not begin Lean until that audit passes the exact quantified theorem.
