import PetersenZeroForcing.CyclicCertificateData18

namespace PetersenZeroForcing

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem cyclic_certificate_18_checked :
    CyclicCertificate.checkedB 18 cyclicCertificate18 = true := by
  decide

theorem lower_bound_18_structural : 8 ≤ Z 18 := by
  exact lower_bound_of_cyclic_certificate_checked
    18 cyclicCertificate18 cyclic_certificate_18_checked

example : 8 ≤ Z 18 := by exact lower_bound_18_structural

end PetersenZeroForcing
