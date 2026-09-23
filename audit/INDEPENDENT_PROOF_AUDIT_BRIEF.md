# Independent hostile proof-audit brief

Audit the exact theorem in `proof/THEOREM.md` from definitions outward. Treat the imported report and every producer program as potentially wrong. You may use the canonical certificate and standalone verifiers as finite evidence only after understanding exactly what they check.

Required method:

- reconstruct the logical dependency graph rather than following the report rhetorically;
- directly inspect certificate semantics and verifier coverage;
- search for omitted wrap-around, touching-translation, overlap, gap, weight, termination, and first-force cases;
- distinguish closed supersets from exact zero-forcing closures at every use;
- try to construct counterexamples to each lemma before accepting it;
- separately audit finite-reduction completeness and the eight-seed upper forcing sequence;
- assemble the quantified theorem only after all local obligations pass.

Deliverables for the audit session:

1. an obligation-by-obligation verdict for every item in `OPEN_OBLIGATIONS.md`;
2. exact counterexamples or minimal repairs for any failure;
3. a revised readable proof if repairs are needed and successful;
4. an explicit final gate decision: `PROOF_PASS` or `PROOF_BLOCKED`;
5. only if `PROOF_PASS`, update status so LEAN becomes the next active phase. Do **not** begin Lean formalisation in the audit session unless specifically requested after the gate decision.
