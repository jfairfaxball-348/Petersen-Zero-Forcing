import PetersenZeroForcing.FiniteScan
import PetersenZeroForcing.Projection

namespace PetersenZeroForcing

def projectedShapeClosedB
    (n : Nat) [NeZero n] (i : Certificate.ShapeId) : Bool :=
  FiniteScan.closedB n (projectSet n (Certificate.shape i))

def allProjectedShapesClosedB
    (n : Nat) [NeZero n] : Bool :=
  FiniteScan.allB (Finset.univ : Finset Certificate.ShapeId)
    (projectedShapeClosedB n)

theorem projectedShapeClosedB_eq_true
    (n : Nat) [NeZero n] (i : Certificate.ShapeId) :
    projectedShapeClosedB n i = true ↔
      Closed n (projectSet n (Certificate.shape i)) := by
  simpa [projectedShapeClosedB] using
    (FiniteScan.closedB_eq_true n (projectSet n (Certificate.shape i)))

theorem allProjectedShapesClosedB_eq_true
    (n : Nat) [NeZero n] :
    allProjectedShapesClosedB n = true ↔
      ∀ i : Certificate.ShapeId,
        Closed n (projectSet n (Certificate.shape i)) := by
  unfold allProjectedShapesClosedB
  rw [FiniteScan.allB_eq_true]
  constructor
  · intro h i
    exact (projectedShapeClosedB_eq_true n i).1
      (h i (Finset.mem_univ i))
  · intro h i _
    exact (projectedShapeClosedB_eq_true n i).2 (h i)

end PetersenZeroForcing
