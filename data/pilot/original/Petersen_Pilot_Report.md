# Petersen pilot — result and proof

Date: 23 September 2026  
**Verdict: PILOT_POSITIVE**

The pilot produced a checked, computer-assisted uniform lower-bound argument.
For every integer **n ≥ 22**, every set of at most seven vertices of P(n,3)
has zero-forcing closure of size at most **16**. The argument uses 38 finite
closed shapes and a certificate covering all 1,591 ordered touching merges.
Two standalone programs checked that certificate without relying on the
discovery program or simulating its closure algorithm.

Complete finite searches cover 13 ≤ n ≤ 30. The maximum seven-seed closure
is 18 at n=13, and 16 at every n from 14 through 30. Combining the finite
cases with the uniform lemma gives

\[
 |\operatorname{cl}_{P(n,3)}(S)|\le
 \begin{cases}18&n=13,\\16&n\ge14,\end{cases}
 \qquad |S|\le7.
\]

Consequently Z(P(n,3)) ≥ 8 for all n ≥ 13. Together with the established
eight-vertex upper bound, this yields **Z(P(n,3)) = 8 for every n ≥ 13**
at the ordinary computer-assisted proof level described below.

This is a positive research pilot, with a concrete proof and checked finite
certificate. It has **not** been independently reviewed by another researcher,
formalised in Lean, verified by Palomar, or submitted for publication. The two
verification implementations were written and run in this session by the same
assistant; they are not independent human or agent audits. A hostile proof
audit is the next gate before treating this as a finished research result.

## 1. Scope and source check

