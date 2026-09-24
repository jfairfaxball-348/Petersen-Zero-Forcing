import PetersenZeroForcing.FiniteScanCheck13InnerPair0Even
import PetersenZeroForcing.FiniteScanCheck13InnerPair0Odd

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_inner_pair0_cert_checked :
    pairCertScanB 13 (v 0) (innerPair0 13) = true :=
  pairCertScanB_of_parity 13 (v 0) (innerPair0 13)
    scan13_inner_pair0_even_cert_checked scan13_inner_pair0_odd_cert_checked

theorem scan13_inner_pair0_checked :
    pairScanB 13 (v 0) (innerPair0 13) = true :=
  pairScanB_of_certScan 13 (v 0) (innerPair0 13)
    scan13_inner_pair0_cert_checked

end FiniteScan
end PetersenZeroForcing
