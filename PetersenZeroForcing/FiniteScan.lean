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

def sources (n : Nat) [NeZero n] : Finset (Vertex n) := {u 0, v 0}

def bases (n : Nat) [NeZero n] : Finset (Finset (Vertex n)) :=
  (sources n).biUnion fun source =>
    ((neighbors n source).powersetCard 2).image fun pair => insert source pair

def pairScanB (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n)) : Bool :=
  allB (((Finset.univ : Finset (Vertex n)) \ insert source pair).powersetCard 4) fun extra =>
    decide (closureFast n (insert source pair ∪ extra) ≠ Finset.univ)

/-- Balanced classifier used only to split the exact four-extra kernel scan.
Every extra set lies in exactly one Boolean parity shard. -/
def extraOuterEvenB {n : Nat} (extra : Finset (Vertex n)) : Bool :=
  decide (((extra.filter fun x => x.1 = Layer.outer).card % 2) = 0)

/-- One half of a pair scan, selected by the parity of the number of outer
vertices among the four extras.  The checked proposition is unchanged. -/
def pairScanParityB (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n)) (wantEven : Bool) : Bool :=
  allB
    ((((Finset.univ : Finset (Vertex n)) \ insert source pair).powersetCard 4).filter
      (fun extra => extraOuterEvenB extra = wantEven))
    fun extra =>
      decide (closureFast n (insert source pair ∪ extra) ≠ Finset.univ)

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
