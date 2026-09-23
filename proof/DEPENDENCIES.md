# Audited proof dependency account

Audit decision: **PROOF_PASS** (2026-09-23).
Audited proof/evidence commit: `08164566d86c7129c5b5b0b8bed9c9a539aa55c0`.

```text
P(n,3) graph definition + standard zero-forcing rule
    |
    +--> monotonicity of forcing closure
    |
    +--> strip definitions: closed set, translation, span, contact
            |
            +--> canonical 38-shape finite certificate
            |       +--> all shapes closed
            |       +--> both singleton layers, weight 1
            |       +--> complete 1,591 ordered contact translations
            |       +--> containment witnesses with target weight <= sum
            |       +--> max shape sizes f(1..7) = 1,2,4,6,8,12,16
            |       +--> partition bound <= 16 for total weight <= 7
            |       +--> max span 18
            |
            +--> projection lemma: span w and n > w+3 preserves
            |    injectivity, neighbour membership, and closedness
            |       +--> every certified block projects closed for n >= 22
            |
            +--> cyclic contact-lifting lemma
                    +--> every touching projected pair has touching strip lifts
                    +--> certificate containment projects back to the cycle
                            |
                            +--> repeated block merge
                                    +--> total weight never increases
                                    +--> block count decreases each merge
                                    +--> terminal blocks are disjoint/nonadjacent
                                    +--> terminal union is closed
                                    +--> closure(S) lies in terminal union
                                    +--> |cl(S)| <= 16 for n >= 22, |S| <= 7

first-force lemma for any hypothetical forcing seven-set
    +--> source has exactly two initially blue neighbours
    +--> rotate source to u_0 or v_0
    +--> enumerate 3 neighbour-pairs and 4 remaining seeds
    +--> complete reduced scans for n=13,...,21
            +--> no seven-set zero-forces in the finite range
            +--> monotonicity excludes all smaller seed sets

eight-consecutive-outer-vertices propagation lemma
    +--> u_{r+1},...,u_{r+6} force their spokes
    +--> v_{r+4} forces v_{r+7}
    +--> u_{r+7} forces u_{r+8}
    +--> iterate until all outer vertices are blue
    +--> outer vertices force all remaining spokes
            +--> Z(P(n,3)) <= 8 for n >= 13

uniform lower bound for n >= 22
+ finite lower bound for 13 <= n <= 21
+ upper bound for n >= 13
    +--> Z(P(n,3)) = 8 for every integer n >= 13
```

## Computational trust boundary

The certificate producer in `research/` is not a proof dependency. The proof depends on the finite certificate *propositions* checked directly from `certificates/merge_certificate.txt` by the standalone verifiers and re-audited mathematically. The finite-search programs are trusted as ordinary executable finite enumeration evidence only after the first-force reduction is proved independently.

For Lean, prefer formal definitions of the graph, forcing rule, closedness, projection, contact, and block invariant, then connect finite certificate/search data to those definitions with kernel-checkable evidence. Do not formalise producer discovery logic as a premise.
