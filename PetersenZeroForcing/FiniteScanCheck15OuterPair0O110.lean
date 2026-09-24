import PetersenZeroForcing.FiniteScanCheck15OuterPair0O110H0
import PetersenZeroForcing.FiniteScanCheck15OuterPair0O110H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_outer_pair0_o110_cert_checked :
    pairCertScanOctantB 15 (u 0) (outerPair0 15) true true false = true :=
  pairCertScanOctantB_of_halves 15 (u 0) (outerPair0 15)
    true true false
    scan15_outer_pair0_o110_h0_cert_checked
    scan15_outer_pair0_o110_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
