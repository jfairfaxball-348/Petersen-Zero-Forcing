import PetersenZeroForcing.FiniteScanCheck13OuterPair1Q00
import PetersenZeroForcing.FiniteScanCheck13OuterPair1Q01
import PetersenZeroForcing.FiniteScanCheck13OuterPair1Q10
import PetersenZeroForcing.FiniteScanCheck13OuterPair1Q11

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_outer_pair1_cert_checked :
    pairCertScanB 13 (u 0) (outerPair1 13) = true :=
  pairCertScanB_of_quarters 13 (u 0) (outerPair1 13)
    scan13_outer_pair1_q00_cert_checked
    scan13_outer_pair1_q01_cert_checked
    scan13_outer_pair1_q10_cert_checked
    scan13_outer_pair1_q11_cert_checked

theorem scan13_outer_pair1_checked :
    pairScanB 13 (u 0) (outerPair1 13) = true :=
  pairScanB_of_certScan 13 (u 0) (outerPair1 13)
    scan13_outer_pair1_cert_checked

end FiniteScan
end PetersenZeroForcing
