import PetersenZeroForcing.FiniteScanCheck15OuterPair1O111H1Q0
import PetersenZeroForcing.FiniteScanCheck15OuterPair1O111H1Q1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_outer_pair1_o111_h1_cert_checked :
    pairCertScanOctantHalfB 15 (u 0) (outerPair1 15)
      true true true true = true :=
  pairCertScanOctantHalfB_of_quarters 15 (u 0) (outerPair1 15)
    true true true true
    scan15_outer_pair1_o111_h1_q0_cert_checked
    scan15_outer_pair1_o111_h1_q1_cert_checked

end FiniteScan
end PetersenZeroForcing
