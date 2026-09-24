import PetersenZeroForcing.FiniteScanCheck15InnerPair2O110H0
import PetersenZeroForcing.FiniteScanCheck15InnerPair2O110H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_inner_pair2_o110_cert_checked :
    pairCertScanOctantB 15 (v 0) (innerPair2 15) true true false = true :=
  pairCertScanOctantB_of_halves 15 (v 0) (innerPair2 15)
    true true false
    scan15_inner_pair2_o110_h0_cert_checked
    scan15_inner_pair2_o110_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
