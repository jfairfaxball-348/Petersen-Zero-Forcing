import PetersenZeroForcing.Forcing

namespace PetersenZeroForcing
namespace FiniteScan

def allB {α : Type*} (s : Finset α) (p : α → Bool) : Bool :=
  s.fold (· && ·) true p

theorem allB_eq_true {α : Type*} (s : Finset α) (p : α → Bool) :
    allB s p = true ↔ ∀ x ∈ s, p x = true := by
  classical
  induction s using Finset.induction_on with
  | empty => simp [allB]
  | @insert a s ha ih =>
      rw [allB, Finset.fold_insert ha]
      change ((p a && allB s p) = true ↔ ∀ x ∈ insert a s, p x = true)
      simp [ih, ha]

/-- Kernel-reducible forcing closure with an early fixed-point exit.
The proof below identifies it exactly with the mathematical bounded iterate
used by `closure`; this is only a computational optimization. -/
def closureEarlyAux (n : Nat) [NeZero n] :
    Nat → Finset (Vertex n) → Finset (Vertex n)
  | 0, blue => blue
  | k + 1, blue =>
      let next := forceStep n blue
      if next = blue then blue else closureEarlyAux n k next

theorem iterate_forceStep_eq_of_fixed
    (n : Nat) [NeZero n] {blue : Finset (Vertex n)}
    (hfixed : forceStep n blue = blue) :
    ∀ k : Nat, (forceStep n)^[k] blue = blue := by
  intro k
  induction k with
  | zero => rfl
  | succ k ih =>
      rw [Function.iterate_succ_apply', ih, hfixed]

theorem closureEarlyAux_eq_iterate
    (n : Nat) [NeZero n] :
    ∀ (k : Nat) (blue : Finset (Vertex n)),
      closureEarlyAux n k blue = (forceStep n)^[k] blue := by
  intro k
  induction k with
  | zero =>
      intro blue
      rfl
  | succ k ih =>
      intro blue
      rw [closureEarlyAux]
      by_cases hfixed : forceStep n blue = blue
      · rw [if_pos hfixed]
        exact (iterate_forceStep_eq_of_fixed n hfixed (k + 1)).symm
      · rw [if_neg hfixed, ih]
        rw [Function.iterate_succ_apply]

def closureEarly (n : Nat) [NeZero n]
    (blue : Finset (Vertex n)) : Finset (Vertex n) :=
  closureEarlyAux n (Fintype.card (Vertex n)) blue

theorem closureEarly_eq_closure
    (n : Nat) [NeZero n] (blue : Finset (Vertex n)) :
    closureEarly n blue = closure n blue := by
  rw [closureEarly, closure, closureEarlyAux_eq_iterate]

/-- Computationally cheaper one-round evaluator.  It scans each blue
source once instead of scanning every possible target and then searching for a
source.  The next theorem proves it is exactly the mathematical `forceStep`. -/
def forceStepFast (n : Nat) [NeZero n]
    (blue : Finset (Vertex n)) : Finset (Vertex n) :=
  blue ∪ blue.biUnion fun x =>
    let white := whiteNeighbors n blue x
    if white.card = 1 then white else ∅

theorem forceStepFast_eq_forceStep
    (n : Nat) [NeZero n] (blue : Finset (Vertex n)) :
    forceStepFast n blue = forceStep n blue := by
  ext y
  simp only [forceStepFast, forceStep, Finset.mem_union, Finset.mem_biUnion,
    Finset.mem_filter, Finset.mem_univ, true_and]
  constructor
  · intro hy
    rcases hy with hy | hy
    · exact Or.inl hy
    · right
      rcases hy with ⟨x, hx, hyx⟩
      by_cases hcard : (whiteNeighbors n blue x).card = 1
      · rw [if_pos hcard] at hyx
        rcases Finset.card_eq_one.mp hcard with ⟨z, hz⟩
        have hyz : y = z := by
          rw [hz] at hyx
          simpa using hyx
        subst z
        exact ⟨x, hx, hz⟩
      · rw [if_neg hcard] at hyx
        simp at hyx
  · intro hy
    rcases hy with hy | ⟨x, hx, hwhite⟩
    · exact Or.inl hy
    · right
      refine ⟨x, hx, ?_⟩
      have hcard : (whiteNeighbors n blue x).card = 1 := by
        rw [hwhite]
        simp
      rw [if_pos hcard, hwhite]
      simp

/-- Early-stopping closure using the source-oriented evaluator. -/
def closureFastAux (n : Nat) [NeZero n] :
    Nat → Finset (Vertex n) → Finset (Vertex n)
  | 0, blue => blue
  | k + 1, blue =>
      let next := forceStepFast n blue
      if next = blue then blue else closureFastAux n k next

theorem closureFastAux_eq_iterate
    (n : Nat) [NeZero n] :
    ∀ (k : Nat) (blue : Finset (Vertex n)),
      closureFastAux n k blue = (forceStep n)^[k] blue := by
  intro k
  induction k with
  | zero =>
      intro blue
      rfl
  | succ k ih =>
      intro blue
      simp only [closureFastAux, forceStepFast_eq_forceStep]
      by_cases hfixed : forceStep n blue = blue
      · rw [if_pos hfixed]
        exact (iterate_forceStep_eq_of_fixed n hfixed (k + 1)).symm
      · rw [if_neg hfixed, ih]
        rw [Function.iterate_succ_apply]

def closureFast (n : Nat) [NeZero n]
    (blue : Finset (Vertex n)) : Finset (Vertex n) :=
  closureFastAux n (Fintype.card (Vertex n)) blue

theorem closureFast_eq_closure
    (n : Nat) [NeZero n] (blue : Finset (Vertex n)) :
    closureFast n blue = closure n blue := by
  rw [closureFast, closure, closureFastAux_eq_iterate]

/-- Compact internal representation used only to *construct* candidate closed
supersets for the finite kernel checks.  Soundness does not trust this
representation: `candidateCertB` below re-checks containment, `Closed`, and
properness in the original `Finset (Vertex n)` semantics. -/
def vertexBitIndex {n : Nat} : Vertex n → Nat
  | (Layer.outer, i) => i.val
  | (Layer.inner, i) => n + i.val

def vertexBit {n : Nat} (x : Vertex n) : Nat :=
  2 ^ vertexBitIndex x

def maskOfSet {n : Nat} (s : Finset (Vertex n)) : Nat :=
  s.sum vertexBit

def maskHas {n : Nat} (mask : Nat) (x : Vertex n) : Bool :=
  mask.testBit (vertexBitIndex x)

def maskNeighborMask (n : Nat) [NeZero n] : Vertex n → Nat
  | (Layer.outer, i) =>
      vertexBit (u (i - 1)) ||| vertexBit (u (i + 1)) ||| vertexBit (v i)
  | (Layer.inner, i) =>
      vertexBit (v (i - 3)) ||| vertexBit (v (i + 3)) ||| vertexBit (u i)

def maskForceVertex (n : Nat) [NeZero n]
    (mask : Nat) (x : Vertex n) : Nat :=
  if maskHas mask x = true then
    let neighborMask := maskNeighborMask n x
    let white := neighborMask ^^^ (neighborMask &&& mask)
    if white ≠ 0 ∧ (white &&& (white - 1)) = 0 then
      mask ||| white
    else
      mask
  else
    mask

/-- Fast sequential witness generator.  Its operational behavior is deliberately
not trusted: `candidateCertB` re-checks the resulting set in the original
`Finset` semantics before any mathematical conclusion is used.  In particular,
the bit-level neighbour computation below is only a proposal mechanism. -/
def maskForceSweep (n : Nat) [NeZero n] (mask : Nat) : Nat :=
  let afterOuter :=
    (List.range n).foldl
      (fun m i => maskForceVertex n m (u (i : ZMod n))) mask
  (List.range n).foldl
    (fun m i => maskForceVertex n m (v (i : ZMod n))) afterOuter

def maskClosureAux (n : Nat) [NeZero n] : Nat → Nat → Nat
  | 0, mask => mask
  | k + 1, mask =>
      let next := maskForceSweep n mask
      if next = mask then mask else maskClosureAux n k next

def maskCandidateSet (n : Nat) [NeZero n]
    (seed : Finset (Vertex n)) : Finset (Vertex n) :=
  let mask := maskClosureAux n (2 * n) (maskOfSet seed)
  (Finset.univ : Finset (Vertex n)).filter fun x => maskHas mask x = true

def subsetB {α : Type*} [DecidableEq α]
    (s t : Finset α) : Bool :=
  allB s fun x => decide (x ∈ t)

theorem subsetB_eq_true {α : Type*} [DecidableEq α]
    (s t : Finset α) :
    subsetB s t = true ↔ s ⊆ t := by
  unfold subsetB
  rw [allB_eq_true]
  constructor
  · intro h x hx
    exact of_decide_eq_true (h x hx)
  · intro h x hx
    exact (decide_eq_true_iff).2 (h hx)

def closedB (n : Nat) [NeZero n]
    (U : Finset (Vertex n)) : Bool :=
  allB U fun x => decide ((neighbors n x \ U).card ≠ 1)

theorem closedB_eq_true (n : Nat) [NeZero n]
    (U : Finset (Vertex n)) :
    closedB n U = true ↔ Closed n U := by
  unfold closedB Closed
  rw [allB_eq_true]
  constructor
  · intro h x hx
    exact of_decide_eq_true (h x hx)
  · intro h x hx
    exact (decide_eq_true_iff).2 (h x hx)

/-- This is the trusted mathematical proposition checked by the optimized
finite computation.  The mask code merely proposes `U`; the kernel verifies
that `U` contains the seed, is closed in the original graph semantics, and
is a proper subset of the vertex set. -/
def candidateCertB (n : Nat) [NeZero n]
    (seed : Finset (Vertex n)) : Bool :=
  let U := maskCandidateSet n seed
  subsetB seed U && (closedB n U && decide (U ≠ Finset.univ))

theorem candidateCertB_spec (n : Nat) [NeZero n]
    (seed : Finset (Vertex n))
    (h : candidateCertB n seed = true) :
    closure n seed ≠ Finset.univ := by
  unfold candidateCertB at h
  simp only [Bool.and_eq_true] at h
  have hsub : seed ⊆ maskCandidateSet n seed :=
    (subsetB_eq_true seed (maskCandidateSet n seed)).1 h.1
  have hclosed : Closed n (maskCandidateSet n seed) :=
    (closedB_eq_true n (maskCandidateSet n seed)).1 h.2.1
  have hproper : maskCandidateSet n seed ≠ (Finset.univ : Finset (Vertex n)) :=
    of_decide_eq_true h.2.2
  intro hfull
  have hclsub :=
    closure_subset_of_closed n hsub hclosed
  have hunivSub :
      (Finset.univ : Finset (Vertex n)) ⊆ maskCandidateSet n seed := by
    simpa [hfull] using hclsub
  apply hproper
  exact Finset.Subset.antisymm (Finset.subset_univ _) hunivSub

def sources (n : Nat) [NeZero n] : Finset (Vertex n) := {u 0, v 0}

def bases (n : Nat) [NeZero n] : Finset (Finset (Vertex n)) :=
  (sources n).biUnion fun source =>
    ((neighbors n source).powersetCard 2).image fun pair => insert source pair

def pairScanB (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n)) : Bool :=
  allB (((Finset.univ : Finset (Vertex n)) \ insert source pair).powersetCard 4) fun extra =>
    decide (closureFast n (insert source pair ∪ extra) ≠ Finset.univ)

