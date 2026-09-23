# Session handoff — Lean formalisation in progress

## Gate state

The independent mathematical proof audit remains passed.

- audit-record commit: `a159d3415531a6f24770d56039bb4543ed455633`
- exact audited proof/evidence state: `08164566d86c7129c5b5b0b8bed9c9a539aa55c0`
- target theorem: for every integer `n >= 13`, `Z(P(n,3)) = 8`

Phase order remains:

`PROOF -> LEAN -> PALOMAR -> PAPER`

Current gates:

- PROOF: passed
- LEAN: open/in progress
- PALOMAR: locked by LEAN
- PAPER: locked by PALOMAR

Do not start Palomar or paper work.

## Lean branch and PR

Formalisation branch: `lean-formalisation`.

Draft PR: #2, **Lean formalisation of Z(P(n,3)) = 8**.

Pre-handoff implementation head: `8cfa7c67ed1238e672530a887b6da6cde70708b9`.

Lean is pinned to Lean 4.19.0 with mathlib v4.19.0. A generated `lake-manifest.json` records the resolved dependency graph.

At handoff, baseline verification on the implementation head was successful. The Lean workflow for that head was still pending, so the LEAN gate has **not** passed and no trust/axiom audit has been accepted.

## Formalisation implemented so far

The branch now contains:

- `PetersenZeroForcing/Core.lean`: vertices of `P(n,3)`, neighbours, one forcing round, bounded forcing closure, and `IsZeroForcing`.
- `PetersenZeroForcing/Strip.lean`: infinite-strip vertices, strip neighbours, closedness, translations, contact, and projection.
- `PetersenZeroForcing/Forcing.lean`: closed-superset forcing invariant, closure containment, definition of the zero-forcing number `Z`, and basic extremal lemmas.
- `PetersenZeroForcing/CertificateData.lean`: the 38 canonical certificate shapes and 1,591 merge rows imported as Lean data.
- `PetersenZeroForcing/Certificate.lean`: executable certificate checks using kernel reduction, without `native_decide`.
- `PetersenZeroForcing/CertificateLemmas.lean`: extraction of mathematical closedness, coordinate bounds, size/weight facts, and merge witnesses from checked certificate data.
- `PetersenZeroForcing/Projection.lean`: the `n >= 22` projection threshold and preservation of strip closedness under projection.
- `PetersenZeroForcing/Contact.lean`: the certified touching-shift bound `[-21,21]` and conversion of strip contact into a certificate merge witness.
- `PetersenZeroForcing/Rotation.lean`: rotational symmetry infrastructure for cyclic first-force normalization.
- `PetersenZeroForcing/FiniteScan.lean`: the start of a kernel-only reduced finite scan; bases are generated as a source plus two neighbours, and an initial `n=13` check is present.

No `sorry` or intentional axiom was introduced by design. This must still be confirmed by a successful build and final transitive axiom audit.

## Important trust boundary

Preserve the audited distinction between **certificate containment** and **exact zero-forcing closure**.

Do not trust producer code or imported search output as theorem evidence. Any finite computation used in the final theorem must reduce to the mathematical Lean definitions and be accepted by the kernel. Do not use `native_decide` or any hidden native-evaluation axiom.

The permitted final theorem dependencies remain only:

- `propext`
- `Classical.choice`
- `Quot.sound`

## Next work

1. Check the newest GitHub Actions run on PR #2 and repair every Lean compilation error until the current branch builds cleanly.
2. Validate the canonical certificate checks and their extracted lemmas under the kernel.
3. Complete the first-force reduction using the rotation formalisation, then extend the finite kernel-checked scan to every `n=13,...,21`.
4. Formalise cyclic contact lifting, the block-merging invariant, strict termination, and the resulting lower bound for `n >= 22`.
5. Formalise the eight-consecutive-outer-vertex upper construction.
6. Assemble the exact quantified theorem `forall n >= 13, Z(P(n,3)) = 8`.
7. Run a full transitive axiom/trust audit. Only after the build and audit pass may LEAN be marked passed or Palomar be unlocked.

If Lean exposes a genuine mathematical gap, reopen PROOF and record the exact issue rather than weakening the theorem.
