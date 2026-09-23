# Session handoff — bootstrap complete

## Read first

1. `README.md`
2. `PROJECT_STATUS.json`
3. `proof/THEOREM.md`
4. `proof/CANDIDATE_PROOF.md`
5. `audit/OPEN_OBLIGATIONS.md`
6. `audit/INDEPENDENT_PROOF_AUDIT_BRIEF.md`
7. `docs/VERIFICATION_PROTOCOL.md`
8. `docs/SOURCE_AND_PROVENANCE.md`

## Current evidence

The imported pilot verdict is `PILOT_POSITIVE`. Its preserved archive manifest passed in full before integration. Bootstrap reproduction confirmed the certificate hash, 38 shapes, 1,591 ordered touching merges, finite reduced scans for exactly `n=13,...,30`, 14,271,318 reduced entries per implementation, maximum closure 18 at `n=13`, and maximum closure 16 for every `n=14,...,30`.

The computational baseline is therefore reproduced. This does **not** accept the mathematical proof.

## Unresolved obligations

Every proof-audit obligation in `audit/OPEN_OBLIGATIONS.md` is pending. In particular, the certificate producer is not trusted; the audit must explain why the direct verifier checks plus the handwritten projection/merging/finite-reduction arguments establish the quantified theorem.

## Phase state

PROOF is active and open. LEAN, PALOMAR, and PAPER are locked.

## Next permitted task

Perform an independent hostile mathematical proof audit. Do not begin Lean implementation in that session unless and until the proof gate is explicitly recorded as passed after the audit.
