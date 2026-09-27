# Prior-Art / Novelty Audit — Z(P(n,3)) = 8 for n >= 13

Audit date: 2026-09-27

Audit gate decision: **NOVELTY_AUDIT_PASS**

Registered Palomar snapshot audited against:
- Registration: PALOMAR-2026-09-27-000004 v1
- Repository: jfairfaxball-348/Petersen-Zero-Forcing
- Immutable registered commit: 5dd760e79ab33b3fcf2feb93eb37e23509d184ed
- Accepted Lean head: 554f90beb1614a12dca325dd2c02dbad82fe69d5

This file records a literature and public-source novelty audit. It does not modify or supersede the registered Palomar snapshot.

## A. Executive conclusion

The exact mathematical theorem

> For every natural number n >= 13, the zero-forcing number of the generalized Petersen graph P(n,3) is exactly 8

was found in a publicly available proof package that predates this project: the GitHub repository
https://github.com/txmy/pn3_zero_forcing_solution, commit
https://github.com/txmy/pn3_zero_forcing_solution/commit/22fb0292c04dd89e63ac32da663d07260cb84124,
publicly timestamped 2026-07-23T08:51:42Z. Its manuscript proves the stronger identity

floor(Z)(P(n,3)) = ppw(P(n,3)) = Z(P(n,3)) = 8

for every n >= 13, using a recursive minor P(n-3,3) <=_minor P(n,3), the minor-monotone floor/proper-path-width machinery of Barioli et al., and exhaustive hopping-forcing checks for P(13,3), P(14,3), and P(15,3).

Accordingly, this project should **not** claim the first proof of the theorem or the first resolution of Krishnan's Conjecture 5.

A separate complete Lean formalisation was also found in the public TrueTuring repository before this project's accepted Lean head:
https://github.com/the-omega-institute/trureturing/commit/d0e27e959c167a5062b840f1ca34846969252065,
timestamped 2026-09-26T06:35:00Z. It proves an equivalent theorem for the standard generalized Petersen graph and standard zero-forcing rule. The project therefore should **not** claim the first Lean formalisation, first machine-checked proof, or first formal verification of the theorem.

The present project nevertheless has a substantive and defensible contribution. Its lower-bound proof architecture is materially different from both prior public proofs located: it uses a finite strip closed-set certificate (38 certified shapes and 1,591 ordered contact translations), projection to cycles for n >= 22, repeated block merging, and independently certified finite cases for 13 <= n <= 21. No earlier public source using this strip-certificate method was found in the searches conducted. The project also supplies an independent complete Lean formalisation of that different proof architecture and an immutable Palomar-registered mechanically verified snapshot.

The correct publication position is therefore: **an alternative/independent proof and independent Lean formalisation, with Palomar-registered verification**, not priority for the theorem itself.

## B. Exact target theorem audited

Target:
For every natural number n >= 13, Z(P(n,3)) = 8.

The project uses the standard generalized Petersen graph with vertices u_i and v_i, indices modulo n, and edges
u_i u_(i+1), u_i v_i, and v_i v_(i+3).

The authoritative Lean statement is PetersenZeroForcing.zero_forcing_number_eq_eight:
for n : Nat with NeZero n and 13 <= n, Z n = 8.

No broader or weaker theorem was substituted during this audit.

## C. Search methodology and sources searched

Searches included exact and variant queries for:
- "zero forcing generalized Petersen graph"
- "zero forcing number generalized Petersen P(n,3)"
- "P(n,3) zero forcing"
- "generalized Petersen graphs zero forcing number"
- "Z(P(n,3))"
- variants with "generalised", GP(n,3), G(n,3), "Petersen graph", spacing and punctuation variants
- maximum nullity, Colin de Verdiere, minimum rank, proper path-width, minor-monotone floor, hopping, cubic-graph lower bounds
- author/title searches for all directly relevant works
- exact searches for Krishnan's title and arXiv identifier
- GitHub source/code/commit searches for equivalent proofs and formalizations
- thesis, dissertation, institutional-repository, conference, and technical-report style searches.

