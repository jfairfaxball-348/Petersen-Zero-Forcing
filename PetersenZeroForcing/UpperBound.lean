import PetersenZeroForcing.ForcingMonotone

namespace PetersenZeroForcing

/-- The explicit eight-vertex upper-bound seed: u_0,...,u_7. -/
def upperSeed (n : Nat) [NeZero n] : Finset (Vertex n) :=
  (Finset.range 8).image (fun i : Nat => u (i : ZMod n))

/-- Blue vertices after a specified number of simultaneous forcing rounds. -/
def upperBlue (n : Nat) [NeZero n] (r : Nat) : Finset (Vertex n) :=
  (forceStep n)^[r] (upperSeed n)

theorem upperSeed_mem_u (n : Nat) [NeZero n] {i : Nat} (hi : i < 8) :
    u (i : ZMod n) ∈ upperSeed n := by
  exact Finset.mem_image.mpr ⟨i, Finset.mem_range.mpr hi, rfl⟩

theorem upperSeed_card (n : Nat) [NeZero n] (hn : 9 ≤ n) :
    (upperSeed n).card = 8 := by
  unfold upperSeed
  calc
    ((Finset.range 8).image (fun i : Nat => u (i : ZMod n))).card =
        (Finset.range 8).card := by
      apply Finset.card_image_iff.mpr
      intro a ha b hb hab
      have ha8 : a < 8 := Finset.mem_range.mp ha
      have hb8 : b < 8 := Finset.mem_range.mp hb
      have han : a < n := by omega
      have hbn : b < n := by omega
      have hval := congrArg (fun x : Vertex n => x.2.val) hab
      simpa [u, ZMod.val_natCast_of_lt han, ZMod.val_natCast_of_lt hbn] using hval
    _ = 8 := by simp

theorem mem_forceStep_of_unique_white
    (n : Nat) [NeZero n] {blue : Finset (Vertex n)} {x y : Vertex n}
    (hx : x ∈ blue) (hwhite : whiteNeighbors n blue x = {y}) :
    y ∈ forceStep n blue := by
  apply Finset.mem_union_right
  apply Finset.mem_filter.mpr
  exact ⟨Finset.mem_univ _, ⟨x, hx, hwhite⟩⟩

theorem whiteNeighbors_eq_singleton_of_local
    (n : Nat) [NeZero n] {blue : Finset (Vertex n)} {x y : Vertex n}
    (hyN : y ∈ neighbors n x) (hyB : y ∉ blue)
    (hall : ∀ z ∈ neighbors n x, z = y ∨ z ∈ blue) :
    whiteNeighbors n blue x = {y} := by
  ext z
  constructor
  · intro hz
    rcases Finset.mem_sdiff.mp (show z ∈ neighbors n x \ blue by
      simpa [whiteNeighbors] using hz) with ⟨hzN, hzB⟩
    rcases hall z hzN with hzy | hzblue
    · subst z
      simp
    · exact False.elim (hzB hzblue)
  · intro hz
    have hzy : z = y := by simpa using hz
    subst z
    exact Finset.mem_sdiff.mpr ⟨hyN, hyB⟩

/-- If an outer vertex and its two outer neighbours are blue, it can force its spoke. -/
theorem outer_spoke_mem_forceStep
    (n : Nat) [NeZero n] (blue : Finset (Vertex n)) (i : ZMod n)
    (hsrc : u i ∈ blue)
    (hprev : u (i - 1) ∈ blue)
    (hnext : u (i + 1) ∈ blue) :
    v i ∈ forceStep n blue := by
  by_cases hv : v i ∈ blue
  · exact subset_forceStep n blue hv
  · apply mem_forceStep_of_unique_white n hsrc
    apply whiteNeighbors_eq_singleton_of_local n
    · simp [neighbors, u, v]
    · exact hv
    · intro z hz
      simp [neighbors, u, v] at hz
      rcases hz with h | h | h
      · subst z
        exact Or.inr hprev
      · subst z
        exact Or.inr hnext
      · subst z
        exact Or.inl rfl

