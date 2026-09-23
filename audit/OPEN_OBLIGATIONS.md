# Open proof obligations

All items are pending at bootstrap. A single unresolved or failed item keeps PROOF open.

1. **Definitions and forcing rule.** Verify graph conventions, indexing, cubic-neighbour statements for the quantified range, and exact use of the standard zero-forcing rule/closure.
2. **Certificate closedness.** Check that the direct closedness test matches the mathematical definition and applies to every certified shape.
3. **Contact translation coverage.** Prove that every relevant touching translation is captured; audit both the finite interval argument and the independent direct-generation argument.
4. **Containment merging.** Verify that each certificate row gives a closed superset containing both touching blocks, with correct translation and weight inequality; do not trust the producer.
5. **Weight accounting and termination.** Prove repeated merging cannot violate total weight `<=7`, terminates, and yields the claimed collection of separated closed supersets.
6. **Projection threshold and wrap-around.** Audit injectivity and neighbour correspondence for projected strip shapes, the `n > span+3` threshold, all cyclic boundary cases, and why maximum span 18 gives `n>=22`.
7. **Contact lifting.** Check that any touch after cyclic projection admits integer representatives that touch in the strip and that the certificate merge projects as required.
8. **Separated seed groups / arbitrary gaps / overlaps.** Audit the treatment of initially separated blocks, arbitrary cyclic gaps, block overlaps, merges that alter representatives, and all cases of cyclic ordering.
9. **Closed superset versus exact closure.** Ensure every argument only needs containment in a closed set, and never silently substitutes an exact closure property not certified by the verifiers.
10. **First-force reduction completeness.** Prove that every hypothetical zero-forcing seven-set has a first forcing vertex; rotation reduces it to `u_0` or `v_0`; and the source plus the correct two neighbours must already lie in the initial seven-set. Account for duplicates in enumeration without losing completeness.
11. **Finite cases.** Use the reproduced scans to justify at least `n=13,...,21`; verify the relationship between maximum closure `< 2n` and failure to zero-force.
12. **Eight-seed upper bound.** Audit the forcing sequence from `u_0,...,u_7`, its propagation, small-index/cyclic cases, and exact range needed for the theorem.
13. **Full theorem assembly.** Check lower and upper bounds cover every integer `n>=13` with no gap or inconsistent threshold.
14. **Evidence/trust boundary.** Explain precisely what is trusted in ordinary C++/Python checking and why two implementations are falsification/certificate evidence rather than a substitute for the mathematical audit.