Sources and indexes checked included arXiv, journal/publisher pages, DOI/Crossref-style records where exposed, Wiley, De Gruyter, JACODESMATH/DergiPark, SciRate, SciX, J-GLOBAL, ResearchGate where useful for document text, general web search, GitHub global source and commit search, conference schedules, and formal-mathematics repositories/catalogue references.

Direct Google Scholar access was unavailable in the search environment, and direct Semantic Scholar access was unreliable. These limitations are recorded below rather than silently converted into a negative finding.

Primary sources were preferred. PDFs and source files were inspected where theorem statements, definitions, proof status, version histories, or references mattered.

## D. Chronological prior-art timeline

| Date | Source | Material result/status | Relationship to target |
|---|---|---|---|
| 2017-09-26 | Sarah F. Gibbons, Young Mathematicians Conference talk, "Zero Forcing and Propagation in Generalized Petersen Graphs" | Title/schedule located; theorem content not located | Potentially related; no target theorem or proof established |
| 2018-02-02 | Alameda et al., Special Matrices | General upper bound Z(P(n,k)) <= 2k+2; selected equality families for other k | Gives Z(P(n,3)) <= 8, not lower bound |
| 2020-05-07 | Rashidi, Shajareh Poursalavati, Tavakkoli | Published claim Z(P(n,3)) = 8 for n >= 12 | Stronger claimed theorem, but lower-bound argument later shown incomplete |
| 2025-08-04 | Bjorkman et al., "Leaky Forcing..." arXiv v1 | Repeats/cites the 2020 P(n,3) value as known | Secondary propagation of flawed claim, not independent proof found |
| 2026-07-13 23:08:36 UTC | Krishnan, arXiv:2607.19412v1 | Corrects n=12; proves upper bound; computes 7 <= n <= 20; states exact n >= 13 theorem as Conjecture 5 | Establishes the target as open in that source |
| 2026-07-23 08:51:42 UTC | txmy/pn3_zero_forcing_solution, commit 22fb029... | Public proof package of stronger floor(Z)=ppw=Z=8 for n >= 13 | Earlier public proof; subsumes target |
| 2026-09-26 06:35:00 UTC | TrueTuring commit d0e27e... | Complete Lean theorem equivalent to Z(P(n,3))=8 for n >= 13 | Earlier public Lean formalisation |
| 2026-09-26 11:41:34 UTC | This project accepted Lean head 554f90... | Complete project Lean formalisation | Independent later formalisation with different proof architecture |
| 2026-09-26 15:13:03 UTC | This project Palomar source head 5dd760... | Registered source snapshot subsequently accepted as PALOMAR-2026-09-27-000004 v1 | Immutable verified project record |

## E. Detailed discussion of directly relevant sources

### E.1 Alameda et al. (2018)

Joseph S. Alameda et al., "Families of graphs with maximum nullity equal to zero forcing number", Special Matrices 6 (2018), 56-67, DOI 10.1515/spma-2018-0006.

**DIRECTLY VERIFIED FACT:** The paper uses the standard generalized Petersen graph convention and proves Z(P(n,k)) <= 2k+2. Setting k=3 gives the target upper bound Z(P(n,3)) <= 8.

**DIRECTLY VERIFIED FACT:** Its equality theorem based on adjacency-eigenvalue multiplicity yields examples such as P(15r,2) and P(24r,5), not a uniform k=3 equality theorem.

**Conclusion:** Important prior art for the upper bound, but it does not supply Z(P(n,3)) >= 8 for all n >= 13.

### E.2 Rashidi, Shajareh Poursalavati, Tavakkoli (2020)

"Computing the zero forcing number for generalized Petersen graphs", J. Algebra Comb. Discrete Struct. Appl. 7 (2020), 183-193, DOI 10.13069/jacodesmath.729465.

