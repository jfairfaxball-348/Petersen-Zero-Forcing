import PetersenZeroForcing.FiniteScanCheck15OuterPair2O110H0
import PetersenZeroForcing.FiniteScanCheck15OuterPair2O110H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_outer_pair2_o110_cert_checked :
    pairCertScanOctantB 15 (u 0) (outerPair2 15) true true false = true :=
  pairCertScanOctantB_of_halves 15 (u 0) (outerPair2 15)
    true true false
    scan15_outer_pair2_o110_h0_cert_checked
    scan15_outer_pair2_o110_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
