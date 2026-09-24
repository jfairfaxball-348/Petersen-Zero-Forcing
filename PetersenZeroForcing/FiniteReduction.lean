import PetersenZeroForcing.FiniteScan
import PetersenZeroForcing.Rotation
import PetersenZeroForcing.ForcingMonotone

namespace PetersenZeroForcing

theorem finite_vertex_card (n : Nat) [NeZero n] :
    Fintype.card (Vertex n) = 2 * n := by
  have hLayer : Fintype.card Layer = 2 := by decide
  simp [Vertex, hLayer, NeZero.ne n]

theorem zmod_natCast_ne_zero_of_pos_of_lt
    (n k : Nat) [NeZero n] (hkpos : 0 < k) (hklt : k < n) :
    (k : ZMod n) ≠ 0 := by
  intro h
  have hv : k = 0 := by
    calc
      k = (k : ZMod n).val := (ZMod.val_cast_of_lt hklt).symm
      _ = (0 : ZMod n).val := congrArg ZMod.val h
      _ = 0 := by simp
  omega

theorem vertex_not_mem_neighbors
    (n : Nat) [NeZero n] (hn : 13 ≤ n) (x : Vertex n) :
    x ∉ neighbors n x := by
  rcases x with ⟨layer, i⟩
  cases layer
  · have h1 : ((1 : Nat) : ZMod n) ≠ 0 :=
      zmod_natCast_ne_zero_of_pos_of_lt n 1 (by omega) (by omega)
    have hm : i - 1 ≠ i := by
      intro h
      apply h1
      calc
        ((1 : Nat) : ZMod n) = i - (i - 1) := by ring
        _ = 0 := by rw [h]; ring
    have hp : i + 1 ≠ i := by
      intro h
      apply h1
      calc
        ((1 : Nat) : ZMod n) = (i + 1) - i := by ring
        _ = 0 := by rw [h]; ring
    simp [neighbors, u, v, hm, hp, Ne.symm hm, Ne.symm hp, h1]
  · have h3 : ((3 : Nat) : ZMod n) ≠ 0 :=
      zmod_natCast_ne_zero_of_pos_of_lt n 3 (by omega) (by omega)
    have hm : i - 3 ≠ i := by
      intro h
      apply h3
      calc
        ((3 : Nat) : ZMod n) = i - (i - 3) := by ring
        _ = 0 := by rw [h]; ring
    have hp : i + 3 ≠ i := by
      intro h
      apply h3
      calc
        ((3 : Nat) : ZMod n) = (i + 3) - i := by ring
        _ = 0 := by rw [h]; ring
    simp [neighbors, u, v, hm, hp, Ne.symm hm, Ne.symm hp, h3]

theorem neighbors_card_three
    (n : Nat) [NeZero n] (hn : 13 ≤ n) (x : Vertex n) :
    (neighbors n x).card = 3 := by
  rcases x with ⟨layer, i⟩
  cases layer
  · have h2 : ((2 : Nat) : ZMod n) ≠ 0 :=
      zmod_natCast_ne_zero_of_pos_of_lt n 2 (by omega) (by omega)
    have hne : i - 1 ≠ i + 1 := by
      intro h
      apply h2
      calc
        ((2 : Nat) : ZMod n) = (i + 1) - (i - 1) := by ring
        _ = 0 := by rw [← h]; ring
    simp [neighbors, u, v, hne, Ne.symm hne]
  · have h6 : ((6 : Nat) : ZMod n) ≠ 0 :=
      zmod_natCast_ne_zero_of_pos_of_lt n 6 (by omega) (by omega)
    have hne : i - 3 ≠ i + 3 := by
      intro h
      apply h6
      calc
        ((6 : Nat) : ZMod n) = (i + 3) - (i - 3) := by ring
        _ = 0 := by rw [← h]; ring
    simp [neighbors, u, v, hne, Ne.symm hne]

