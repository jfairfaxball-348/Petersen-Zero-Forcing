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

def expectedKeysForLeft (a : Nat) : List MergeKey :=
  (List.range 38).flatMap fun b =>
    (List.range 43).flatMap fun s =>
      let t := shiftValueNat s
      if decide (weightNat a + weightNat b ≤ 7) && touchesNatB a b t then
        [⟨a,b,t⟩]
      else
        []

def expectedKeyGroups : List (List MergeKey) := [
  expectedKeysForLeft 0,
  expectedKeysForLeft 1,
  expectedKeysForLeft 2,
  expectedKeysForLeft 3,
  expectedKeysForLeft 4,
  expectedKeysForLeft 5,
  expectedKeysForLeft 6,
  expectedKeysForLeft 7,
  expectedKeysForLeft 8,
  expectedKeysForLeft 9,
  expectedKeysForLeft 10,
  expectedKeysForLeft 11,
  expectedKeysForLeft 12,
  expectedKeysForLeft 13,
  expectedKeysForLeft 14,
  expectedKeysForLeft 15,
  expectedKeysForLeft 16,
  expectedKeysForLeft 17,
  expectedKeysForLeft 18,
  expectedKeysForLeft 19,
  expectedKeysForLeft 20,
  expectedKeysForLeft 21,
  expectedKeysForLeft 22,
  expectedKeysForLeft 23,
  expectedKeysForLeft 24,
  expectedKeysForLeft 25,
  expectedKeysForLeft 26,
  expectedKeysForLeft 27,
  expectedKeysForLeft 28,
  expectedKeysForLeft 29,
  expectedKeysForLeft 30,
  expectedKeysForLeft 31,
  expectedKeysForLeft 32,
  expectedKeysForLeft 33,
  expectedKeysForLeft 34,
  expectedKeysForLeft 35,
  expectedKeysForLeft 36,
  expectedKeysForLeft 37
]

def expectedKeys : List MergeKey :=
  expectedKeyGroups.flatten

def certificateKeyGroups : List (List MergeKey) :=
  CertificateData.mergeGroups.map fun group => group.map mergeKeyOf

def certificateKeys : List MergeKey :=
  certificateKeyGroups.flatten

def certificateDataOKB : Bool :=
  decide (CertificateData.shapes.length = 38) &&
  decide (CertificateData.mergeGroups.length = 38) &&
  decide ((CertificateData.mergeGroups.map (fun group => group.length)).sum = 1591)

def certificateShapesOKB : Bool :=
  (List.range 38).all shapeRowNatB

def certificateMergeRowsOKB : Bool :=
  CertificateData.mergeGroups.all fun group => group.all mergeRowOKB

def keyGroupNodupB (keys : List MergeKey) : Bool :=
  decide keys.Nodup

def certificateKeysOKB : Bool :=
  decide (certificateKeyGroups = expectedKeyGroups) &&
  certificateKeyGroups.all keyGroupNodupB

set_option maxRecDepth 2000 in
theorem certificate_data_checked : certificateDataOKB = true := by decide

set_option maxRecDepth 2000 in
theorem certificate_shapes_checked : certificateShapesOKB = true := by decide

set_option maxRecDepth 2000 in
theorem outer_singleton : shape ⟨0, by decide⟩ = {su 0} := by decide

set_option maxRecDepth 2000 in
theorem inner_singleton : shape ⟨1, by decide⟩ = {sv 0} := by decide

end Certificate
end PetersenZeroForcing
