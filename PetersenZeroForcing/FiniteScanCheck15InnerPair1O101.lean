import PetersenZeroForcing.FiniteScanCheck15InnerPair1O101H0
import PetersenZeroForcing.FiniteScanCheck15InnerPair1O101H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_inner_pair1_o101_cert_checked :
    pairCertScanOctantB 15 (v 0) (innerPair1 15) true false true = true :=
  pairCertScanOctantB_of_halves 15 (v 0) (innerPair1 15)
    true false true
    scan15_inner_pair1_o101_h0_cert_checked
    scan15_inner_pair1_o101_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
