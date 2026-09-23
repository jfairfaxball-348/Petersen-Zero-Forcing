# Claim register

| ID | Claim | Evidence at bootstrap | Audit state |
|---|---|---|---|
| C1 | Certificate contains 38 weighted closed strip shapes | Both standalone certificate verifiers reproduced | computationally reproduced; mathematical role pending |
| C2 | Certificate covers exactly 1,591 ordered touching-merge cases | C++ interval enumeration and Python direct-contact generation agree | computationally reproduced; coverage argument pending audit |
| C3 | Weight-7 partition bound is 16; max certified span is 18 | Both certificate verifiers reproduced | computationally reproduced |
| C4 | For `n >= 22`, every `|S| <= 7` has `|cl(S)| <= 16` | Imported written projection/lifting/merging proof + C1–C3 | **pending independent proof audit** |
| C5 | Complete reduced seven-seed scans for every `n=13,...,30` have maxima 18 at 13 and 16 thereafter | C++ and independent Python reproductions | computationally reproduced; reduction completeness pending audit |
| C6 | Eight outer vertices force every `P(n,3)` for relevant `n` | Imported proof and pilot checks | pending proof audit |
| C7 | `Z(P(n,3)) = 8` for every integer `n >= 13` | C4 + finite lower bound + C6 | **not accepted; proof gate open** |
