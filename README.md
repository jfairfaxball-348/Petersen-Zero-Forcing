# Petersen Zero Forcing

Research repository for the exact statement

> **For every integer `n >= 13`, `Z(P(n,3)) = 8`.**

Here `P(n,3)` has vertices `u_i,v_i` modulo `n`, with edges `u_i u_(i+1)`, `u_i v_i`, and `v_i v_(i+3)`, and `Z` is the standard zero-forcing number.

## Required phase order

**MATHEMATICAL PROOF → LEAN FORMALISATION → PALOMAR → RESEARCH PAPER**

The **PROOF gate passed on 2026-09-23** after an independent hostile audit of the exact quantified theorem. The audited proof/evidence state is commit `08164566d86c7129c5b5b0b8bed9c9a539aa55c0`. The later commit `e031413ca6114e38b9bd09fdaa579a72e069c6a4` changed only public website metadata and did not alter any audited proof or evidence file.

Only **LEAN** is now active. No Lean formalisation, Palomar work, or publication drafting was begun during the proof-audit session.

## Current status

- scaffold: **complete**
- imported pilot verdict: **PILOT_POSITIVE**
- baseline: **reproduced**
- independent proof audit: **PROOF_PASS**
- active phase: **LEAN**
- Palomar / paper: **locked by preceding gates**

See `audit/FINDINGS.md`, `audit/OPEN_OBLIGATIONS.md`, and `proof/DEPENDENCIES.md` for the proof-gate record and audited dependency account. `PROJECT_STATUS.json` is the machine-readable status authority; `ROADMAP.md` is the phase roadmap.

## Reproduce the computational baseline

From a clean checkout with Python 3, a C++17 compiler, `sha256sum`, and standard Unix tools:

```bash
./scripts/verify_baseline.sh
```

The command verifies preserved hashes, checks the canonical merge certificate with standalone C++ and Python verifiers, reproduces the C++ reduced seven-seed scans for every `n=13,...,30`, and independently repeats those finite scans in Python. Timings are diagnostic only.

## Evidence boundary

The proof audit did not trust the certificate producer. It directly inspected the canonical certificate and both standalone certificate verifiers, checked the mathematical meaning of closedness and all 1,591 ordered contact translations, audited containment/weight accounting/projection/contact lifting/termination, and separately audited the first-force finite reduction and the eight-seed upper construction. The original pilot remains evidence rather than a proof source.

## Next task

Begin Lean formalisation from the audited dependency account in `proof/DEPENDENCIES.md`. Do not start Palomar work until the Lean build and trust/axiom audit pass.