/-- Once the spoke at u_i is blue, u_i propagates one step forward on the outer cycle. -/
theorem outer_forward_mem_forceStep
    (n : Nat) [NeZero n] (blue : Finset (Vertex n)) (i : ZMod n)
    (hsrc : u i ∈ blue)
    (hprev : u (i - 1) ∈ blue)
    (hspoke : v i ∈ blue) :
    u (i + 1) ∈ forceStep n blue := by
  by_cases hy : u (i + 1) ∈ blue
  · exact subset_forceStep n blue hy
  · apply mem_forceStep_of_unique_white n hsrc
    apply whiteNeighbors_eq_singleton_of_local n
    · simp [neighbors, u, v]
    · exact hy
    · intro z hz
      simp [neighbors, u, v] at hz
      rcases hz with h | h | h
      · subst z
        exact Or.inr hprev
      · subst z
        exact Or.inl rfl
      · subst z
        exact Or.inr hspoke

/-- An inner vertex with its backward inner neighbour and spoke blue forces forward by three. -/
theorem inner_forward_mem_forceStep
    (n : Nat) [NeZero n] (blue : Finset (Vertex n)) (i : ZMod n)
    (hsrc : v i ∈ blue)
    (hback : v (i - 3) ∈ blue)
    (hspoke : u i ∈ blue) :
    v (i + 3) ∈ forceStep n blue := by
  by_cases hy : v (i + 3) ∈ blue
  · exact subset_forceStep n blue hy
  · apply mem_forceStep_of_unique_white n hsrc
    apply whiteNeighbors_eq_singleton_of_local n
    · simp [neighbors, u, v]
    · exact hy
    · intro z hz
      simp [neighbors, u, v] at hz
      rcases hz with h | h | h
      · subst z
        exact Or.inr hback
      · subst z
        exact Or.inl rfl
      · subst z
        exact Or.inr hspoke

/-- The symmetric backward-by-three inner force. -/
theorem inner_backward_mem_forceStep
    (n : Nat) [NeZero n] (blue : Finset (Vertex n)) (i : ZMod n)
    (hsrc : v i ∈ blue)
    (hforward : v (i + 3) ∈ blue)
    (hspoke : u i ∈ blue) :
    v (i - 3) ∈ forceStep n blue := by
  by_cases hy : v (i - 3) ∈ blue
  · exact subset_forceStep n blue hy
  · apply mem_forceStep_of_unique_white n hsrc
    apply whiteNeighbors_eq_singleton_of_local n
    · simp [neighbors, u, v]
    · exact hy
    · intro z hz
      simp [neighbors, u, v] at hz
      rcases hz with h | h | h
      · subst z
        exact Or.inl rfl
      · subst z
        exact Or.inr hforward
      · subst z
        exact Or.inr hspoke

