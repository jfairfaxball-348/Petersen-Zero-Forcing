# Proof obligations — final audit disposition

Audit decision: **PROOF_PASS**.
Audited proof/evidence commit: `08164566d86c7129c5b5b0b8bed9c9a539aa55c0`.

No proof obligation remains open.

| # | Obligation | Verdict | Independent discharge |
|---:|---|---|---|
| 1 | Definitions and forcing rule | **PASS** | For `n>=13`, the listed neighbours are three distinct vertices. The standard rule is “blue vertex with exactly one white neighbour forces it”; iterative closure is monotone under enlarging the initial blue set. |
| 2 | Certificate closedness | **PASS** | In a cubic graph, “not exactly one neighbour outside” is equivalent to “not exactly two blue neighbours”. Both verifier predicates implement this exactly for every certified vertex; direct re-check passed all 38 shapes. |
| 3 | Contact translation coverage | **PASS** | If normalized spans are `a,b`, contact implies `-b-3 <= t <= a+3`. Filtering that interval by actual intersection/adjacency and independently generating shifts from the left frontier both produce the identical 1,591 ordered keys. |
| 4 | Containment merging | **PASS** | Every one of the 1,591 rows was checked as containment `A union (B+t) subseteq C+q`, with `weight(C) <= weight(A)+weight(B)`; target closedness follows from the separately checked shape table. Exact closure is not used. |
| 5 | Weight accounting and termination | **PASS** | Initial singleton weights sum to `|S|<=7`; each merge does not increase total weight; each merge reduces block count by one; therefore termination occurs after at most `|S|-1` merges. |
| 6 | Projection threshold and wrap-around | **PASS** | For span `w`, projection is injective when `w<n`. A projected neighbour alias would give a same-layer difference divisible by `n` of absolute value at most `w+3`; `n>w+3` forces difference zero. With max span 18 this gives `n>=22`. At `n=21`, shape 37 becomes non-closed, so the threshold is not silently overextended. |
| 7 | Contact lifting | **PASS** | A cyclic intersection/spoke/outer edge/inner edge has a representative difference congruent to `0,0,±1,±3`; shifting one block by a multiple of `n` realizes that exact strip contact. The certificate containment then projects back. No global simultaneous lift is required. |
| 8 | Separated groups / arbitrary gaps / overlaps | **PASS** | Overlap is a contact and is merged. Arbitrary gaps simply leave blocks separate. At termination, blocks are disjoint and nonadjacent in the cycle, independent of cyclic ordering or representative choices. |
| 9 | Closed superset versus exact closure | **PASS** | The proof uses only: if a closed set `U` contains the seed set, no first force can leave `U`; hence `cl(S) subseteq U`. Neither the producer's exact closure nor closure minimality is a premise. |
| 10 | First-force reduction completeness | **PASS** | A nontrivial zero-forcing set must have an initial force. Its source and exactly two of its three neighbours are initially blue. Rotation sends the source to `u_0` or `v_0`; all three neighbour-pairs are enumerated, and the other four vertices are unrestricted. Duplicates cannot remove a case. |
| 11 | Finite cases | **PASS** | Complete reduced scans for each `n=13,...,21` were independently re-enumerated: counts `6*C(2n-3,4)`; maxima 18 for 13 and 16 for 14–21; all are less than `2n`, so no seven-set zero-forces. Monotonicity excludes smaller sets. |
| 12 | Eight-seed upper bound | **PASS** | From eight consecutive outer vertices, the six interior vertices force their spokes; then `v_{r+4}->v_{r+7}` and `u_{r+7}->u_{r+8}`. Iterating colors all outer vertices, which then force any remaining inner vertices. Valid for the theorem range. |
| 13 | Full theorem assembly | **PASS** | Lower bound `Z>=8`: finite scans cover 13–21 and certificate argument covers `n>=22`. Upper bound `Z<=8`: explicit construction covers all `n>=13`. No threshold gap remains. |
| 14 | Evidence / trust boundary | **PASS** | Ordinary C++/Python execution is finite evidence. Producer code is not trusted. The audit inspected checker semantics and proved why each finite check is exactly the proposition used by the mathematical argument. |
