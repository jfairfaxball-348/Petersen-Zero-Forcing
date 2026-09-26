import PetersenZeroForcing.FiniteLowerBound
import PetersenZeroForcing.LargeLowerBound
import PetersenZeroForcing.UpperBound

namespace PetersenZeroForcing

/-- The zero-forcing number of P(n,3) is exactly eight for every n >= 13. -/
theorem zero_forcing_number_eq_eight
    (n : Nat) [NeZero n] (hn13 : 13 ≤ n) :
    Z n = 8 := by
  apply Nat.le_antisymm
  · exact upper_bound n (by omega)
  · by_cases hn21 : n ≤ 21
    · exact lower_bound_finite n hn13 hn21
    · exact lower_bound_large n (by omega)

end PetersenZeroForcing
