# Repository instructions

This repository must proceed in the strict order:

**PROOF → LEAN → PALOMAR → PAPER**.

`PROJECT_STATUS.json` is authoritative for phase state; `ROADMAP.md` is authoritative for phase gates. Do not create parallel status systems.

## Current phase boundary

The independent hostile mathematical audit passed on 2026-09-23 for the exact theorem
`Z(P(n,3)) = 8` for every integer `n >= 13`.
The audited proof/evidence state is commit `08164566d86c7129c5b5b0b8bed9c9a539aa55c0`.

The next permitted phase is **LEAN**. The proof-audit session itself did not begin Lean work.

Do not:

- weaken or replace the audited mathematical statement during formalisation;
- treat executable checks as substitutes for their mathematical specifications;
- prepare Palomar submission configuration before the Lean trust audit passes;
- draft a publication before Palomar verification and registration;
- replace failed expected results merely to make verification green;
- introduce an autonomous/G-style research programme.

## Evidence conventions

Preserve original evidence under `data/pilot/original/`. Do not edit those files. Separate discovery/producers, certificates, verifiers, and run outputs. The certificate producer is not a trusted checker. Machine-dependent timings are logs only, never acceptance values.

A failure in Lean that exposes a mathematical gap reopens the PROOF gate; otherwise the audited proof record in `audit/` is the basis for formalisation.
