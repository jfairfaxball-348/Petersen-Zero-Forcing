import PetersenZeroForcing.Forcing

namespace PetersenZeroForcing

def rotateEquiv (n : Nat) [NeZero n] (r : ZMod n) : Vertex n ≃ Vertex n where
  toFun x := (x.1, x.2 + r)
  invFun x := (x.1, x.2 - r)
  left_inv x := by rcases x with ⟨l,i⟩; simp
  right_inv x := by rcases x with ⟨l,i⟩; simp

@[simp] theorem rotateEquiv_apply (n : Nat) [NeZero n] (r : ZMod n) (x : Vertex n) :
    rotateEquiv n r x = (x.1, x.2 + r) := rfl

def rotateSet (n : Nat) [NeZero n] (r : ZMod n) (S : Finset (Vertex n)) :
    Finset (Vertex n) :=
  S.map (rotateEquiv n r).toEmbedding

@[simp] theorem mem_rotateSet (n : Nat) [NeZero n] (r : ZMod n)
    (S : Finset (Vertex n)) (x : Vertex n) :
    rotateEquiv n r x ∈ rotateSet n r S ↔ x ∈ S := by
  simp [rotateSet]

@[simp] theorem card_rotateSet (n : Nat) [NeZero n] (r : ZMod n)
    (S : Finset (Vertex n)) :
    (rotateSet n r S).card = S.card := by
  simp [rotateSet]

theorem neighbors_rotate (n : Nat) [NeZero n] (r : ZMod n) (x : Vertex n) :
    (neighbors n x).map (rotateEquiv n r).toEmbedding =
      neighbors n (rotateEquiv n r x) := by
  rcases x with ⟨layer,i⟩
  cases layer <;>
    simp [neighbors, rotateEquiv, u, v, sub_eq_add_neg, add_assoc, add_left_comm, add_comm]

theorem whiteNeighbors_rotate (n : Nat) [NeZero n] (r : ZMod n)
    (S : Finset (Vertex n)) (x : Vertex n) :
    (whiteNeighbors n S x).map (rotateEquiv n r).toEmbedding =
      whiteNeighbors n (rotateSet n r S) (rotateEquiv n r x) := by
  simp only [whiteNeighbors, rotateSet, Finset.map_sdiff]
  exact neighbors_rotate n r x

theorem whiteNeighbors_rotate_eq_singleton (n : Nat) [NeZero n] (r : ZMod n)
    (S : Finset (Vertex n)) (x y : Vertex n) :
    whiteNeighbors n (rotateSet n r S) (rotateEquiv n r x) = {rotateEquiv n r y} ↔
      whiteNeighbors n S x = {y} := by
  rw [← whiteNeighbors_rotate n r S x]
  constructor
  · intro h
    apply Finset.map_injective (rotateEquiv n r).toEmbedding
    simpa using h
  · intro h
    simpa [h]

theorem forceStep_rotate (n : Nat) [NeZero n] (r : ZMod n)
    (S : Finset (Vertex n)) :
    rotateSet n r (forceStep n S) = forceStep n (rotateSet n r S) := by
  ext y
  let x := (rotateEquiv n r).symm y
  have hy : y = rotateEquiv n r x := by
    simp [x]
  subst y
  simp only [rotateSet, Finset.mem_map, forceStep, Finset.mem_union,
    Finset.mem_filter, Finset.mem_univ, true_and]
  constructor
  · rintro ⟨z, hz, hzx⟩
    have hz_eq : z = x := (rotateEquiv n r).injective hzx
    subst z
    rcases hz with hxS | ⟨source, hsS, hforce⟩
    · exact Or.inl (by simp [rotateSet, hxS])
    · refine Or.inr ⟨rotateEquiv n r source, ?_, ?_⟩
      · simp [rotateSet, hsS]
      · exact (whiteNeighbors_rotate_eq_singleton n r S source x).2 hforce
  · intro h
    refine ⟨x, ?_, rfl⟩
    rcases h with hxS | ⟨sourceR, hsR, hforceR⟩
    · exact Or.inl ((mem_rotateSet n r S x).mp hxS)
    · rcases Finset.mem_map.mp hsR with ⟨source, hsS, hsource⟩
      have hsEq : sourceR = rotateEquiv n r source := hsource.symm
      subst sourceR
      exact Or.inr ⟨source, hsS,
        (whiteNeighbors_rotate_eq_singleton n r S source x).1 hforceR⟩

theorem iterate_forceStep_rotate (n : Nat) [NeZero n] (r : ZMod n)
    (S : Finset (Vertex n)) :
    ∀ k : Nat,
      rotateSet n r ((forceStep n)^[k] S) =
        (forceStep n)^[k] (rotateSet n r S) := by
  intro k
  induction k with
  | zero => rfl
  | succ k ih =>
      rw [Function.iterate_succ_apply', Function.iterate_succ_apply']
      rw [forceStep_rotate, ih]

theorem closure_rotate (n : Nat) [NeZero n] (r : ZMod n)
    (S : Finset (Vertex n)) :
    rotateSet n r (closure n S) = closure n (rotateSet n r S) := by
  simpa [closure] using
    iterate_forceStep_rotate n r S (Fintype.card (Vertex n))

theorem rotateSet_univ (n : Nat) [NeZero n] (r : ZMod n) :
    rotateSet n r (Finset.univ : Finset (Vertex n)) = Finset.univ := by
  ext x
  let y := (rotateEquiv n r).symm x
  have : x = rotateEquiv n r y := by simp [y]
  subst x
  simp [rotateSet]

theorem isZeroForcing_rotate_iff (n : Nat) [NeZero n] (r : ZMod n)
    (S : Finset (Vertex n)) :
    IsZeroForcing n (rotateSet n r S) ↔ IsZeroForcing n S := by
  rw [IsZeroForcing, ← closure_rotate]
  constructor
  · intro h
    have h' := congrArg (fun T => rotateSet n (-r) T) h
    simpa [rotateSet, Finset.map_map, rotateSet_univ] using h'
  · intro h
    rw [h, rotateSet_univ]

end PetersenZeroForcing
