import PetersenZeroForcing.FiniteScanCheck16InnerPair2O110H0
import PetersenZeroForcing.FiniteScanCheck16InnerPair2O110H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_inner_pair2_o110_cert_checked :
    pairCertScanOctantB 16 (v 0) (innerPair2 16) true true false = true :=
  pairCertScanOctantB_of_halves 16 (v 0) (innerPair2 16)
    true true false
    scan16_inner_pair2_o110_h0_cert_checked
    scan16_inner_pair2_o110_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
