import PetersenZeroForcing.Certificate

namespace PetersenZeroForcing
namespace Certificate

theorem shape_row_checked (i : ShapeId) : shapeRowNatB i.1 = true := by
  have h : ∀ j ∈ List.range 38, shapeRowNatB j = true := by
    simpa [certificateShapesOKB] using certificate_shapes_checked
  exact h i.1 (List.mem_range.mpr i.2)

theorem shape_row_properties (i : ShapeId) :
    shapeClosedNatB i.1 = true ∧
    coordsOKNatB i.1 = true ∧
    (CertificateData.shapeByNat i.1).vertices.Nodup ∧
    (1 ≤ weight i ∧ weight i ≤ 7) ∧
    (shape i).card ≤ sizeBound (weight i) := by
  have h := shape_row_checked i
  simpa [shapeRowNatB, shape, weight, datum, shapeNat, weightNat] using h

theorem shape_closed (i : ShapeId) : StripClosed (shape i) := by
  intro x hx
  have hxlist : x ∈ (datum i).vertices := by
    have hnodup := (shape_row_properties i).2.2.1
    simpa [shape, hnodup] using hx
  have hcheck : shapeClosedNatB i.1 = true := (shape_row_properties i).1
  have hall : ∀ y ∈ (datum i).vertices, (stripNeighbors y \ shape i).card ≠ 1 := by
    simpa [shapeClosedNatB, shapeNat, shape, datum] using hcheck
  exact hall x hxlist

theorem shape_coord_bounds (i : ShapeId) {x : StripVertex} (hx : x ∈ shape i) :
    0 ≤ x.2 ∧ x.2 ≤ 18 := by
  have hxlist : x ∈ (datum i).vertices := by
    have hnodup := (shape_row_properties i).2.2.1
    simpa [shape, hnodup] using hx
  have hcheck : coordsOKNatB i.1 = true := (shape_row_properties i).2.1
  have hall : ∀ y ∈ (datum i).vertices, 0 ≤ y.2 ∧ y.2 ≤ 18 := by
    simpa [coordsOKNatB, datum] using hcheck
  exact hall x hxlist

theorem weight_pos (i : ShapeId) : 1 ≤ weight i :=
  (shape_row_properties i).2.2.2.1.1

theorem weight_le_seven (i : ShapeId) : weight i ≤ 7 :=
  (shape_row_properties i).2.2.2.1.2

theorem shape_card_le_sizeBound (i : ShapeId) :
    (shape i).card ≤ sizeBound (weight i) :=
  (shape_row_properties i).2.2.2.2

theorem merge_row_checked (m : CertificateData.MergeDatum)
    (hm : m ∈ CertificateData.merges) : mergeRowOKB m = true := by
  have hm' : m ∈ CertificateData.mergeGroups.flatten := by
    simpa [CertificateData.merges] using hm
  rcases List.mem_flatten.mp hm' with ⟨group, hgroup, hmgroup⟩
  have hgroups : ∀ g ∈ CertificateData.mergeGroups, g.all mergeRowOKB = true := by
    simpa [certificateMergeRowsOKB] using certificate_merge_rows_checked
  have hgroupAll := hgroups group hgroup
  have hrows : ∀ r ∈ group, mergeRowOKB r = true := by
    simpa using hgroupAll
  exact hrows m hmgroup

theorem merge_row_properties (m : CertificateData.MergeDatum)
    (hm : m ∈ CertificateData.merges) :
    (m.left < 38 ∧ m.right < 38 ∧ m.target < 38) ∧
    weightNat m.left + weightNat m.right ≤ 7 ∧
    touchesNatB m.left m.right m.shift = true ∧
    weightNat m.target ≤ weightNat m.left + weightNat m.right ∧
    shapeNat m.left ⊆ translateSet (shapeNat m.target) m.targetShift ∧
    translateSet (shapeNat m.right) m.shift ⊆
      translateSet (shapeNat m.target) m.targetShift := by
  have h := merge_row_checked m hm
  simpa [mergeRowOKB] using h

