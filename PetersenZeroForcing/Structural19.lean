import PetersenZeroForcing.LargeLowerBound
import PetersenZeroForcing.ProjectedShapeClosedCheck

namespace PetersenZeroForcing

set_option maxRecDepth 10000 in
theorem projected_shapes_closed_19_checked :
    allProjectedShapesClosedB 19 = true := by
  decide

theorem projected_shapes_closed_19
    (i : Certificate.ShapeId) :
    Closed 19 (projectSet 19 (Certificate.shape i)) := by
  exact (allProjectedShapesClosedB_eq_true 19).1
    projected_shapes_closed_19_checked i

theorem lower_bound_19_structural : 8 ≤ Z 19 := by
  exact lower_bound_of_projected_certificate_closed 19 (by omega)
    projected_shapes_closed_19

example : 8 ≤ Z 19 := by
  exact lower_bound_19_structural

end PetersenZeroForcing
