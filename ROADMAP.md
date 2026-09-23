# Roadmap and phase gates

## 1. PROOF — active, gate open

Required for completion: a readable proof of the exact theorem and an **independent hostile audit** that directly checks the mathematical meaning of the computational evidence. The audit must resolve every item in `audit/OPEN_OBLIGATIONS.md`, including graph/forcing definitions; certificate closedness and complete contact-translation coverage; containment merging, weight accounting and termination; projection threshold and cyclic wrap-around; separated groups, arbitrary gaps and overlaps; closed-superset versus exact-closure logic; completeness of the first-force reduction; finite cases `n=13,...,21`; the eight-seed upper bound; and full theorem assembly.

Any failed or unresolved obligation keeps this gate open.

## 2. LEAN — locked by PROOF

After PROOF passes, formalise the audited theorem with full quantifiers and connect executable checks to mathematical definitions. Pin the toolchain then, not before. Completion requires a clean build, no `sorry`, no added axioms, no private `native_decide` axioms, kernel-checked external evidence, and a full transitive axiom audit permitting only `propext`, `Classical.choice`, and `Quot.sound` in the final theorem's dependencies.

## 3. PALOMAR — locked by LEAN

After Lean and its trust audit pass, check the then-current Palomar requirements, package a faithful challenge and reproducible submission, and separately record packaging, submission, successful mechanical verification, and actual registry registration. Record the exact verified commit and registry evidence.

## 4. PAPER — locked by PALOMAR

After Palomar verification **and registration**, develop the research manuscript from the audited proof and formalisation. Refresh novelty checking, preserve attribution, state limitations, and include reproducibility material. Keep manuscript readiness, arXiv submission, and acceptance as distinct statuses.