/-- Certificate-producing counterpart of `pairScanB`.  It checks a stronger
closed-superset witness for every represented seed. -/
def pairCertScanB (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n)) : Bool :=
  allB (((Finset.univ : Finset (Vertex n)) \ insert source pair).powersetCard 4) fun extra =>
    candidateCertB n (insert source pair ∪ extra)

theorem pairScanB_of_certScan
    (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n))
    (hcert : pairCertScanB n source pair = true) :
    pairScanB n source pair = true := by
  unfold pairCertScanB at hcert
  unfold pairScanB
  apply (allB_eq_true _ _).2
  intro extra hextra
  have hc := (allB_eq_true _ _).mp hcert extra hextra
  rw [decide_eq_true_iff]
  rw [closureFast_eq_closure]
  exact candidateCertB_spec n (insert source pair ∪ extra) hc

/-- Balanced classifier used only to split the exact four-extra kernel scan.
Every extra set lies in exactly one Boolean parity shard. -/
def extraOuterEvenB {n : Nat} (extra : Finset (Vertex n)) : Bool :=
  decide (((extra.filter fun x => x.1 = Layer.outer).card % 2) = 0)


/-- Second balanced classifier for finite scan sharding.  Together with
`extraOuterEvenB`, this partitions every four-extra set into one of four
exhaustive buckets. -/
def extraIndexEvenB {n : Nat} (extra : Finset (Vertex n)) : Bool :=
  decide (((extra.sum (fun x => vertexBitIndex x)) % 2) = 0)

