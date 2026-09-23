import PetersenZeroForcing.Core

namespace PetersenZeroForcing

/-- A blue set is closed when no blue vertex has exactly one neighbour outside it. -/
def Closed (n : Nat) [NeZero n] (blue : Finset (Vertex n)) : Prop :=
  ∀ x ∈ blue, (neighbors n x \ blue).card ≠ 1

theorem subset_forceStep (n : Nat) [NeZero n] (blue : Finset (Vertex n)) :
    blue ⊆ forceStep n blue := by
  intro x hx
  exact Finset.mem_union_left _ hx

/-- A force cannot leave a closed superset.  This is the exact closure fact
used by the audited certificate argument; no exact-closure premise is used. -/
theorem forceStep_subset_of_closed (n : Nat) [NeZero n]
    {blue U : Finset (Vertex n)} (hsub : blue ⊆ U) (hU : Closed n U) :
    forceStep n blue ⊆ U := by
  intro y hy
  rcases Finset.mem_union.mp hy with hy | hy
  · exact hsub hy
  · rcases (Finset.mem_filter.mp hy).2 with ⟨x, hxblue, hforce⟩
    by_contra hyU
    have hxU : x ∈ U := hsub hxblue
    have hwhiteU : whiteNeighbors n U x = {y} := by
      ext z
      constructor
      · intro hz
        have hzw : z ∈ whiteNeighbors n blue x := by
          rcases Finset.mem_sdiff.mp (show z ∈ neighbors n x \ U by simpa [whiteNeighbors] using hz) with
            ⟨hzn, hznotU⟩
          exact Finset.mem_sdiff.mpr ⟨hzn, fun hzb => hznotU (hsub hzb)⟩
        simpa [hforce] using hzw
      · intro hz
        have hzy : z = y := by simpa using hz
        subst z
        have hywb : y ∈ whiteNeighbors n blue x := by
          rw [hforce]
          simp
        rcases Finset.mem_sdiff.mp (show y ∈ neighbors n x \ blue by
          simpa [whiteNeighbors] using hywb) with ⟨hyn, _⟩
        exact (show y ∈ whiteNeighbors n U x by
          exact Finset.mem_sdiff.mpr ⟨hyn, hyU⟩)
    have hcard : (neighbors n x \ U).card = 1 := by
      have hc := congrArg Finset.card hwhiteU
      simpa [whiteNeighbors] using hc
    exact (hU x hxU) hcard

theorem iterate_forceStep_subset_of_closed (n : Nat) [NeZero n]
    {blue U : Finset (Vertex n)} (hsub : blue ⊆ U) (hU : Closed n U) :
    ∀ k : Nat, (forceStep n)^[k] blue ⊆ U := by
  intro k
  induction k with
  | zero =>
      simpa using hsub
  | succ k ih =>
      rw [Function.iterate_succ_apply']
      exact forceStep_subset_of_closed n ih hU

theorem closure_subset_of_closed (n : Nat) [NeZero n]
    {blue U : Finset (Vertex n)} (hsub : blue ⊆ U) (hU : Closed n U) :
    closure n blue ⊆ U := by
  simpa [closure] using
    iterate_forceStep_subset_of_closed n hsub hU (Fintype.card (Vertex n))

theorem subset_iterate_forceStep (n : Nat) [NeZero n] (blue : Finset (Vertex n)) :
    ∀ k : Nat, blue ⊆ (forceStep n)^[k] blue := by
  intro k
  induction k with
  | zero => simp
  | succ k ih =>
      rw [Function.iterate_succ_apply']
      exact ih.trans (subset_forceStep n _)

theorem subset_closure (n : Nat) [NeZero n] (blue : Finset (Vertex n)) :
    blue ⊆ closure n blue := by
  simpa [closure] using subset_iterate_forceStep n blue (Fintype.card (Vertex n))

theorem univ_zero_forcing (n : Nat) [NeZero n] :
    IsZeroForcing n (Finset.univ : Finset (Vertex n)) := by
  apply Finset.Subset.antisymm
  · exact Finset.subset_univ _
  · exact subset_closure n Finset.univ

/-- The zero-forcing number, defined as the least cardinality of a forcing set. -/
noncomputable def Z (n : Nat) [NeZero n] : Nat :=
  Nat.find (show ∃ k : Nat, ∃ S : Finset (Vertex n), IsZeroForcing n S ∧ S.card = k by
    exact ⟨(Finset.univ : Finset (Vertex n)).card, Finset.univ, univ_zero_forcing n, rfl⟩)

theorem Z_spec (n : Nat) [NeZero n] :
    ∃ S : Finset (Vertex n), IsZeroForcing n S ∧ S.card = Z n := by
  exact Nat.find_spec (show ∃ k : Nat, ∃ S : Finset (Vertex n), IsZeroForcing n S ∧ S.card = k by
    exact ⟨(Finset.univ : Finset (Vertex n)).card, Finset.univ, univ_zero_forcing n, rfl⟩)

theorem Z_le_card (n : Nat) [NeZero n] {S : Finset (Vertex n)}
    (hS : IsZeroForcing n S) : Z n ≤ S.card := by
  apply Nat.find_min'
  exact ⟨S, hS, rfl⟩

theorem le_Z_of_forcing_card_lower_bound (n : Nat) [NeZero n] {k : Nat}
    (h : ∀ S : Finset (Vertex n), IsZeroForcing n S → k ≤ S.card) :
    k ≤ Z n := by
  rcases Z_spec n with ⟨S, hS, hcard⟩
  simpa [hcard] using h S hS

end PetersenZeroForcing
