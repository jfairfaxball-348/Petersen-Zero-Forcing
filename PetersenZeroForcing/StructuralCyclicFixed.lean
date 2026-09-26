import PetersenZeroForcing.StructuralCyclic13
import PetersenZeroForcing.StructuralCyclic15
import PetersenZeroForcing.StructuralCyclic18

namespace PetersenZeroForcing

example : 8 ≤ Z 13 := by exact lower_bound_13_structural
example : 8 ≤ Z 15 := by exact lower_bound_15_structural
example : 8 ≤ Z 18 := by exact lower_bound_18_structural

end PetersenZeroForcing
