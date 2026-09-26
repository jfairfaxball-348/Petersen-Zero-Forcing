import PetersenZeroForcing.CyclicMergeWitnessData18

namespace PetersenZeroForcing

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem cyclic_certificate_18_witness_checked :
    CyclicCertificate.checkedWithWitnessB 18 cyclicCertificate18
      cyclicMergeWitness18 = true := by
  decide

theorem cyclic_certificate_18_checked :
    CyclicCertificate.checkedB 18 cyclicCertificate18 = true := by
  exact CyclicCertificate.checkedB_eq_true_of_checkedWithWitnessB
    18 cyclicCertificate18 cyclicMergeWitness18
      cyclic_certificate_18_witness_checked

theorem lower_bound_18_structural : 8 ≤ Z 18 := by
  exact lower_bound_of_cyclic_certificate_checked
    18 cyclicCertificate18 cyclic_certificate_18_checked

example : 8 ≤ Z 18 := by exact lower_bound_18_structural

end PetersenZeroForcing
