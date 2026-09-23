# Claim register

Audit decision: **PROOF_PASS**.
Audited proof/evidence commit: `08164566d86c7129c5b5b0b8bed9c9a539aa55c0`.

| ID | Claim | Independent audit evidence | Audit state |
|---|---|---|---|
| C1 | Certificate contains 38 admissible weighted closed strip shapes | Canonical certificate inspected directly; all 38 shapes satisfy the cubic closedness predicate; singleton `u_0` and `v_0` shapes have weight 1; span bounds hold | **PASS** |
| C2 | Certificate covers every relevant touching translation | Direct frontier generation and the independent interval `[-span(B)-3, span(A)+3]` enumeration both yield exactly 1,591 ordered cases; sets agree exactly; no missing/extraneous rows | **PASS** |
| C3 | Merge rows give valid closed supersets with admissible weights; partition bound is 16 | Every row's target contains both source blocks after translation and has weight at most the sum; max sizes are `1,2,4,6,8,12,16`; total-weight bounds are `0,1,2,4,6,8,12,16`; max span 18 | **PASS** |
| C4 | For `n >= 22`, every `|S| <= 7` has `|cl(S)| <= 16` | Projection, cyclic contact lifting, merge invariant, termination, separated-union closedness, and closure containment independently proved. Shape 37 fails projected closedness at `n=21`, confirming the cutoff is substantive | **PASS** |
| C5 | The first-force reduced scans suffice for finite lower bounds | Any forcing seven-set has an initial source with exactly two blue neighbours; rotation leaves two source types and all three neighbour-pairs are enumerated. Independent re-enumeration for `n=13,...,21` matches counts and maxima (18 at 13; 16 at 14–21), never `2n` | **PASS** |
| C6 | Eight consecutive outer vertices force every relevant graph | Explicit propagation step audited: six interior outers force spokes, `v_{r+4}` forces `v_{r+7}`, then `u_{r+7}` forces `u_{r+8}`; iterate around outer cycle, then force remaining inner vertices | **PASS** |
| C7 | `Z(P(n,3)) = 8` for every integer `n >= 13` | C4 gives the lower bound for `n>=22`; C5 gives it for `13<=n<=21`; C6 gives the upper bound throughout | **PASS** |
| C8 | Computation is evidence, not the mathematical specification | Producer is excluded from the trust chain; checker logic was inspected and matched to the exact propositions used by the proof | **PASS** |