theorem upperBlue_subset_succ (n : Nat) [NeZero n] (r : Nat) :
    upperBlue n r ⊆ upperBlue n (r + 1) := by
  simpa [upperBlue, Function.iterate_succ_apply'] using
    subset_forceStep n (upperBlue n r)

theorem upperBlue_mono_rounds
    (n : Nat) [NeZero n] {r s : Nat} (hrs : r ≤ s) :
    upperBlue n r ⊆ upperBlue n s := by
  have h := subset_iterate_forceStep n (upperBlue n r) (s - r)
  simpa [upperBlue, ← Function.iterate_add_apply, Nat.sub_add_cancel hrs] using h

theorem initial_inner_round_one
    (n : Nat) [NeZero n] {j : Nat} (hj1 : 1 ≤ j) (hj6 : j ≤ 6) :
    v (j : ZMod n) ∈ upperBlue n 1 := by
  have hj8 : j < 8 := by omega
  have hjm8 : j - 1 < 8 := by omega
  have hjp8 : j + 1 < 8 := by omega
  have hsrc : u (j : ZMod n) ∈ upperSeed n := upperSeed_mem_u n hj8
  have hprev0 : u ((j - 1 : Nat) : ZMod n) ∈ upperSeed n :=
    upperSeed_mem_u n hjm8
  have hprev : u ((j : ZMod n) - 1) ∈ upperSeed n := by
    simpa [Nat.cast_sub hj1] using hprev0
  have hnext0 : u ((j + 1 : Nat) : ZMod n) ∈ upperSeed n :=
    upperSeed_mem_u n hjp8
  have hnext : u ((j : ZMod n) + 1) ∈ upperSeed n := by
    simpa using hnext0
  have hforce := outer_spoke_mem_forceStep n (upperSeed n) (j : ZMod n)
    hsrc hprev hnext
  simpa [upperBlue] using hforce

theorem upper_prefix_base
    (n : Nat) [NeZero n] :
    (∀ j : Nat, j ≤ 7 → u (j : ZMod n) ∈ upperBlue n 2) ∧
    (∀ j : Nat, j ≤ 7 → v (j : ZMod n) ∈ upperBlue n 2) := by
  constructor
  · intro j hj
    have hj8 : j < 8 := by omega
    exact subset_iterate_forceStep n (upperSeed n) 2 (upperSeed_mem_u n hj8)
  · intro j hj
    by_cases hj0 : j = 0
    · subst j
      have hv3 : v (3 : ZMod n) ∈ upperBlue n 1 :=
        initial_inner_round_one n (j := 3) (by norm_num) (by norm_num)
      have hv6 : v (6 : ZMod n) ∈ upperBlue n 1 :=
        initial_inner_round_one n (j := 6) (by norm_num) (by norm_num)
      have hu3seed : u (3 : ZMod n) ∈ upperSeed n := upperSeed_mem_u n (by norm_num)
      have hu3 : u (3 : ZMod n) ∈ upperBlue n 1 := by
        exact subset_iterate_forceStep n (upperSeed n) 1 hu3seed
      have hforward : v ((3 : ZMod n) + 3) ∈ upperBlue n 1 := by
        have heq : (3 : ZMod n) + 3 = 6 := by ring
        rw [heq]
        exact hv6
      have hforce := inner_backward_mem_forceStep n (upperBlue n 1) (3 : ZMod n)
        hv3 hforward hu3
      have htarget : v (0 : ZMod n) ∈ forceStep n (upperBlue n 1) := by
        have heq : (3 : ZMod n) - 3 = 0 := by ring
        rw [heq] at hforce
        exact hforce
      simpa [upperBlue, Function.iterate_succ_apply'] using htarget
    · by_cases hj7 : j = 7
      · subst j
        have hv4 : v (4 : ZMod n) ∈ upperBlue n 1 :=
          initial_inner_round_one n (j := 4) (by norm_num) (by norm_num)
        have hv1cast : v (((1 : Nat) : ZMod n)) ∈ upperBlue n 1 :=
          initial_inner_round_one n (j := 1) (by norm_num) (by norm_num)
        have hv1 : v (1 : ZMod n) ∈ upperBlue n 1 := by
          simpa only [Nat.cast_one] using hv1cast
        have hu4seed : u (4 : ZMod n) ∈ upperSeed n := upperSeed_mem_u n (by norm_num)
        have hu4 : u (4 : ZMod n) ∈ upperBlue n 1 := by
          exact subset_iterate_forceStep n (upperSeed n) 1 hu4seed
        have hback : v ((4 : ZMod n) - 3) ∈ upperBlue n 1 := by
          have heq : (4 : ZMod n) - 3 = 1 := by ring
          rw [heq]
          exact hv1
        have hforce := inner_forward_mem_forceStep n (upperBlue n 1) (4 : ZMod n)
          hv4 hback hu4
        have htarget : v (7 : ZMod n) ∈ forceStep n (upperBlue n 1) := by
          have heq : (4 : ZMod n) + 3 = 7 := by ring
          rw [heq] at hforce
          exact hforce
        simpa [upperBlue, Function.iterate_succ_apply'] using htarget
      · have hj1 : 1 ≤ j := by omega
        have hj6 : j ≤ 6 := by omega
        have h1 := initial_inner_round_one n hj1 hj6
        exact upperBlue_subset_succ n 1 h1

/-- After 2+m rounds, both layers are blue from index 0 through index 7+m. -/
theorem upper_prefix_reached
    (n : Nat) [NeZero n] (m : Nat) :
    (∀ j : Nat, j ≤ 7 + m → u (j : ZMod n) ∈ upperBlue n (2 + m)) ∧
    (∀ j : Nat, j ≤ 7 + m → v (j : ZMod n) ∈ upperBlue n (2 + m)) := by
  induction m with
  | zero =>
      simpa using upper_prefix_base n
  | succ m ih =>
      constructor
      · intro j hj
        by_cases hold : j ≤ 7 + m
        · have hjmem := ih.1 j hold
          exact upperBlue_subset_succ n (2 + m) (by
            simpa [Nat.add_assoc] using hjmem)
        · have hjnew : j = 8 + m := by omega
          subst j
          have hsrc := ih.1 (7 + m) (by omega)
          have hprev0 := ih.1 (6 + m) (by omega)
          have hspoke := ih.2 (7 + m) (by omega)
          have hprev : u (((7 + m : Nat) : ZMod n) - 1) ∈ upperBlue n (2 + m) := by
            have heq : (((7 + m : Nat) : ZMod n) - 1) = ((6 + m : Nat) : ZMod n) := by
              push_cast
              ring
            rw [heq]
            exact hprev0
          have hforce := outer_forward_mem_forceStep n (upperBlue n (2 + m))
            ((7 + m : Nat) : ZMod n) hsrc hprev hspoke
          have htarget :
              u ((8 + m : Nat) : ZMod n) ∈ forceStep n (upperBlue n (2 + m)) := by
            convert hforce using 1 <;> push_cast <;> ring
          rw [show 2 + (m + 1) = (2 + m) + 1 by omega]
          simpa only [upperBlue, Function.iterate_succ_apply'] using htarget
      · intro j hj
        by_cases hold : j ≤ 7 + m
        · have hjmem := ih.2 j hold
          exact upperBlue_subset_succ n (2 + m) (by
            simpa [Nat.add_assoc] using hjmem)
        · have hjnew : j = 8 + m := by omega
          subst j
          have hsrc := ih.2 (5 + m) (by omega)
          have hback0 := ih.2 (2 + m) (by omega)
          have hspoke := ih.1 (5 + m) (by omega)
          have hback : v (((5 + m : Nat) : ZMod n) - 3) ∈ upperBlue n (2 + m) := by
            have heq : (((5 + m : Nat) : ZMod n) - 3) = ((2 + m : Nat) : ZMod n) := by
              push_cast
              ring
            rw [heq]
            exact hback0
          have hforce := inner_forward_mem_forceStep n (upperBlue n (2 + m))
            ((5 + m : Nat) : ZMod n) hsrc hback hspoke
          have htarget :
              v ((8 + m : Nat) : ZMod n) ∈ forceStep n (upperBlue n (2 + m)) := by
            convert hforce using 1 <;> push_cast <;> ring
          rw [show 2 + (m + 1) = (2 + m) + 1 by omega]
          simpa only [upperBlue, Function.iterate_succ_apply'] using htarget

theorem upper_vertex_card (n : Nat) [NeZero n] :
    Fintype.card (Vertex n) = 2 * n := by
  have hLayer : Fintype.card Layer = 2 := by decide
  simp [Vertex, hLayer]

theorem upperSeed_forces
    (n : Nat) [NeZero n] (hn : 9 ≤ n) :
    IsZeroForcing n (upperSeed n) := by
  apply Finset.eq_univ_of_forall
  intro x
  rcases x with ⟨layer, i⟩
  have hprefix := upper_prefix_reached n (n - 8)
  have hival : i.val ≤ 7 + (n - 8) := by
    have hlt := ZMod.val_lt i
    omega
  have hxstage : (layer, i) ∈ upperBlue n (2 + (n - 8)) := by
    cases layer with
    | outer =>
        have h := hprefix.1 i.val hival
        simpa [u, ZMod.natCast_zmod_val i] using h
    | inner =>
        have h := hprefix.2 i.val hival
        simpa [v, ZMod.natCast_zmod_val i] using h
  have hround :
      2 + (n - 8) ≤ Fintype.card (Vertex n) := by
    rw [upper_vertex_card n]
    omega
  have hmono := upperBlue_mono_rounds n hround hxstage
  simpa [IsZeroForcing, closure, upperBlue] using hmono

theorem upper_bound
    (n : Nat) [NeZero n] (hn : 9 ≤ n) :
    Z n ≤ 8 := by
  have hforce : IsZeroForcing n (upperSeed n) := upperSeed_forces n hn
  rw [← upperSeed_card n hn]
  exact Z_le_card n hforce

end PetersenZeroForcing
