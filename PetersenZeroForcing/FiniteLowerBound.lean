import PetersenZeroForcing.StructuralFixedCases

namespace PetersenZeroForcing

theorem lower_bound_finite
    (n : Nat) [NeZero n] (hn13 : 13 ≤ n) (hn21 : n ≤ 21) :
    8 ≤ Z n := by
  have hcases :
      n = 13 ∨ n = 14 ∨ n = 15 ∨ n = 16 ∨ n = 17 ∨
      n = 18 ∨ n = 19 ∨ n = 20 ∨ n = 21 := by omega
  rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact lower_bound_13_structural
  · exact lower_bound_14_structural
  · exact lower_bound_15_structural
  · exact lower_bound_16_structural
  · exact lower_bound_17_structural
  · exact lower_bound_18_structural
  · exact lower_bound_19_structural
  · exact lower_bound_20_structural
  · exact lower_bound_21_structural

end PetersenZeroForcing
