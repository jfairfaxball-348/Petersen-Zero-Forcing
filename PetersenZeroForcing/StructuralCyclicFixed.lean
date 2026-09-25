import PetersenZeroForcing.CyclicCertificateData13
import PetersenZeroForcing.CyclicCertificateData15
import PetersenZeroForcing.CyclicCertificateData18

namespace PetersenZeroForcing

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem cyclic_certificate_13_checked :
    CyclicCertificate.checkedB 13 cyclicCertificate13 = true := by
  decide

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem cyclic_certificate_15_checked :
    CyclicCertificate.checkedB 15 cyclicCertificate15 = true := by
  decide

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem cyclic_certificate_18_checked :
    CyclicCertificate.checkedB 18 cyclicCertificate18 = true := by
  decide

theorem lower_bound_13_structural : 8 ≤ Z 13 := by
  exact lower_bound_of_cyclic_certificate_checked
    13 cyclicCertificate13 cyclic_certificate_13_checked

theorem lower_bound_15_structural : 8 ≤ Z 15 := by
  exact lower_bound_of_cyclic_certificate_checked
    15 cyclicCertificate15 cyclic_certificate_15_checked

theorem lower_bound_18_structural : 8 ≤ Z 18 := by
  exact lower_bound_of_cyclic_certificate_checked
    18 cyclicCertificate18 cyclic_certificate_18_checked

example : 8 ≤ Z 13 := by exact lower_bound_13_structural
example : 8 ≤ Z 15 := by exact lower_bound_15_structural
example : 8 ≤ Z 18 := by exact lower_bound_18_structural

end PetersenZeroForcing
