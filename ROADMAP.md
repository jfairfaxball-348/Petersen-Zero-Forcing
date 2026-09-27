# Roadmap and phase gates

Project status: **COMPLETE**

The project is closed after the prior-art / novelty audit. It is retained as an alternative formalisation and verification method; no research paper or arXiv submission is planned.

## 1. PROOF — complete, passed

Decision: **PROOF_PASS** on 2026-09-23.

Audited proof/evidence commit:
`08164566d86c7129c5b5b0b8bed9c9a539aa55c0`.

The exact theorem `Z(P(n,3)) = 8` for every `n >= 13` survived the mathematical audit.

## 2. LEAN — complete, passed

The exact theorem was formalised in Lean.

Final accepted Lean head:
`554f90beb1614a12dca325dd2c02dbad82fe69d5`.

The final trust audit permits only the expected axioms `propext`, `Classical.choice`, and `Quot.sound`.

## 3. PALOMAR — complete, passed and registered

Registration:
**PALOMAR-2026-09-27-000004 v1**

Immutable registered commit:
`5dd760e79ab33b3fcf2feb93eb37e23509d184ed`.

Authoritative verification run:
`36253833547`.

The registered `palomar` snapshot is immutable.

## 4. PRIOR-ART / NOVELTY AUDIT — complete

Audit branch:
`prior-art-novelty-audit-2026-09-27`

Audit commit:
`aacf9f1d292b41940b0c2c6fa2d74150d963bcbf`

The audit found:
- an earlier public proof of the exact theorem;
- an earlier independent Lean formalisation.

Accordingly, the project does not claim novelty or priority for the theorem or its formalisation.

## 5. PAPER — not pursued

The paper phase was intentionally not entered after the prior-art findings.

## 6. ARXIV — not pursued

No arXiv submission is planned.

## Final disposition

The repository remains public as a completed alternative formalisation and verification method for the theorem. No further phase is active.
