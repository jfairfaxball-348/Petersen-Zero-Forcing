import PetersenZeroForcing.Forcing

namespace PetersenZeroForcing

theorem forceStep_mono
    (n : Nat) [NeZero n] {A B : Finset (Vertex n)}
    (hAB : A ⊆ B) :
    forceStep n A ⊆ forceStep n B := by
  intro y hy
  rcases Finset.mem_union.mp hy with hyA | hyF
  · exact Finset.mem_union_left _ (hAB hyA)
  · rcases (Finset.mem_filter.mp hyF).2 with ⟨x, hxA, hforce⟩
    by_cases hyB : y ∈ B
    · exact Finset.mem_union_left _ hyB
    · apply Finset.mem_union_right
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_univ _, ⟨x, hAB hxA, ?_⟩⟩
      ext z
      constructor
      · intro hz
        rcases Finset.mem_sdiff.mp hz with ⟨hzn, hzB⟩
        have hzA : z ∈ whiteNeighbors n A x :=
          Finset.mem_sdiff.mpr ⟨hzn, fun hzA => hzB (hAB hzA)⟩
        have hzy : z = y := by
          simpa [hforce] using hzA
        simpa [hzy]
      · intro hz
        have hzy : z = y := by simpa using hz
        subst z
        have hyAwhite : y ∈ whiteNeighbors n A x := by
          rw [hforce]
          simp
        rcases Finset.mem_sdiff.mp hyAwhite with ⟨hyn, _⟩
        exact Finset.mem_sdiff.mpr ⟨hyn, hyB⟩

theorem iterate_forceStep_mono
    (n : Nat) [NeZero n] {A B : Finset (Vertex n)}
    (hAB : A ⊆ B) :
    ∀ k : Nat, (forceStep n)^[k] A ⊆ (forceStep n)^[k] B := by
  intro k
  induction k with
  | zero =>
      simpa using hAB
  | succ k ih =>
      rw [Function.iterate_succ_apply', Function.iterate_succ_apply']
      exact forceStep_mono n ih

theorem closure_mono
    (n : Nat) [NeZero n] {A B : Finset (Vertex n)}
    (hAB : A ⊆ B) :
    closure n A ⊆ closure n B := by
  simpa [closure] using
    iterate_forceStep_mono n hAB (Fintype.card (Vertex n))

theorem isZeroForcing_mono
    (n : Nat) [NeZero n] {A B : Finset (Vertex n)}
    (hAB : A ⊆ B) (hA : IsZeroForcing n A) :
    IsZeroForcing n B := by
  apply Finset.eq_univ_of_forall
  intro x
  have hxA : x ∈ closure n A := by
    rw [hA]
    exact Finset.mem_univ x
  exact closure_mono n hAB hxA

end PetersenZeroForcing
