# Roadmap and phase gates

## 1. PROOF — complete, gate passed

Decision: **PROOF_PASS** on 2026-09-23.

The hostile audit checked the exact theorem for every integer `n >= 13`, directly inspected the canonical certificate and both standalone verifiers, independently matched all 1,591 ordered touching translations and containment/weight witnesses, audited projection and cyclic contact lifting, proved the repeated-merge invariant and termination, audited the first-force finite reduction and the cases `n=13,...,21`, and checked the eight-seed upper construction and final assembly.

Audited proof/evidence commit: `08164566d86c7129c5b5b0b8bed9c9a539aa55c0`.

No substantive proof obligation remains open. If later formalisation exposes a genuine mathematical gap, PROOF must be reopened rather than patched around.

## 2. LEAN — active, gate open

Formalise the audited theorem with the exact quantifier and definitions in `proof/`. Connect executable evidence to mathematical propositions rather than importing producer assumptions. Pin the toolchain during this phase.

Completion requires a clean build, no `sorry`, no added axioms, no private `native_decide` axioms, kernel-checked external evidence, and a transitive axiom audit permitting only `propext`, `Classical.choice`, and `Quot.sound` in final dependencies.

## 3. PALOMAR — locked by LEAN

After Lean and its trust audit pass, check the then-current Palomar requirements, package a faithful challenge and reproducible submission, and separately record packaging, submission, successful mechanical verification, and actual registry registration.

## 4. PAPER — locked by PALOMAR

After Palomar verification **and registration**, develop the manuscript from the audited proof and formalisation. Refresh novelty checking, preserve attribution, state limitations, and include reproducibility material.
