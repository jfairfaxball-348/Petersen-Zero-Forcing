import PetersenZeroForcing.FiniteScanCheck16OuterPair1O110H0
import PetersenZeroForcing.FiniteScanCheck16OuterPair1O110H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_outer_pair1_o110_cert_checked :
    pairCertScanOctantB 16 (u 0) (outerPair1 16) true true false = true :=
  pairCertScanOctantB_of_halves 16 (u 0) (outerPair1 16)
    true true false
    scan16_outer_pair1_o110_h0_cert_checked
    scan16_outer_pair1_o110_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