**DIRECTLY VERIFIED FACT:** The paper states Theorem 3.6: Z(P(n,3)) = 8 for n >= 12.

**DIRECTLY VERIFIED FACT:** The proof's lower-bound setup provides a much weaker general bound and then makes an informal transition intended to exclude smaller forcing sets.

**AUTHOR/SOURCE CLAIM (Krishnan 2026):** The argument does not rule out seven-vertex forcing sets; P(12,3) in fact has zero-forcing number 7.

**Conclusion:** The 2020 paper is prior art for the *statement* and a purported proof of an even stronger statement, but it is not a sound earlier proof of the audited theorem. A future paper must discuss this correction rather than simply saying the theorem was first conjectured in 2026.

### E.3 Krishnan correction (2026)

Arnav Krishnan, "A correction to the Zero Forcing Number of the Generalized Petersen Graphs P(n,3)", arXiv:2607.19412v1, submitted 2026-07-13.

**DIRECTLY VERIFIED FACT:** Only v1 was located in the arXiv version history as of this audit.

**DIRECTLY VERIFIED FACT:** The paper gives Z(P(12,3)) = 7, proves an eight-vertex upper bound (Proposition 4), reports exhaustive values through n=20, and states as Conjecture 5:
Z(P(n,3)) = 8 for every n >= 13.

**DIRECTLY VERIFIED FACT:** The paper explains that the missing content is a uniform lower bound excluding seven-vertex forcing sets beyond the finite checked range.

**Conclusion:** Krishnan v1 is the correct immediate scholarly provenance for the corrected theorem, but it is not the last public mathematical word before this project because the July 23 GitHub proof package predates this project.

### E.4 txmy public solution package (2026-07-23)

Repository: https://github.com/txmy/pn3_zero_forcing_solution

Commit: https://github.com/txmy/pn3_zero_forcing_solution/commit/22fb0292c04dd89e63ac32da663d07260cb84124

**DIRECTLY VERIFIED FACT:** GitHub timestamps the public commit 2026-07-23T08:51:42Z.

**DIRECTLY VERIFIED FACT:** The English research note and manuscript define the same P(n,3) and standard zero forcing used in the audited theorem and state
floor(Z)(P(n,3)) = ppw(P(n,3)) = Z(P(n,3)) = 8
for every n >= 13.

**DIRECTLY VERIFIED FACT:** The proof package gives:
1. the eight-consecutive-outer-vertex upper bound;
2. a uniform minor P(n-3,3) <=_minor P(n,3) for n >= 16;
3. exhaustive combined standard/hopping checks proving the minor-monotone floor is 8 for P(13,3), P(14,3), P(15,3);
4. propagation to all n >= 13 using minor monotonicity and Barioli et al.'s identification of the relevant parameter with proper path-width.

**DIRECTLY VERIFIED FACT:** The repository contains independent executable verification implementations/logs for its finite calculations and structural checks.

**REASONABLE INFERENCE:** This is a complete public mathematical proof package and therefore constitutes prior public proof of the exact theorem for novelty/priority purposes, even though no peer-reviewed journal publication of this solution was located.

**NOT ESTABLISHED:** Peer review or formal publication of this package.

**Conclusion:** This source defeats a "first proof" or "first resolution" claim for this project.

### E.5 TrueTuring Lean formalisation (2026-09-26)

Repository: https://github.com/the-omega-institute/trureturing

Commit: https://github.com/the-omega-institute/trureturing/commit/d0e27e959c167a5062b840f1ca34846969252065

Lean file at that commit:
https://github.com/the-omega-institute/trureturing/blob/d0e27e959c167a5062b840f1ca34846969252065/D5/S3/Combinatorics/GeneralizedPetersen/ZeroForcingThree.lean

**DIRECTLY VERIFIED FACT:** GitHub timestamps the solving commit 2026-09-26T06:35:00Z, before this project's accepted Lean head at 11:41:34Z.

