import PetersenZeroForcing.FiniteScanCheck13InnerPair1Q00
import PetersenZeroForcing.FiniteScanCheck13InnerPair1Q01
import PetersenZeroForcing.FiniteScanCheck13InnerPair1Q10
import PetersenZeroForcing.FiniteScanCheck13InnerPair1Q11

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_inner_pair1_cert_checked :
    pairCertScanB 13 (v 0) (innerPair1 13) = true :=
  pairCertScanB_of_quarters 13 (v 0) (innerPair1 13)
    scan13_inner_pair1_q00_cert_checked
    scan13_inner_pair1_q01_cert_checked
    scan13_inner_pair1_q10_cert_checked
    scan13_inner_pair1_q11_cert_checked

theorem scan13_inner_pair1_checked :
    pairScanB 13 (v 0) (innerPair1 13) = true :=
  pairScanB_of_certScan 13 (v 0) (innerPair1 13)
    scan13_inner_pair1_cert_checked

end FiniteScan
end PetersenZeroForcing
