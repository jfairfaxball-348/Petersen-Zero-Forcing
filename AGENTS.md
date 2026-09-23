# Repository instructions

This repository must proceed in the strict order:

**PROOF → LEAN → PALOMAR → PAPER**.

`PROJECT_STATUS.json` is authoritative for phase state; `ROADMAP.md` is authoritative for phase gates. Do not create parallel status systems.

## Bootstrap boundary

The bootstrap imported and reproduced a positive pilot. It did **not** independently accept the mathematical proof. The next permitted task is the hostile proof audit in `audit/INDEPENDENT_PROOF_AUDIT_BRIEF.md`.

Do not:

- mark the proof accepted because certificate or finite-search checks pass;
- start Lean, pin/install a Lean toolchain, or add proof code before the PROOF gate passes;
- prepare Palomar submission configuration before the Lean trust audit passes;
- draft a publication before Palomar verification and registration;
- extend the cyclic search beyond `n=30` as part of baseline work;
- trust certificate-production code as a checker of its own output;
- replace failed expected results merely to make verification green;
- introduce an autonomous/G-style research programme.

## Evidence conventions

Preserve original evidence under `data/pilot/original/`. Do not edit those files. Integrated copies must state their provenance and role. Separate discovery/producers, certificates, verifiers, and run outputs. Machine-dependent timings are logs only, never acceptance values.

A failed proof obligation keeps PROOF open and every later phase locked.