theorem exists_first_force_source
    (n : Nat) [NeZero n] (hn : 13 ≤ n)
    {S : Finset (Vertex n)}
    (hforce : IsZeroForcing n S) (hcard : S.card ≤ 7) :
    ∃ x ∈ S, (neighbors n x \ S).card = 1 := by
  by_contra hnone
  push_neg at hnone
  have hclosed : Closed n S := by
    intro x hx
    exact hnone x hx
  have hcl : closure n S ⊆ S :=
    closure_subset_of_closed n (fun _ hx => hx) hclosed
  have hforce' :
      closure n S = (Finset.univ : Finset (Vertex n)) := hforce
  have huniv : (Finset.univ : Finset (Vertex n)) ⊆ S := by
    intro x hx
    apply hcl
    rw [hforce']
    exact hx
  have hc := Finset.card_le_card huniv
  have hc' : 2 * n ≤ S.card := by
    simpa [finite_vertex_card n] using hc
  omega

theorem small_forcing_has_scanned_superset
    (n : Nat) [NeZero n] (hn : 13 ≤ n)
    {S : Finset (Vertex n)}
    (hforce : IsZeroForcing n S) (hcard : S.card ≤ 7) :
    ∃ (r : ZMod n) (base extra : Finset (Vertex n)),
      base ∈ FiniteScan.bases n ∧
      extra ∈ ((Finset.univ : Finset (Vertex n)) \ base).powersetCard 4 ∧
      rotateSet n r S ⊆ base ∪ extra := by
  rcases exists_first_force_source n hn hforce hcard with
    ⟨x, hxS, hxwhite⟩
  let r : ZMod n := -x.2
  let S' : Finset (Vertex n) := rotateSet n r S
  let source : Vertex n := rotateEquiv n r x
  have hsourceS : source ∈ S' := by
    simpa [source, S'] using (mem_rotateSet n r S x).2 hxS
  have hsourceNorm : source = u 0 ∨ source = v 0 := by
    rcases x with ⟨layer, i⟩
    cases layer
    · left
      simp [source, r, rotateEquiv, u]
    · right
      simp [source, r, rotateEquiv, v]
  have hsourceSources : source ∈ FiniteScan.sources n := by
    rcases hsourceNorm with h | h
    · simp [FiniteScan.sources, h]
    · simp [FiniteScan.sources, h]
  have hxwhite' : (whiteNeighbors n S x).card = 1 := by
    simpa [whiteNeighbors] using hxwhite
  have hcardRotate :=
    congrArg Finset.card (whiteNeighbors_rotate n r S x)
  have hwhiteEq :
      (whiteNeighbors n S x).card =
        (whiteNeighbors n S' source).card := by
    simpa [S', source] using hcardRotate
  have hsourceWhite :
      (neighbors n source \ S').card = 1 := by
    change (whiteNeighbors n S' source).card = 1
    rw [← hwhiteEq]
    exact hxwhite'
  let pair : Finset (Vertex n) := neighbors n source ∩ S'
  have hpairSubset :
      pair ⊆ neighbors n source := by
    intro z hz
    exact Finset.mem_inter.mp hz |>.1
  have hpairSubsetS :
      pair ⊆ S' := by
    intro z hz
    exact Finset.mem_inter.mp hz |>.2
  have hpartition :=
    Finset.card_sdiff_add_card_inter (neighbors n source) S'
  have hpairCard : pair.card = 2 := by
    change (neighbors n source ∩ S').card = 2
    rw [hsourceWhite, neighbors_card_three n hn source] at hpartition
    omega
  have hpairPowerset :
      pair ∈ (neighbors n source).powersetCard 2 :=
    Finset.mem_powersetCard.mpr ⟨hpairSubset, hpairCard⟩
  let base : Finset (Vertex n) := insert source pair
  have hbaseMem : base ∈ FiniteScan.bases n := by
    apply Finset.mem_biUnion.mpr
    refine ⟨source, hsourceSources, ?_⟩
    exact Finset.mem_image.mpr ⟨pair, hpairPowerset, rfl⟩
  have hsourceNotPair : source ∉ pair := by
    intro hs
    exact vertex_not_mem_neighbors n hn source (hpairSubset hs)
  have hbaseCard : base.card = 3 := by
    simp [base, hsourceNotPair, hpairCard]
  have hbaseSubsetS : base ⊆ S' := by
    intro z hz
    rcases Finset.mem_insert.mp hz with rfl | hz
    · exact hsourceS
    · exact hpairSubsetS hz
  have hS'card : S'.card = S.card := by
    simpa [S'] using card_rotateSet n r S
  have hS'le : S'.card ≤ 7 := by
    rw [hS'card]
    exact hcard
  let rem : Finset (Vertex n) := S' \ base
  let ambient : Finset (Vertex n) :=
    (Finset.univ : Finset (Vertex n)) \ base
  have hremAmbient : rem ⊆ ambient := by
    intro z hz
    rcases Finset.mem_sdiff.mp hz with ⟨_, hzb⟩
    exact Finset.mem_sdiff.mpr ⟨Finset.mem_univ z, hzb⟩
  have hremCard : rem.card ≤ 4 := by
    have heq : rem.card = S'.card - base.card := by
      simpa [rem] using Finset.card_sdiff hbaseSubsetS
    rw [heq, hbaseCard]
    omega
  have hambientCard : 4 ≤ ambient.card := by
    have hbaseUniv :
        base ⊆ (Finset.univ : Finset (Vertex n)) :=
      Finset.subset_univ base
    have heq :
        ambient.card =
          (Finset.univ : Finset (Vertex n)).card - base.card := by
      simpa [ambient] using Finset.card_sdiff hbaseUniv
    rw [heq, hbaseCard]
    simp [finite_vertex_card n]
    omega
  rcases Finset.exists_subsuperset_card_eq
      hremAmbient hremCard hambientCard with
    ⟨extra, hremExtra, hextraAmbient, hextraCard⟩
  have hextraMem :
      extra ∈ ((Finset.univ : Finset (Vertex n)) \ base).powersetCard 4 := by
    apply Finset.mem_powersetCard.mpr
    exact ⟨by simpa [ambient] using hextraAmbient, hextraCard⟩
  have hcover : S' ⊆ base ∪ extra := by
    intro z hz
    by_cases hzb : z ∈ base
    · exact Finset.mem_union_left _ hzb
    · exact Finset.mem_union_right _ (hremExtra (Finset.mem_sdiff.mpr ⟨hz, hzb⟩))
  exact ⟨r, base, extra, hbaseMem, hextraMem, by simpa [S'] using hcover⟩

theorem reducedScan_excludes_small_forcing
    (n : Nat) [NeZero n] (hn : 13 ≤ n)
    (hscan : FiniteScan.reducedScanB n = true)
    {S : Finset (Vertex n)} (hcard : S.card ≤ 7) :
    ¬ IsZeroForcing n S := by
  intro hforce
  rcases small_forcing_has_scanned_superset n hn hforce hcard with
    ⟨r, base, extra, hbase, hextra, hsub⟩
  have hrot : IsZeroForcing n (rotateSet n r S) :=
    (isZeroForcing_rotate_iff n r S).2 hforce
  have hbig : IsZeroForcing n (base ∪ extra) :=
    isZeroForcing_mono n hsub hrot
  have hnot :=
    FiniteScan.reducedScanB_spec n hscan hbase hextra
  exact hnot hbig

theorem lower_bound_of_reducedScan
    (n : Nat) [NeZero n] (hn : 13 ≤ n)
    (hscan : FiniteScan.reducedScanB n = true) :
    8 ≤ Z n := by
  apply le_Z_of_forcing_card_lower_bound n
  intro S hforce
  by_contra h
  have hcard : S.card ≤ 7 := by omega
  exact (reducedScan_excludes_small_forcing n hn hscan hcard) hforce

end PetersenZeroForcing