The target is Conjecture 5 in Arnav Krishnan's July 2026 preprint,
[A correction to the Zero Forcing Number of the Generalized Petersen Graphs
P(n,3)](https://arxiv.org/html/2607.19412v1). Its Proposition 4 proves the
upper bound; the conjecture asks for the uniform lower bound. The earlier
[2020 article, Theorem 3.6](https://dergipark.org.tr/tr/download/article-file/1078628)
does not justify its exclusion of seven-vertex starting sets. The correction
exhibits a failure at n=12. The preprint and its current abstract were checked,
and refreshed searches by author, title, arXiv identifier, and conjecture
notation found no later resolution. This does not exclude unpublished or
unindexed work.

The supplied archive's five SHA-256 checksums passed. Its C++ outputs were
reproduced exactly, excluding timing fields, and its Python verification
passed. The new cyclic searches stopped at n=30. The supplied reproduction
also repeats its original single-witness upper-bound checks through n=100;
these are not added exhaustive searches. No repository or Lean project was
created.

## 2. Definitions

P(n,3) has vertices u_i,v_i, with indices modulo n, and edges
u_i u_(i+1), u_i v_i, v_i v_(i+3). Throughout the proof n ≥ 13, so every
vertex has three distinct neighbours.

The **infinite strip H** uses the same rules with indices in the integers:

\[
 N_H(u_i)=\{u_{i-1},u_{i+1},v_i\},\qquad
 N_H(v_i)=\{v_{i-3},v_{i+3},u_i\}.
\]

A blue set C is **closed** if no vertex in C has exactly one neighbour outside
C. Thus a forcing process starting inside C stays inside C: a first force
leaving C would contradict this condition. For a cubic graph, closedness is
equivalent to every blue vertex having a number of blue neighbours other than
two.

A finite nonempty strip set has **span** equal to its largest column index
minus its smallest. Translation changes both layers' indices by the same
integer. Two sets **touch** if they intersect or have an edge between them.

## 3. The finite certificate

Each of 38 closed strip shapes has a positive integer weight from 1 to 7.
Weights are bookkeeping bounds used in the proof; their mathematical
minimality is unnecessary. The file `results/merge_certificate.txt` records
the shapes and the witnesses for the following four facts.

1. The family includes {u_0} and {v_0}, both with weight 1.
2. Every shape is closed. Every weight-k shape has span at most 3(k−1).
3. The maximum size f(k) of a weight-k shape is given in the table below.
4. For any two shapes A,B whose weights sum to at most 7, and every integer
   translation t for which A and B+t touch, the certificate supplies a shape C
   and translation q such that A ∪ (B+t) ⊆ C+q, with weight(C) at most
   weight(A)+weight(B).

| Weight k | Shapes | Maximum size f(k) | Maximum span |
|---:|---:|---:|---:|
| 1 | 2 | 1 | 0 |
| 2 | 3 | 2 | 3 |
| 3 | 2 | 4 | 6 |
| 4 | 3 | 6 | 9 |
| 5 | 6 | 8 | 12 |
| 6 | 9 | 12 | 15 |
| 7 | 13 | 16 | 18 |

The word "every" in condition 4 has a finite, checked meaning. Normalize A
and B to have minimum column zero, with spans a and b. A contact implies

\[
 -b-3\le t\le a+3,
\]

because the largest edge displacement is three columns. The C++ verifier
checks every integer in this interval, tests actual intersection/adjacency,
and requires a valid containment witness for each contact. The Python verifier
independently generates contact translations from the vertices and their
neighbours. They agree on exactly **1,591 ordered contact cases**. Both reject
missing or extraneous certificate cases and check every target's weight and
containment. Targets are already checked closed by condition 2.

This is an absorption certificate: the proof needs a small closed superset
for each merge. It does not require a claim that the producer found every
possible exact closure or every possible forcing history. Exact closure
calculation was used to discover suitable shapes and witnesses; the two
standalone certificate verifiers do not use that calculation.

Finally, a finite partition calculation gives

\[
 \max_{k_1+\cdots+k_r\le7}\sum_{j=1}^r f(k_j)=16,
 \qquad k_j\ge1.
\]

Both verifiers check this calculation. The corresponding bounds for total
weights 0,1,...,7 are 0,1,2,4,6,8,12,16.

## 4. Projection lemma: closed shapes survive cyclic wrap-around

**Lemma.** If a finite closed strip set C has span w and n > w+3, its image
π_n(C) in P(n,3) is closed and has |C| vertices, provided n ≥ 7.

**Proof.** Projection is injective on C because w<n. Fix a vertex x in C and
one of its three strip neighbours y. Projection maps these three distinct
neighbours bijectively to the three neighbours of π_n(x).

If π_n(y) lies in π_n(C), there is a vertex z in C of the same layer as y,
with column difference y−z divisible by n. Its absolute value is at most
w+3<n, so that difference is zero. Thus y belongs to C. The converse is
immediate. The number of neighbours outside C at x therefore equals the
number outside π_n(C) at π_n(x), which is not one. This holds for every x.
∎

Every certified shape has span at most 18. Hence **all its translates project
to closed sets for every n ≥ 22**. This explicitly rules out new interactions
across a cyclic boundary inside a certified block.

## 5. Contact lifting lemma

**Lemma.** If two translated projected shapes touch in P(n,3), one can choose
integer representatives of their translations so that the corresponding
strip translates touch as well. A certificate merge for those representatives
then covers their union after projection.

**Proof.** Fix an intersecting vertex, or an edge witnessing contact. After
translating the first shape to A, choose vertices a in A and b in B mapping
to the endpoints of this contact. If they coincide, adjust the translation
of B by a multiple of n so that b has exactly a's index and layer. For a
spoke do the same with the opposite layer. For a same-layer edge, choose the
appropriate signed step, ±1 on the outer layer or ±3 on the inner layer,
and adjust the translation of B by a multiple of n so its endpoint is that
strip neighbour of a. Such an adjustment preserves the projected shape.

The resulting integer translation is a contact translation included in
condition 4. Project its certified containment A ∪ (B+t) ⊆ C+q and translate
back. This covers the original cyclic union. ∎

The argument does not place a global cut between the seeds, bound their
initial gaps, or assume that cyclic components have consistent simultaneous
lifts. Only the two blocks being merged need the representatives just
constructed. Every new block again has its own certified strip shape.

## 6. Uniform seven-seed bound

**Theorem.** For every n ≥ 22 and every S ⊆ V(P(n,3)) with |S|≤7,
|cl(S)|≤16.

**Proof.** The empty set is immediate. Otherwise start with one translated
projected singleton block for each vertex of S, all of weight one. The union
contains S and the sum of the weights is at most seven.

While two blocks touch, apply the contact lifting lemma and replace those
two blocks by the projected certified covering shape. Its weight is at most
the sum of their weights. Thus the union can only grow, still contains S,
and the total weight remains at most seven. Each step reduces the number of
blocks by one, so the process terminates after at most |S|−1 merges.

At termination the blocks are pairwise disjoint and have no edges between
them. Each block is closed by the projection lemma. Their union U is closed:
for a vertex in one block, adding the other blocks has not changed which of
its neighbours are blue. Consequently cl(S)⊆U. The partition calculation
from Section 3 gives

\[
 |\operatorname{cl}(S)|\le |U|
 \le \sum_j f(k_j)\le16.
\]

This proves the theorem. ∎

The construction also supplies a fort argument: V(P(n,3))\U is nonempty and
disjoint from S, and no vertex outside that complement has exactly one
neighbour in it. Arbitrarily large gaps between seeds cause no difficulty;
blocks with no contact remain separate in the terminal closed union.

## 7. Finite cases and the upper bound

A seven-set with a possible first force contains the source and two of its
three neighbours. Rotate the source to u_0 or v_0. For each source type choose
one of the three neighbour pairs, and choose the other four seed vertices
from the remaining 2n−3 vertices. This gives a complete search with
6·binomial(2n−3,4) entries, including duplicates. A seven-set without a first
force is already closed, of size seven, so it cannot exceed the reported
maxima. Monotonicity extends upper bounds on closure size to smaller sets.

| n | Entries checked by each implementation | Maximum seven-seed closure |
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
| 22 | 607,620 | 16 |
| 23 | 740,460 | 16 |
| 24 | 893,970 | 16 |
| 25 | 1,070,190 | 16 |
| 26 | 1,271,256 | 16 |
| 27 | 1,499,400 | 16 |
| 28 | 1,756,950 | 16 |
| 29 | 2,046,330 | 16 |
| 30 | 2,370,060 | 16 |

Each implementation checked **14,271,318 entries** in this extension. C++
uses bitmasks and sequential forces; Python uses ordinary sets and simultaneous
rounds. The two methods agreed at every size. The smaller n=11 and n=12
positive controls from the original bundle also reproduced.

The proof needs the finite cases only for 13≤n≤21. There the maximum closure
is less than 2n. For n≥22 the uniform theorem gives the same strict inequality.
Hence no set of at most seven vertices forces any P(n,3) with n≥13.

For completeness, the published upper construction can be summarized as
follows. Start with u_0,...,u_7. The six interior outer vertices force their
spoke partners; v_4 can then force v_7, allowing u_7 to force u_8. Rotation
and closure monotonicity extend the run around the entire outer cycle, after
which every inner vertex can be forced. This works for n≥9 and proves Z≤8.

Combining these bounds establishes the stated computer-assisted conclusion.
The original bundle's stronger working hypothesis (closure≤16 for n≥20)
also follows, and the finite checks extend its threshold to n≥14.

## 8. Verification boundary and decision

The uniform argument depends on a finite list of integer coordinates,
closedness checks, containment checks, and the proved projection/merging
lemmas. Its finite certificate has no external solver dependency. The two
certificate checkers use separate implementations and different contact
enumerations. Their common input is the certificate; its author is not part
of the logical trust requirement. Ordinary runtimes, compiler behaviour,
hardware, and the correctness of the checking programs remain trusted.

The handwritten proof received an internal check for omitted cyclic
adjacencies, initially separated seeds, overlap of blocks, termination,
budget accounting, and the distinction between a closed superset and an
exact closure. No additional person or agent audited it. Neither verifier is
a Lean kernel checker, and the finite search completeness argument also
remains an ordinary mathematical proof.

This satisfies the pilot's positive gate: **a concrete uniform lemma with a
checked proof and a small independent-checking target**. The output goes
beyond numerical confirmation and addresses every cyclic size through the
projection lemma. No missing resource prevented completion.

The next session should audit Sections 3–7 and the certificate from scratch.
If that audit succeeds, the natural Lean work is to formalise closed-set
containment, the 38-shape certificate checks, projection, finite block merging,
the remaining nine finite cases, and the upper construction. Final transitive
axiom auditing should retain the Fischer project's kernel-only trust boundary.
Palomar packaging and a research preprint come after that gate. This pilot
does not guarantee novelty, registration, moderation acceptance, or publication.

## 9. Reproduction and artifacts

`README.md` gives reproduction commands. The archive contains the unchanged
input bundle contents; the original reproduction; extended search source and
results; the discovery program; the complete merge certificate; both standalone
certificate verifiers and their outputs; and resource logs. Executable binaries
and Python caches are omitted. SHA-256 hashes cover every delivered member.

The following resource facts are reported separately in
`results/resource_summary.json`: successful subprocess CPU time, maximum
recorded resident memory, and completion status. Every computational subprocess
had a 4 GiB address-space cap. Search and verification completed well within
the two CPU-hour limit; no incomplete run was promoted to a negative result.

Completed computation used **54.98 CPU seconds** across the eleven
subprocesses, with a maximum recorded RSS of **102.63 MiB**,
including compilation. Both finite scans and both certificate verifiers passed.
