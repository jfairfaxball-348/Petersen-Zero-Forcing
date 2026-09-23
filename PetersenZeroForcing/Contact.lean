import PetersenZeroForcing.Projection

namespace PetersenZeroForcing

theorem certified_touch_shift_bounds (a b : Certificate.ShapeId) (t : ℤ)
    (htouch : StripTouches (Certificate.shape a)
      (translateSet (Certificate.shape b) t)) :
    -21 ≤ t ∧ t ≤ 21 := by
  rcases htouch with ⟨x, hxa, y, hyb, hxy⟩
  rcases Finset.mem_image.mp hyb with ⟨y0, hy0, rfl⟩
  have hxc := Certificate.shape_coord_bounds a hxa
  have hyc := Certificate.shape_coord_bounds b hy0
  rcases hxy with hxy | hxy
  · have hc := congrArg Prod.snd hxy
    simp [translateVertex] at hc
    omega
  · have hi := stripNeighbor_coord_interval hxy
    simp [translateVertex] at hi
    omega

theorem exists_certificate_merge_for_touch
    (a b : Certificate.ShapeId) (t : ℤ)
    (hweight : Certificate.weight a + Certificate.weight b ≤ 7)
    (htouch : StripTouches (Certificate.shape a)
      (translateSet (Certificate.shape b) t)) :
    ∃ (c : Certificate.ShapeId) (q : ℤ),
      Certificate.weight c ≤ Certificate.weight a + Certificate.weight b ∧
      Certificate.shape a ⊆ translateSet (Certificate.shape c) q ∧
      translateSet (Certificate.shape b) t ⊆ translateSet (Certificate.shape c) q := by
  have ht := certified_touch_shift_bounds a b t htouch
  have hnon : 0 ≤ t + 21 := by omega
  have hnat : (((t + 21).toNat : Nat) : ℤ) = t + 21 := by
    simp [Int.toNat_of_nonneg hnon]
  have hlt : (t + 21).toNat < 43 := by omega
  let s : Certificate.ShiftId := ⟨(t + 21).toNat, hlt⟩
  have hs : Certificate.shiftValue s = t := by
    simp [Certificate.shiftValue, s, Int.toNat_of_nonneg hnon]
  have h :=
    Certificate.exists_merge_witness a b s hweight
      (by simpa [hs] using htouch)
  simpa [hs] using h

end PetersenZeroForcing
