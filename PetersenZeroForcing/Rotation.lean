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
  constructor
  · intro hx
    rcases Finset.mem_map.mp hx with ⟨y, hy, hxy⟩
    have : y = x := (rotateEquiv n r).injective hxy
    simpa [this] using hy
  · intro hx
    exact Finset.mem_map.mpr ⟨x, hx, rfl⟩

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
  apply Finset.ext
  intro z
  constructor
  · intro hz
    rcases Finset.mem_map.mp hz with ⟨y, hy, hyz⟩
    rcases Finset.mem_sdiff.mp hy with ⟨hyN, hyS⟩
    subst z
    apply Finset.mem_sdiff.mpr
    constructor
    · rw [← neighbors_rotate n r x]
      exact Finset.mem_map.mpr ⟨y, hyN, rfl⟩
    · intro h
      exact hyS ((mem_rotateSet n r S y).mp h)
  · intro hz
    rcases Finset.mem_sdiff.mp hz with ⟨hzN, hzS⟩
    have hzN' : z ∈ (neighbors n x).map (rotateEquiv n r).toEmbedding := by
      rw [neighbors_rotate n r x]
      exact hzN
    rcases Finset.mem_map.mp hzN' with ⟨y, hyN, hyz⟩
    subst z
    apply Finset.mem_map.mpr
    refine ⟨y, Finset.mem_sdiff.mpr ⟨hyN, ?_⟩, rfl⟩
    intro hyS
    exact hzS ((mem_rotateSet n r S y).mpr hyS)

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
  apply Finset.ext
  intro y
  constructor
  · intro hy
    rcases Finset.mem_map.mp hy with ⟨z, hz, hzy⟩
    rcases Finset.mem_union.mp hz with hzS | hzF
    · rw [← hzy]
      exact Finset.mem_union_left _ (Finset.mem_map.mpr ⟨z, hzS, rfl⟩)
    · rcases (Finset.mem_filter.mp hzF).2 with ⟨source, hsS, hforce⟩
      rw [← hzy]
      apply Finset.mem_union_right
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_univ _, ⟨rotateEquiv n r source, ?_, ?_⟩⟩
      · exact Finset.mem_map.mpr ⟨source, hsS, rfl⟩
      · exact (whiteNeighbors_rotate_eq_singleton n r S source z).2 hforce
  · intro hy
    rcases Finset.mem_union.mp hy with hyS | hyF
    · rcases Finset.mem_map.mp hyS with ⟨z, hzS, hzy⟩
      exact Finset.mem_map.mpr
        ⟨z, Finset.mem_union_left _ hzS, hzy⟩
    · rcases (Finset.mem_filter.mp hyF).2 with ⟨sourceR, hsR, hforceR⟩
      rcases Finset.mem_map.mp hsR with ⟨source, hsS, hsource⟩
      let z : Vertex n := (rotateEquiv n r).symm y
      have hzy : rotateEquiv n r z = y := (rotateEquiv n r).apply_symm_apply y
      have hsource' : sourceR = rotateEquiv n r source := hsource.symm
      have hforceR' :
          whiteNeighbors n (rotateSet n r S) (rotateEquiv n r source) =
            {rotateEquiv n r z} := by
        simpa [hsource', hzy] using hforceR
      have hforce : whiteNeighbors n S source = {z} :=
        (whiteNeighbors_rotate_eq_singleton n r S source z).1 hforceR'
      apply Finset.mem_map.mpr
      refine ⟨z, Finset.mem_union_right _ ?_, hzy⟩
      apply Finset.mem_filter.mpr
      exact ⟨Finset.mem_univ _, ⟨source, hsS, hforce⟩⟩

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
  apply Finset.eq_univ_of_forall
  intro y
  rcases (rotateEquiv n r).surjective y with ⟨x, rfl⟩
  exact Finset.mem_map.mpr ⟨x, Finset.mem_univ _, rfl⟩

theorem isZeroForcing_rotate_iff (n : Nat) [NeZero n] (r : ZMod n)
    (S : Finset (Vertex n)) :
    IsZeroForcing n (rotateSet n r S) ↔ IsZeroForcing n S := by
  unfold IsZeroForcing
  rw [← closure_rotate n r S]
  constructor
  · intro h
    apply Finset.eq_univ_of_forall
    intro x
    have hx : rotateEquiv n r x ∈ rotateSet n r (closure n S) := by
      rw [h]
      exact Finset.mem_univ _
    exact (mem_rotateSet n r (closure n S) x).mp hx
  · intro h
    rw [h, rotateSet_univ]

end PetersenZeroForcing