**DIRECTLY VERIFIED FACT:** The development defines a standard generalized Petersen graph on Bool x Fin n, standard zero forcing, its zero-forcing number, and
claim := for all n : Nat, 13 <= n -> zeroForcingNumber (gp n 3) = 8.
It proves theorem result : claim.

**DIRECTLY VERIFIED FACT:** Its proof architecture differs from the present project: for n >= 14 it uses a first-forcing-sources/external-boundary inequality and a uniform isoperimetric result for ten-vertex sets, while n=13 is handled by explicit forts.

**Conclusion:** The present project is not the first public complete Lean formalisation located. Its contribution is instead an independent formalisation of a different proof architecture.

## F. Comparison table

| Source | Date/version | Result | Range | Type | Status | Relationship |
|---|---|---|---|---|---|---|
| Alameda et al. | 2018 | Z(P(n,k)) <= 2k+2 | general k | upper | proved | Gives <=8 for k=3 |
| Rashidi et al. | 2020 | Z(P(n,3))=8 | n>=12 | equality | claimed proof, later corrected | Stronger statement but proof incomplete |
| Krishnan | arXiv v1, 2026-07-13 | <=8 uniformly; exact finite values; Conj. 5 | n>=13 conjecture, checked to 20 | upper + computational | proved upper / conjectured equality | Immediate scholarly source |
| txmy solution package | 2026-07-23 | floor(Z)=ppw=Z=8 | n>=13 | stronger equality | public proof package | Earlier proof subsuming target |
| TrueTuring | 2026-09-26 | zeroForcingNumber(gp n 3)=8 | n>=13 | equality | Lean machine-checked repository result | Earlier equivalent formalisation |
| Present project | Lean accepted 2026-09-26; Palomar 2026-09-27 | Z(P(n,3))=8 | n>=13 | equality | Lean + Palomar verification | Independent proof/formalisation, different method |

## G. Krishnan version review

As of 2026-09-27, searches of arXiv and independent scholarly indexes located only arXiv:2607.19412v1, submitted 2026-07-13. No v2 or later version was found. Index-page update dates were not treated as arXiv version dates.

The materially relevant v1 position is:
- P(12,3) is a counterexample to the 2020 n>=12 statement;
- eight consecutive outer vertices give an upper bound for the range needed here;
- values through n=20 support the corrected n>=13 conjecture;
- the all-n lower bound remains explicitly open in that preprint.

## H. Earlier literature behind the correction

The principal scholarly chain located is Alameda et al. (2018) -> Rashidi et al. (2020) -> Krishnan (2026).

Alameda et al. supplies the general 2k+2 upper-bound framework. Rashidi et al. state the k=3 equality for n>=12 but do not validly establish the needed lower bound. Krishnan corrects that error, exhibits n=12 as a counterexample, retains/proves the eight-vertex upper construction, performs finite computations, and formulates the corrected all-n statement as Conjecture 5.

A 2017 Young Mathematicians Conference schedule lists Sarah F. Gibbons speaking on "Zero Forcing and Propagation in Generalized Petersen Graphs". No abstract, paper, thesis, repository manuscript, or theorem statement establishing the audited result was located.

## I. Later or independent work found

Two important sources were found between Krishnan v1 and this project's final verified state:

1. txmy/pn3_zero_forcing_solution, publicly committed 2026-07-23, proves a stronger theorem and therefore establishes mathematical prior art for the exact equality.

2. TrueTuring, committed 2026-09-26 at 06:35 UTC, contains a complete Lean formalisation of the exact corrected theorem under equivalent definitions.

No later arXiv/journal paper proving the theorem was found in the searches conducted as of 2026-09-27.

## J. Mathematical novelty assessment

**DIRECTLY VERIFIED FACT:** An earlier public proof package proves the exact theorem and more.

Therefore the theorem itself is **not novel to this project in the sense of first public proof/priority**.