def pairCertScanQuarterB (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n))
    (wantOuterEven wantIndexEven : Bool) : Bool :=
  allB
    ((((Finset.univ : Finset (Vertex n)) \ insert source pair).powersetCard 4).filter
      (fun extra =>
        extraOuterEvenB extra = wantOuterEven ∧
          extraIndexEvenB extra = wantIndexEven))
    fun extra =>
      candidateCertB n (insert source pair ∪ extra)

theorem pairCertScanB_of_quarters
    (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n))
    (h00 : pairCertScanQuarterB n source pair false false = true)
    (h01 : pairCertScanQuarterB n source pair false true = true)
    (h10 : pairCertScanQuarterB n source pair true false = true)
    (h11 : pairCertScanQuarterB n source pair true true = true) :
    pairCertScanB n source pair = true := by
  unfold pairCertScanQuarterB at h00 h01 h10 h11
  unfold pairCertScanB
  apply (allB_eq_true _ _).2
  intro extra hextra
  cases hout : extraOuterEvenB extra with
  | false =>
      cases hidx : extraIndexEvenB extra with
      | false =>
          exact (allB_eq_true _ _).mp h00 extra (by simp [hextra, hout, hidx])
      | true =>
          exact (allB_eq_true _ _).mp h01 extra (by simp [hextra, hout, hidx])
  | true =>
      cases hidx : extraIndexEvenB extra with
      | false =>
          exact (allB_eq_true _ _).mp h10 extra (by simp [hextra, hout, hidx])
      | true =>
          exact (allB_eq_true _ _).mp h11 extra (by simp [hextra, hout, hidx])

