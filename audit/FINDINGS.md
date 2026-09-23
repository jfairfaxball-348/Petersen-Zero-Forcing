# Independent hostile proof audit findings

## Decision

**PROOF_PASS**

The exact theorem
[
Z(P(n,3))=8 quad	ext{for every integer } nge13
]
survived the independent hostile audit.

Audited proof/evidence commit: `08164566d86c7129c5b5b0b8bed9c9a539aa55c0`.

During the audit, repository head advanced once to `e031413ca6114e38b9bd09fdaa579a72e069c6a4` by adding only `meta_data_for_website.json`. A commit comparison confirmed that no theorem, proof, certificate, verifier, search program, or baseline output changed. The mathematical audit therefore remains pinned to `08164566d86c7129c5b5b0b8bed9c9a539aa55c0`, with the metadata-only parent preserved.

## Direct certificate audit

The canonical certificate blob is `719903ea909229247bfc81231e15990265c3d69a`; the standalone verifier blobs are `27c98412a05ace3794a797600c8bc0b75715d09b` (C++) and `e43d1c6e6d6f3bb6b793fdb5bed2f3ff7fdc7fe2` (Python).

An independent re-derivation from the certificate contents found:

- 38 shapes and 1,591 merge rows;
- all 38 shapes satisfy the exact strip closedness predicate;
- the weight counts by level are `2,3,2,3,6,9,13`;
- maximum shape sizes are `1,2,4,6,8,12,16`;
- maximum spans are `0,3,6,9,12,15,18`;
- direct frontier contact generation gives exactly 1,591 ordered contacts;
- the finite interval argument gives the identical 1,591 contacts, with no contact outside the interval;
- no merge row is missing or extraneous;
- every row satisfies containment and the target-weight inequality;
- partition bounds for total weight `0,...,7` are `0,1,2,4,6,8,12,16`.

The certificate producer's exact-closure computation is therefore unnecessary to the proof trust chain.

## Wrap-around falsification attempt

The projection threshold was attacked directly. Certified shape 37 has strip vertices
`v_0,u_3,v_3,u_6,v_6,u_9,v_9,u_12,v_12,u_15,v_15,v_18`.
At `n=21`, the cyclic inner edge joins `v_0` to `v_18`; after projection both `v_0` and `v_18` have exactly one neighbour outside the projected block (their spokes). Thus the projected set is not closed.

At `n=22`, the alias disappears, exactly as the inequality `n > span+3 = 21` predicts. This is an informational boundary witness, not a defect: it confirms why the infinite-strip argument begins at 22 and why 21 must stay in the finite range.

As supplementary stress testing, exhaustive projected contact checks at `n=22,23,29,40` found 1,591 projected contact classes and zero failures to find a certificate-backed strip lift.

## Merge/closure logic

The repeated merge argument uses containment only. Starting from singleton projected shapes, each merge replaces two touching blocks by a projected certified closed superset whose weight is at most the sum. Total weight never exceeds seven and block count strictly decreases.

When no blocks touch, they are pairwise disjoint and nonadjacent. Their union is closed because no vertex gains a blue neighbour from another block. If a closed set `U` contains the seed set, a first force leaving `U` would make its source have exactly one neighbour outside `U`, contradicting closedness. Hence `cl(S) subseteq U`. This is the only closure property required.

## Finite-search audit

The finite-search source blobs are `49cdee253b9bf6d834698b51519a846429cce187` (C++) and `f716a29935108f7323bdb7bad58312c8cacab928` (independent Python reference).

The first-force reduction is complete: any hypothetical zero-forcing seven-set has an initial source with exactly two initially blue neighbours. Rotation reduces the source to one of `u_0,v_0`; all three choices of the two blue neighbours are enumerated, and the remaining four seeds are unrestricted. Enumeration duplicates only add work.

A third, audit-session re-enumeration from the graph definition reproduced the required finite cases:

| n | reduced entries | max closure |
|---:|---:|---:|
| 13 | 53,130 | 18 |
| 14 | 75,900 | 16 |
| 15 | 105,300 | 16 |
| 16 | 142,506 | 16 |
| 17 | 188,790 | 16 |
| 18 | 245,520 | 16 |
| 19 | 314,160 | 16 |
| 20 | 396,270 | 16 |
| 21 | 493,506 | 16 |

Every maximum is strictly below `2n`, so no seven-set zero-forces. Closure monotonicity then excludes smaller seed sets.

## Eight-seed upper bound

Let eight consecutive outer vertices `u_r,...,u_{r+7}` be blue. The six interior outer vertices `u_{r+1},...,u_{r+6}` can force their spokes. Then `v_{r+4}` has `v_{r+1}` and `u_{r+4}` blue, so it forces `v_{r+7}`; now `u_{r+7}` has `u_{r+6}` and `v_{r+7}` blue, so it forces `u_{r+8}`. Iterating advances the eight-outer window until all outer vertices are blue; each remaining inner vertex is then forced by its outer spoke neighbour. This covers the theorem range.

## Issues and severity

- **BLOCKER / MAJOR / MINOR:** none.
- **INFO:** shape 37 is not closed after projection at `n=21`; this validates rather than undermines the stated `n>=22` certificate threshold.
- **INFO:** the repository acquired one metadata-only commit during the audit; commit comparison showed no audited source/evidence change.

No repair to the mathematical argument was required. The PROOF gate is closed as passed; LEAN is the next permitted phase.
