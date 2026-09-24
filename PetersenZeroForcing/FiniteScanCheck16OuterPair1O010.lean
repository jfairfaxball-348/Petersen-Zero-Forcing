import PetersenZeroForcing.FiniteScanCheck16OuterPair1O010H0
import PetersenZeroForcing.FiniteScanCheck16OuterPair1O010H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_outer_pair1_o010_cert_checked :
    pairCertScanOctantB 16 (u 0) (outerPair1 16) false true false = true :=
  pairCertScanOctantB_of_halves 16 (u 0) (outerPair1 16)
    false true false
    scan16_outer_pair1_o010_h0_cert_checked
    scan16_outer_pair1_o010_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
