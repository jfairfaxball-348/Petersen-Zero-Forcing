# Petersen Zero Forcing

Completed formal-verification project for the exact statement

> **For every integer `n >= 13`, `Z(P(n,3)) = 8`.**

Here `P(n,3)` has vertices `u_i,v_i` modulo `n`, with edges `u_i u_(i+1)`, `u_i v_i`, and `v_i v_(i+3)`, and `Z` is the standard zero-forcing number.

## Final project status

**COMPLETE — retained as an alternative formalisation and verification method.**

The project completed all technical verification work:

- mathematical proof audit: **passed**;
- Lean formalisation: **passed**;
- final accepted Lean head: `554f90beb1614a12dca325dd2c02dbad82fe69d5`;
- Palomar verification and registration: **passed**;
- Palomar registration: **PALOMAR-2026-09-27-000004 v1**;
- immutable registered Palomar commit: `5dd760e79ab33b3fcf2feb93eb37e23509d184ed`;
- prior-art / novelty audit: **complete**.

The prior-art audit found an earlier public proof of the exact theorem and an earlier independent Lean formalisation. The project therefore makes **no first-proof, first-formalisation, novelty, or publication-priority claim**.

No research paper or arXiv submission will be pursued. The repository is preserved as an independent alternative formalisation/verification route for the theorem.

The prior-art audit is recorded on branch `prior-art-novelty-audit-2026-09-27`, commit `aacf9f1d292b41940b0c2c6fa2d74150d963bcbf`.

## Evidence

The proof audit directly checked the canonical certificate and standalone verifiers, all 1,591 ordered contact translations, containment and weight accounting, projection/contact lifting/termination, the finite lower-bound reduction, and the eight-seed upper construction.

The Lean development formalises the exact quantified result. Its final transitive axiom audit reports only `propext`, `Classical.choice`, and `Quot.sound`.

The Palomar snapshot is immutable and must not be rewritten.

## Reproduce the computational baseline

From a clean checkout with Python 3, a C++17 compiler, `sha256sum`, and standard Unix tools:

```bash
./scripts/verify_baseline.sh
```

The command verifies preserved hashes, checks the canonical merge certificate with standalone C++ and Python verifiers, reproduces the C++ reduced seven-seed scans for every `n=13,...,30`, and independently repeats those finite scans in Python.

## Project closeout

There is no next publication phase. This repository is complete and intentionally stops after the prior-art / novelty audit.