theorem certificate_key_groups_eq_expected :
    certificateKeyGroups = expectedKeyGroups := by
  have h :
      certificateKeyGroups = expectedKeyGroups ∧
      certificateKeyGroups.all keyGroupNodupB = true := by
    simpa [certificateKeysOKB] using certificate_keys_checked
  exact h.1

theorem certificate_keys_eq_expected : certificateKeys = expectedKeys := by
  have h := congrArg List.flatten certificate_key_groups_eq_expected
  simpa [certificateKeys, expectedKeys] using h

theorem touchesNatB_true_of_touch (a b : ShapeId) (t : ℤ)
    (htouch : StripTouches (shape a) (translateSet (shape b) t)) :
    touchesNatB a.1 b.1 t = true := by
  rcases htouch with ⟨x, hxa, y, hyb, hxy⟩
  rcases Finset.mem_image.mp hyb with ⟨y0, hy0, rfl⟩
  have hxl : x ∈ (datum a).vertices := by
    simpa [shape] using hxa
  have hy0l : y0 ∈ (datum b).vertices := by
    simpa [shape] using hy0
  simp only [touchesNatB, List.any_eq_true]
  refine ⟨x, hxl, ?_⟩
  refine ⟨translateVertex t y0, ?_, ?_⟩
  · simp [translatedVerticesNat, datum, hy0l]
  · simpa using hxy

theorem expected_key_mem_of_touch (a b : ShapeId) (s : ShiftId)
    (hweight : weight a + weight b ≤ 7)
    (htouch : StripTouches (shape a) (translateSet (shape b) (shiftValue s))) :
    MergeKey.mk a.1 b.1 (shiftValue s) ∈ expectedKeys := by
  have htb := touchesNatB_true_of_touch a b (shiftValue s) htouch
  simp only [expectedKeys, List.mem_flatMap]
  refine ⟨a.1, List.mem_range.mpr a.2, ?_⟩
  refine ⟨b.1, List.mem_range.mpr b.2, ?_⟩
  refine ⟨s.1, List.mem_range.mpr s.2, ?_⟩
  simp [shiftValue, shiftValueNat, weight, weightNat, datum, hweight, htb]

theorem exists_merge_witness (a b : ShapeId) (s : ShiftId)
    (hweight : weight a + weight b ≤ 7)
    (htouch : StripTouches (shape a) (translateSet (shape b) (shiftValue s))) :
    ∃ (c : ShapeId) (q : ℤ),
      weight c ≤ weight a + weight b ∧
      shape a ⊆ translateSet (shape c) q ∧
      translateSet (shape b) (shiftValue s) ⊆ translateSet (shape c) q := by
  let key : MergeKey := ⟨a.1, b.1, shiftValue s⟩
  have hexp : key ∈ expectedKeys := by
    exact expected_key_mem_of_touch a b s hweight htouch
  have hcert : key ∈ certificateKeys := by
    rw [certificate_keys_eq_expected]
    exact hexp
  rcases List.mem_map.mp hcert with ⟨m, hm, hmk⟩
  have hp := merge_row_properties m hm
  have hleft : m.left = a.1 := by
    have := congrArg MergeKey.left hmk
    simpa [mergeKeyOf, key] using this
  have hright : m.right = b.1 := by
    have := congrArg MergeKey.right hmk
    simpa [mergeKeyOf, key] using this
  have hshift : m.shift = shiftValue s := by
    have := congrArg MergeKey.shift hmk
    simpa [mergeKeyOf, key] using this
  let target : ShapeId := ⟨m.target, hp.1.2.2⟩
  refine ⟨target, m.targetShift, ?_, ?_, ?_⟩
  · simpa [target, weight, datum, weightNat, hleft, hright] using hp.2.2.2.1
  · simpa [target, shape, datum, shapeNat, hleft] using hp.2.2.2.2.1
  · simpa [target, shape, datum, shapeNat, hright, hshift] using hp.2.2.2.2.2

end Certificate
end PetersenZeroForcing
