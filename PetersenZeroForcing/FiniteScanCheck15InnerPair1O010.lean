import PetersenZeroForcing.FiniteScanCheck15InnerPair1O010H0
import PetersenZeroForcing.FiniteScanCheck15InnerPair1O010H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_inner_pair1_o010_cert_checked :
    pairCertScanOctantB 15 (v 0) (innerPair1 15) false true false = true :=
  pairCertScanOctantB_of_halves 15 (v 0) (innerPair1 15)
    false true false
    scan15_inner_pair1_o010_h0_cert_checked
    scan15_inner_pair1_o010_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