**REASONABLE INFERENCE:** The present project's proof is nevertheless mathematically distinct. Its large-n lower bound uses strip closed sets, a finite certificate of 38 shapes with 1,591 ordered contact translations, a projection threshold, and repeated weight-controlled merging; the finite range is discharged independently.

The appropriate mathematical contribution is an alternative proof with a different structural mechanism, not a first solution.

## K. Formalisation novelty assessment

**DIRECTLY VERIFIED FACT:** TrueTuring's complete Lean result predates this project's accepted complete Lean head on 2026-09-26.

Therefore claims of "first Lean formalisation", "first machine-checked proof", or "first formal verification" are not defensible.

The present project does supply an **independent complete Lean formalisation of a different proof architecture**, and its Palomar registration gives a separately immutable verified snapshot.

## L. Proof-method novelty assessment

No earlier public source using the present project's specific strip closed-set/certificate-merging proof was found.

The July txmy proof uses recursive minors, minor-monotone floor/proper path-width, hopping, and three finite base calculations.

The TrueTuring proof uses first forcing sources, external-boundary/isoperimetric inequalities, bounded gap patterns, and forts.

The present project uses a third architecture: strip closed sets, finite merge certificates, projection to cyclic graphs for n>=22, and finite structural cases below that threshold.

**REASONABLE INFERENCE:** It is defensible to call the proof "new", "alternative", or "independent", provided that the wording is explicitly method-level and qualified by the literature search.

**NOT ESTABLISHED:** Absolute worldwide priority for this proof method.

## M. Recommended publication wording

Defensible wording includes:

> We give an alternative proof that Z(P(n,3))=8 for every n>=13. Our lower-bound argument uses a finite strip closed-set certificate and a projection-and-merging method, and we formalise the complete argument in Lean. The resulting source snapshot is registered and mechanically verified by Palomar as PALOMAR-2026-09-27-000004 v1.

The related-work discussion should explicitly say that:
- Rashidi et al. (2020) stated the stronger n>=12 result, whose lower-bound argument was corrected by Krishnan;
- Krishnan (2026) reformulated the corrected all-n statement as Conjecture 5;
- a public July 23, 2026 GitHub proof package by txmy proves the conjecture by a different minor/proper-path-width argument;
- a separate TrueTuring Lean formalisation was public on September 26, 2026 before this project's accepted Lean head.

A cautious method-priority sentence is also supportable:

> In the sources searched, we found no earlier proof using the strip closed-set certificate and block-merging method developed here.

## N. Claims that should not be made

Do not claim:
- "the first proof" of Z(P(n,3))=8 for n>=13;
- "the first resolution of Krishnan's Conjecture 5";
- that the conjecture remained publicly unsolved until this project;
- "the first Lean formalisation";
- "the first machine-checked proof";
- "the first formal verification";
- "no prior proof exists";
- an unqualified "novel theorem";
- "first Palomar registration" or first registry verification without a complete registry-wide priority check.

Do not omit the 2020 claimed theorem merely because its proof is flawed; it remains important provenance. Do not present it as a valid established proof either.

## O. Bibliography and reproducible links

1. J. S. Alameda, E. Curl, A. Grez, L. Hogben, O. Kingston, A. Schulte, D. Young, M. Young, "Families of graphs with maximum nullity equal to zero forcing number", Special Matrices 6 (2018), 56-67. DOI: https://doi.org/10.1515/spma-2018-0006

2. S. Rashidi, N. Shajareh Poursalavati, M. Tavakkoli, "Computing the zero forcing number for generalized Petersen graphs", J. Algebra Comb. Discrete Struct. Appl. 7 (2020), 183-193. DOI: https://doi.org/10.13069/jacodesmath.729465

3. A. Krishnan, "A correction to the Zero Forcing Number of the Generalized Petersen Graphs P(n,3)", arXiv:2607.19412v1 (2026). https://arxiv.org/abs/2607.19412v1 ; DOI locator: https://doi.org/10.48550/arXiv.2607.19412

