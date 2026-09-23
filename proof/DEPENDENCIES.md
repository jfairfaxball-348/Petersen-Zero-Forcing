# Candidate proof dependency graph

```text
standard zero-forcing rule + P(n,3) definitions
    |
    +--> finite strip closedness / contact definitions
            |
            +--> checked 38-shape containment certificate
            |       |
            |       +--> weight/size partition bound <= 16
            |
            +--> projection lemma for n >= 22
            +--> contact lifting through cyclic projection
                    |
                    +--> block-merging / termination argument
                            |
                            +--> |cl(S)| <= 16 for n >= 22, |S| <= 7

first-force symmetry reduction
    +--> complete finite reduced scans for n=13,...,21
            +--> no seven-seed zero-forcing set in finite range

explicit eight-seed upper construction
    |
    +--> Z(P(n,3)) <= 8

uniform lower bound + finite lower bound + upper bound
    +--> Z(P(n,3)) = 8 for every n >= 13
```

The certificate check is only one node in this graph. The independent audit must validate every mathematical arrow, especially the projection/lifting/merging and first-force-reduction steps.
