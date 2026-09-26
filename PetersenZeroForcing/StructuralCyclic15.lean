import PetersenZeroForcing.CyclicCertificateData15

namespace PetersenZeroForcing

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem cyclic_certificate_15_checked :
    CyclicCertificate.checkedB 15 cyclicCertificate15 = true := by
  decide

theorem lower_bound_15_structural : 8 ≤ Z 15 := by
  exact lower_bound_of_cyclic_certificate_checked
    15 cyclicCertificate15 cyclic_certificate_15_checked

example : 8 ≤ Z 15 := by exact lower_bound_15_structural

end PetersenZeroForcing
