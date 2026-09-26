# Palomar phase — in progress

The Lean formalisation gate passed at commit `554f90beb1614a12dca325dd2c02dbad82fe69d5`. This directory records the Palomar stage without changing the mathematical claim or treating computation as a replacement for the proof.

## Fixed mathematical scope

The submitted result is exactly:

> For every natural number `n >= 13`, the zero-forcing number of the generalized Petersen graph `P(n,3)` is `8`.

The authoritative formal theorem is `PetersenZeroForcing.zero_forcing_number_eq_eight`.

## Architecture

Palomar currently requires Lean `v4.35.0-rc2` or newer. The audited Lean proof was completed under Lean `v4.19.0`, so Palomar compatibility is isolated on branch `palomar`, created directly from the verified Lean head above.

This branch ports the same proof development to Lean `v4.35.0-rc2` with Mathlib `v4.35.0-rc2`. The original `lean-formalisation` branch and draft PR #2 remain untouched. Any source edits required by the newer toolchain must be mechanical compatibility edits only; they must not weaken the theorem or alter the proof architecture.

The intended Palomar package will add a small trusted `Challenge.lean`, a `Solution.lean` wrapper around the established theorem, and `comparator.json`. Computational baseline checks remain supplementary evidence only.

## State separation

- packaging: in progress
- compatibility build: pending
- Comparator verification: pending
- Palomar submission: not submitted
- Palomar registration: not registered
- research-paper phase: locked

## Known intake blocker

The repository currently has no project-wide root licence. Existing provenance documentation explicitly records that no licence should be inferred from imported material. Current Palomar intake requires exactly one detectable root licence whose SPDX identifier matches `project.license` in `formalization.yaml`.

No licence is added by this compatibility work. Selecting and granting a project licence is a maintainer/legal decision and must be resolved before a Palomar submission can pass intake.

## Reproducibility

The compatibility workflow `.github/workflows/palomar.yml` checks that the committed Lake manifest is reproducible, builds the unchanged headline theorem under the Palomar-supported toolchain, reruns the transitive axiom audit, and guards production theorem sources against prohibited shortcuts.
