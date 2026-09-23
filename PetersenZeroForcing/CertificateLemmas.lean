import PetersenZeroForcing.Certificate

namespace PetersenZeroForcing
namespace Certificate

theorem row_checked (i : ShapeId) : shapeRowOKB i = true := by
  have h : ∀ j : ShapeId, shapeRowOKB j = true := by
    simpa [certificateRowsOKB] using certificate_rows_checked
  exact h i

theorem row_properties (i : ShapeId) :
    shapeClosedB i = true ∧
    coordsOKB i = true ∧
    (1 ≤ weight i ∧ weight i ≤ 7) ∧
    (shape i).card ≤ sizeBound (weight i) := by
  simpa [shapeRowOKB] using row_checked i

theorem shape_closed (i : ShapeId) : StripClosed (shape i) := by
  intro x hx
  have hxlist : x ∈ (datum i).vertices := by
    simpa [shape] using hx
  have hcheck : shapeClosedB i = true := (row_properties i).1
  have hall : ∀ y ∈ (datum i).vertices, (stripNeighbors y \ shape i).card ≠ 1 := by
    simpa [shapeClosedB] using hcheck
  exact hall x hxlist

theorem shape_coord_bounds (i : ShapeId) {x : StripVertex} (hx : x ∈ shape i) :
    0 ≤ x.2 ∧ x.2 ≤ 18 := by
  have hxlist : x ∈ (datum i).vertices := by
    simpa [shape] using hx
  have hcheck : coordsOKB i = true := (row_properties i).2.1
  have hall : ∀ y ∈ (datum i).vertices, 0 ≤ y.2 ∧ y.2 ≤ 18 := by
    simpa [coordsOKB] using hcheck
  exact hall x hxlist

theorem weight_pos (i : ShapeId) : 1 ≤ weight i :=
  (row_properties i).2.2.1.1

theorem weight_le_seven (i : ShapeId) : weight i ≤ 7 :=
  (row_properties i).2.2.1.2

theorem shape_card_le_sizeBound (i : ShapeId) :
    (shape i).card ≤ sizeBound (weight i) :=
  (row_properties i).2.2.2

theorem merge_key_checked (a b : ShapeId) (s : ShiftId) :
    mergeKeyOKB a b s = true := by
  have h : ∀ a' : ShapeId, ∀ b' : ShapeId, ∀ s' : ShiftId,
      mergeKeyOKB a' b' s' = true := by
    simpa [certificateMergesOKB] using certificate_merges_checked
  exact h a b s

theorem merge_key_some_valid (a b : ShapeId) (s : ShiftId)
    {c : Nat} {q : ℤ} (hlookup : mergeByKey a.1 b.1 s.1 = some (c,q)) :
    mergeExpectedB a b s = true ∧ mergeWitnessOKB a b s c q = true := by
  have h := merge_key_checked a b s
  simp [mergeKeyOKB, hlookup] at h
  exact h

theorem merge_witness_properties (a b : ShapeId) (s : ShiftId)
    {c : Nat} {q : ℤ} (hlookup : mergeByKey a.1 b.1 s.1 = some (c,q)) :
    c < 38 ∧
    (CertificateData.shapeByNat c).weight ≤ weight a + weight b ∧
    shape a ⊆ translateSet (CertificateData.shapeByNat c).vertices.toFinset q ∧
    translateSet (shape b) (shiftValue s) ⊆
      translateSet (CertificateData.shapeByNat c).vertices.toFinset q := by
  have h := (merge_key_some_valid a b s hlookup).2
  simpa [mergeWitnessOKB] using h

end Certificate
end PetersenZeroForcing
