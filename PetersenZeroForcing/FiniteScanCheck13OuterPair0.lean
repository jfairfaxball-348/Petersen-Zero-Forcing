import PetersenZeroForcing.FiniteScanCheck13OuterPair0Q00
import PetersenZeroForcing.FiniteScanCheck13OuterPair0Q01
import PetersenZeroForcing.FiniteScanCheck13OuterPair0Q10
import PetersenZeroForcing.FiniteScanCheck13OuterPair0Q11

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_outer_pair0_cert_checked :
    pairCertScanB 13 (u 0) (outerPair0 13) = true :=
  pairCertScanB_of_quarters 13 (u 0) (outerPair0 13)
    scan13_outer_pair0_q00_cert_checked
    scan13_outer_pair0_q01_cert_checked
    scan13_outer_pair0_q10_cert_checked
    scan13_outer_pair0_q11_cert_checked

theorem scan13_outer_pair0_checked :
    pairScanB 13 (u 0) (outerPair0 13) = true :=
  pairScanB_of_certScan 13 (u 0) (outerPair0 13)
    scan13_outer_pair0_cert_checked

end FiniteScan
end PetersenZeroForcing
