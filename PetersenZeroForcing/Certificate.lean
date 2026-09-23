import PetersenZeroForcing.CertificateData

namespace PetersenZeroForcing
namespace Certificate

abbrev ShapeId := Fin 38
abbrev ShiftId := Fin 43

structure MergeKey where
  left : Nat
  right : Nat
  shift : ℤ
  deriving DecidableEq, Repr

def datum (i : ShapeId) : CertificateData.ShapeDatum :=
  CertificateData.shapeByNat i.1

def shape (i : ShapeId) : Finset StripVertex := (datum i).vertices.toFinset
def weight (i : ShapeId) : Nat := (datum i).weight

def shapeNat (i : Nat) : Finset StripVertex :=
  (CertificateData.shapeByNat i).vertices.toFinset

def weightNat (i : Nat) : Nat :=
  (CertificateData.shapeByNat i).weight

def sizeBound : Nat → Nat
  | 1 => 1
  | 2 => 2
  | 3 => 4
  | 4 => 6
  | 5 => 8
  | 6 => 12
  | 7 => 16
  | _ => 0

def shiftValueNat (s : Nat) : ℤ := (s : ℤ) - 21
def shiftValue (s : ShiftId) : ℤ := shiftValueNat s.1

def translatedVerticesNat (i : Nat) (t : ℤ) : List StripVertex :=
  (CertificateData.shapeByNat i).vertices.map (translateVertex t)

def touchesNatB (a b : Nat) (t : ℤ) : Bool :=
  (CertificateData.shapeByNat a).vertices.any fun x =>
    (translatedVerticesNat b t).any fun y =>
      decide (x = y ∨ y ∈ stripNeighbors x)

def shapeClosedNatB (i : Nat) : Bool :=
  (CertificateData.shapeByNat i).vertices.all fun x =>
    decide ((stripNeighbors x \ shapeNat i).card ≠ 1)

def coordsOKNatB (i : Nat) : Bool :=
  (CertificateData.shapeByNat i).vertices.all fun x =>
    decide (0 ≤ x.2 ∧ x.2 ≤ 18)

def shapeRowNatB (i : Nat) : Bool :=
  shapeClosedNatB i &&
  coordsOKNatB i &&
  decide ((CertificateData.shapeByNat i).vertices.Nodup) &&
  decide (1 ≤ weightNat i ∧ weightNat i ≤ 7) &&
  decide ((shapeNat i).card ≤ sizeBound (weightNat i))

def mergeKeyOf (m : CertificateData.MergeDatum) : MergeKey :=
  ⟨m.left, m.right, m.shift⟩

def mergeRowOKB (m : CertificateData.MergeDatum) : Bool :=
  decide (m.left < 38 ∧ m.right < 38 ∧ m.target < 38) &&
  decide (weightNat m.left + weightNat m.right ≤ 7) &&
  touchesNatB m.left m.right m.shift &&
  decide (weightNat m.target ≤ weightNat m.left + weightNat m.right) &&
  decide (shapeNat m.left ⊆ translateSet (shapeNat m.target) m.targetShift) &&
  decide (translateSet (shapeNat m.right) m.shift ⊆
    translateSet (shapeNat m.target) m.targetShift)

def expectedKeys : List MergeKey :=
  (List.range 38).flatMap fun a =>
    (List.range 38).flatMap fun b =>
      (List.range 43).flatMap fun s =>
        let t := shiftValueNat s
        if decide (weightNat a + weightNat b ≤ 7) && touchesNatB a b t then
          [⟨a,b,t⟩]
        else
          []

def certificateKeys : List MergeKey :=
  CertificateData.merges.map mergeKeyOf

def certificateDataOKB : Bool :=
  decide (CertificateData.shapes.length = 38) &&
  decide (CertificateData.merges.length = 1591)

def certificateShapesOKB : Bool :=
  (List.range 38).all shapeRowNatB

def certificateMergeRowsOKB : Bool :=
  CertificateData.merges.all mergeRowOKB

def certificateKeysOKB : Bool :=
  decide (certificateKeys = expectedKeys) &&
  decide certificateKeys.Nodup

theorem certificate_data_checked : certificateDataOKB = true := by decide

theorem certificate_shapes_checked : certificateShapesOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem certificate_merge_rows_checked : certificateMergeRowsOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem certificate_keys_checked : certificateKeysOKB = true := by decide

theorem outer_singleton : shape ⟨0, by decide⟩ = {su 0} := by decide
theorem inner_singleton : shape ⟨1, by decide⟩ = {sv 0} := by decide

end Certificate
end PetersenZeroForcing
