import PetersenZeroForcing.CyclicCertificateData13

namespace PetersenZeroForcing

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem cyclic_certificate_13_checked :
    CyclicCertificate.checkedB 13 cyclicCertificate13 = true := by
  decide

theorem lower_bound_13_structural : 8 ≤ Z 13 := by
  exact lower_bound_of_cyclic_certificate_checked
    13 cyclicCertificate13 cyclic_certificate_13_checked

example : 8 ≤ Z 13 := by exact lower_bound_13_structural

end PetersenZeroForcing
