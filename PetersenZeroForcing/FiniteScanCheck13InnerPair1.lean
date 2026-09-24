import PetersenZeroForcing.FiniteScanCheck13InnerPair1Even
import PetersenZeroForcing.FiniteScanCheck13InnerPair1Odd

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_inner_pair1_cert_checked :
    pairCertScanB 13 (v 0) (innerPair1 13) = true :=
  pairCertScanB_of_parity 13 (v 0) (innerPair1 13)
    scan13_inner_pair1_even_cert_checked scan13_inner_pair1_odd_cert_checked

theorem scan13_inner_pair1_checked :
    pairScanB 13 (v 0) (innerPair1 13) = true :=
  pairScanB_of_certScan 13 (v 0) (innerPair1 13)
    scan13_inner_pair1_cert_checked

end FiniteScan
end PetersenZeroForcing