/-- One half of a pair scan, selected by the parity of the number of outer
vertices among the four extras.  The checked proposition is unchanged. -/
def pairScanParityB (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n)) (wantEven : Bool) : Bool :=
  allB
    ((((Finset.univ : Finset (Vertex n)) \ insert source pair).powersetCard 4).filter
      (fun extra => extraOuterEvenB extra = wantEven))
    fun extra =>
      decide (closureFast n (insert source pair ∪ extra) ≠ Finset.univ)

def pairCertScanParityB (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n)) (wantEven : Bool) : Bool :=
  allB
    ((((Finset.univ : Finset (Vertex n)) \ insert source pair).powersetCard 4).filter
      (fun extra => extraOuterEvenB extra = wantEven))
    fun extra =>
      candidateCertB n (insert source pair ∪ extra)

theorem pairCertScanB_of_parity
    (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n))
    (heven : pairCertScanParityB n source pair true = true)
    (hodd : pairCertScanParityB n source pair false = true) :
    pairCertScanB n source pair = true := by
  unfold pairCertScanParityB at heven hodd
  unfold pairCertScanB
  apply (allB_eq_true _ _).2
  intro extra hextra
  cases hpar : extraOuterEvenB extra with
  | false =>
      exact (allB_eq_true _ _).mp hodd extra (by simp [hextra, hpar])
  | true =>
      exact (allB_eq_true _ _).mp heven extra (by simp [hextra, hpar])