4. F. Barioli et al., "Parameters Related to Tree-Width, Zero Forcing, and Maximum Nullity of a Graph", Journal of Graph Theory 72 (2013), 146-177. DOI: https://doi.org/10.1002/jgt.21637

5. R. Davila, T. Kalinowski, S. Stephen, "A lower bound on the zero forcing number", arXiv:1611.06557. https://arxiv.org/abs/1611.06557

6. Bjorkman et al., "Leaky Forcing: Extending Zero Forcing Results to a Fault-Tolerant Setting", arXiv:2508.02564v1. https://arxiv.org/abs/2508.02564

7. txmy, "Complete solution package for the zero-forcing conjecture on P(n,3)", public GitHub repository: https://github.com/txmy/pn3_zero_forcing_solution ; audited commit: https://github.com/txmy/pn3_zero_forcing_solution/commit/22fb0292c04dd89e63ac32da663d07260cb84124

8. The Omega Institute / TrueTuring, Lean formalisation of Krishnan's Conjecture 5, audited commit: https://github.com/the-omega-institute/trureturing/commit/d0e27e959c167a5062b840f1ca34846969252065 ; theorem source: https://github.com/the-omega-institute/trureturing/blob/d0e27e959c167a5062b840f1ca34846969252065/D5/S3/Combinatorics/GeneralizedPetersen/ZeroForcingThree.lean

9. Young Mathematicians Conference 2017 programme, Sarah F. Gibbons, "Zero Forcing and Propagation in Generalized Petersen Graphs": https://ymc.math.osu.edu/2017/program.php

## P. Unresolved searches and uncertainties

1. The 2017 Gibbons conference talk is clearly topically relevant, but no accessible abstract/manuscript/theorem text was located. It is therefore not evidence of an earlier proof.

2. Direct Google Scholar access was unavailable and Semantic Scholar access was unreliable in the audit environment. Multiple other scholarly indexes and primary-source searches were used instead.

3. The txmy proof package is public and detailed, but no peer-reviewed publication of that solution was located. Its public-priority relevance is clear; its publication/review status is not.

4. TrueTuring describes its result as machine-checked and exposes the Lean source and theorem. This audit establishes public source and theorem equivalence; it does not independently reproduce the entire TrueTuring build environment.

5. No exhaustive, registry-wide uniqueness proof for Palomar or every formalization registry was possible from the accessible search interfaces. The project may accurately state its own Palomar registration, but should not claim it was the first registration.

6. Absence of other sources from the searches is not proof of a worldwide negative. All priority language should remain bounded to the sources searched.

## Q. Final gate decision

**NOVELTY_AUDIT_PASS**

Reason: the literature/public-source audit is sufficiently thorough to support careful manuscript positioning. It found prior public mathematical and formalization work, so several strong priority claims must be abandoned, but it did **not** invalidate the theorem, the project's proof, or the value of the project. A clear remaining contribution is established:

- an independent proof of the exact theorem;
- a materially different strip closed-set/certificate-merging lower-bound method;
- an independent complete Lean formalisation of that proof architecture;
- an immutable Palomar-registered mechanically verified snapshot.

The literature-audit gate itself is complete. After reviewing these findings, the project owner elected on 2026-09-27 **not to enter the RESEARCH PAPER or ARXIV phases**. The project is closed and retained only as an alternative formalisation and verification method.

## R. Post-audit project disposition

**PROJECT COMPLETE — NO PUBLICATION PLANNED.**

The earlier public mathematical proof and earlier independent Lean formalisation make theorem/formalisation priority unavailable. The project will therefore stop at this stage. Its preserved role is an alternative Lean formalisation/verification route, including the immutable Palomar registration `PALOMAR-2026-09-27-000004 v1`. No research paper or arXiv submission will be prepared from this project.
