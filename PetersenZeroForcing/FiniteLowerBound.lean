import PetersenZeroForcing.FiniteReduction
import PetersenZeroForcing.FiniteScanChecked
import PetersenZeroForcing.FiniteScanChecked15
import PetersenZeroForcing.FiniteScanChecked18
import PetersenZeroForcing.FiniteScanChecked21
import PetersenZeroForcing.StructuralFixedCases

namespace PetersenZeroForcing

theorem lower_bound_finite
    (n : Nat) [NeZero n] (hn13 : 13 ≤ n) (hn21 : n ≤ 21) :
    8 ≤ Z n := by
  have hcases :
      n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨
      n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 := by omega
  rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact lower_bound_of_reducedScan 13 (by omega) FiniteScan.scan13_checked
  · exact lower_bound_14_structural
  · exact lower_bound_of_reducedScan 15 (by omega) FiniteScan.scan15_checked
  · exact lower_bound_16_structural
  · exact lower_bound_17_structural
  · exact lower_bound_of_reducedScan 18 (by omega) FiniteScan.scan18_checked
  · exact lower_bound_19_structural
  · exact lower_bound_20_structural
  · exact lower_bound_of_reducedScan 21 (by omega) FiniteScan.scan21_checked

end PetersenZeroForcing
