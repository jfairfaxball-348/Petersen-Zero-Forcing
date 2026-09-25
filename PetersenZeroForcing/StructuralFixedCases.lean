import PetersenZeroForcing.Structural19
import PetersenZeroForcing.CyclicCertificate

namespace PetersenZeroForcing

theorem lower_bound_of_all_projected_shapes_closed_checked
    (n : Nat) [NeZero n] (hn : 9 ≤ n)
    (hcheck : allProjectedShapesClosedB n = true) :
    8 ≤ Z n := by
  exact lower_bound_of_projected_certificate_closed n hn
    ((allProjectedShapesClosedB_eq_true n).1 hcheck)

set_option maxRecDepth 10000 in
theorem projected_shapes_closed_14_checked :
    allProjectedShapesClosedB 14 = true := by
  decide

set_option maxRecDepth 10000 in
theorem projected_shapes_closed_16_checked :
    allProjectedShapesClosedB 16 = true := by
  decide

set_option maxRecDepth 10000 in
theorem projected_shapes_closed_17_checked :
    allProjectedShapesClosedB 17 = true := by
  decide

set_option maxRecDepth 10000 in
theorem projected_shapes_closed_20_checked :
    allProjectedShapesClosedB 20 = true := by
  decide

theorem lower_bound_14_structural : 8 ≤ Z 14 := by
  exact lower_bound_of_all_projected_shapes_closed_checked
    14 (by omega) projected_shapes_closed_14_checked

theorem lower_bound_16_structural : 8 ≤ Z 16 := by
  exact lower_bound_of_all_projected_shapes_closed_checked
    16 (by omega) projected_shapes_closed_16_checked

theorem lower_bound_17_structural : 8 ≤ Z 17 := by
  exact lower_bound_of_all_projected_shapes_closed_checked
    17 (by omega) projected_shapes_closed_17_checked

theorem lower_bound_20_structural : 8 ≤ Z 20 := by
  exact lower_bound_of_all_projected_shapes_closed_checked
    20 (by omega) projected_shapes_closed_20_checked

example : 8 ≤ Z 14 := by exact lower_bound_14_structural
example : 8 ≤ Z 16 := by exact lower_bound_16_structural
example : 8 ≤ Z 17 := by exact lower_bound_17_structural
example : 8 ≤ Z 19 := by exact lower_bound_19_structural
example : 8 ≤ Z 20 := by exact lower_bound_20_structural

end PetersenZeroForcing
