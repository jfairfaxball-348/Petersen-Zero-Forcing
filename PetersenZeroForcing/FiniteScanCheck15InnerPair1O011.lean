import PetersenZeroForcing.FiniteScanCheck15InnerPair1O011H0
import PetersenZeroForcing.FiniteScanCheck15InnerPair1O011H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_inner_pair1_o011_cert_checked :
    pairCertScanOctantB 15 (v 0) (innerPair1 15) false true true = true :=
  pairCertScanOctantB_of_halves 15 (v 0) (innerPair1 15)
    false true true
    scan15_inner_pair1_o011_h0_cert_checked
    scan15_inner_pair1_o011_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
