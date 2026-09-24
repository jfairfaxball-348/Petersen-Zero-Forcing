import PetersenZeroForcing.FiniteReduction
import PetersenZeroForcing.FiniteScanChecked
import PetersenZeroForcing.FiniteScanChecked14
import PetersenZeroForcing.FiniteScanChecked15

namespace PetersenZeroForcing

theorem lower_bound_finite
    (n : Nat) [NeZero n] (hn13 : 13 ≤ n) (hn15 : n ≤ 15) :
    8 ≤ Z n := by
  have hcases : n = 13 ∨ n = 14 ∨ n = 15 := by omega
  rcases hcases with rfl | rfl | rfl
  · exact lower_bound_of_reducedScan 13 (by omega) FiniteScan.scan13_checked
  · exact lower_bound_of_reducedScan 14 (by omega) FiniteScan.scan14_checked
  · exact lower_bound_of_reducedScan 15 (by omega) FiniteScan.scan15_checked

end PetersenZeroForcing