theorem pairScanB_of_parity
    (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n))
    (heven : pairScanParityB n source pair true = true)
    (hodd : pairScanParityB n source pair false = true) :
    pairScanB n source pair = true := by
  unfold pairScanParityB at heven hodd
  unfold pairScanB
  apply (allB_eq_true _ _).2
  intro extra hextra
  cases hpar : extraOuterEvenB extra with
  | false =>
      exact (allB_eq_true _ _).mp hodd extra (by simp [hextra, hpar])
  | true =>
      exact (allB_eq_true _ _).mp heven extra (by simp [hextra, hpar])

def sourceScanB (n : Nat) [NeZero n] (source : Vertex n) : Bool :=
  allB ((neighbors n source).powersetCard 2) (pairScanB n source)

def reducedScanB (n : Nat) [NeZero n] : Bool :=
  allB (bases n) fun base =>
    allB ((Finset.univ \ base).powersetCard 4) fun extra =>
      decide (closureFast n (base ∪ extra) ≠ Finset.univ)

def outerPair0 (n : Nat) [NeZero n] : Finset (Vertex n) := {u (-1), u 1}
def outerPair1 (n : Nat) [NeZero n] : Finset (Vertex n) := {u (-1), v 0}
def outerPair2 (n : Nat) [NeZero n] : Finset (Vertex n) := {u 1, v 0}

def innerPair0 (n : Nat) [NeZero n] : Finset (Vertex n) := {v (-3), v 3}
def innerPair1 (n : Nat) [NeZero n] : Finset (Vertex n) := {v (-3), u 0}
def innerPair2 (n : Nat) [NeZero n] : Finset (Vertex n) := {v 3, u 0}

theorem sourceScanB_of_three_pairs
    (n : Nat) [NeZero n] (source : Vertex n)
    (p0 p1 p2 : Finset (Vertex n))
    (hpairs :
      (neighbors n source).powersetCard 2 = {p0, p1, p2})
    (h0 : pairScanB n source p0 = true)
    (h1 : pairScanB n source p1 = true)
    (h2 : pairScanB n source p2 = true) :
    sourceScanB n source = true := by
  unfold sourceScanB
  apply (allB_eq_true ((neighbors n source).powersetCard 2) _).2
  intro pair hpair
  rw [hpairs] at hpair
  simp only [Finset.mem_insert, Finset.mem_singleton] at hpair
  rcases hpair with h | h | h
  · simpa [h] using h0
  · simpa [h] using h1
  · simpa [h] using h2

theorem reducedScanB_of_source_scans
    (n : Nat) [NeZero n]
    (houter : sourceScanB n (u 0) = true)
    (hinner : sourceScanB n (v 0) = true) :
    reducedScanB n = true := by
  unfold reducedScanB
  apply (allB_eq_true (bases n) _).2
  intro base hbase
  rcases Finset.mem_biUnion.mp hbase with ⟨source, hsource, hbase⟩
  rcases Finset.mem_image.mp hbase with ⟨pair, hpair, rfl⟩
  have hsourceCases : source = u 0 ∨ source = v 0 := by
    simpa [sources] using hsource
  rcases hsourceCases with rfl | rfl
  · unfold sourceScanB at houter
    exact (allB_eq_true ((neighbors n (u 0)).powersetCard 2) _).mp
      houter pair hpair
  · unfold sourceScanB at hinner
    exact (allB_eq_true ((neighbors n (v 0)).powersetCard 2) _).mp
      hinner pair hpair

theorem reducedScanB_spec (n : Nat) [NeZero n]
    (h : reducedScanB n = true)
    {base extra : Finset (Vertex n)}
    (hbase : base ∈ bases n)
    (hextra : extra ∈ (Finset.univ \ base).powersetCard 4) :
    closure n (base ∪ extra) ≠ Finset.univ := by
  have hb := (allB_eq_true (bases n) _).mp h base hbase
  have he := (allB_eq_true ((Finset.univ \ base).powersetCard 4) _).mp hb extra hextra
  have hfast : closureFast n (base ∪ extra) ≠ Finset.univ :=
    of_decide_eq_true he
  rw [closureFast_eq_closure] at hfast
  exact hfast

end FiniteScan
end PetersenZeroForcing
