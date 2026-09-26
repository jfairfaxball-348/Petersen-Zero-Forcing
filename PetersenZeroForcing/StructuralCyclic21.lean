import PetersenZeroForcing.CyclicMergeWitnessData21

namespace PetersenZeroForcing

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem cyclic_certificate_21_witness_checked :
    CyclicCertificate.checkedWithWitnessB 21 cyclicCertificate21
      cyclicMergeWitness21 = true := by
  decide

theorem cyclic_certificate_21_checked :
    CyclicCertificate.checkedB 21 cyclicCertificate21 = true := by
  exact CyclicCertificate.checkedB_eq_true_of_checkedWithWitnessB
    21 cyclicCertificate21 cyclicMergeWitness21
      cyclic_certificate_21_witness_checked

theorem lower_bound_21_structural : 8 ≤ Z 21 := by
  exact lower_bound_of_cyclic_certificate_checked
    21 cyclicCertificate21 cyclic_certificate_21_checked

example : 8 ≤ Z 21 := by exact lower_bound_21_structural

end PetersenZeroForcing
