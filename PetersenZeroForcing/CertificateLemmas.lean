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
  have h : ∀ r ∈ CertificateData.merges, mergeRowOKB r = true := by
    simpa [certificateMergeRowsOKB] using certificate_merge_rows_checked
  exact h m hm

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

theorem certificate_keys_eq_expected : certificateKeys = expectedKeys := by
  have h : certificateKeys = expectedKeys ∧ certificateKeys.Nodup := by
    simpa [certificateKeysOKB] using certificate_keys_checked
  exact h.1

theorem certificate_keys_nodup : certificateKeys.Nodup := by
  have h : certificateKeys = expectedKeys ∧ certificateKeys.Nodup := by
    simpa [certificateKeysOKB] using certificate_keys_checked
  exact h.2

end Certificate
end PetersenZeroForcing
