import PetersenZeroForcing.FiniteScanCheck16OuterPair1O011H0
import PetersenZeroForcing.FiniteScanCheck16OuterPair1O011H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_outer_pair1_o011_cert_checked :
    pairCertScanOctantB 16 (u 0) (outerPair1 16) false true true = true :=
  pairCertScanOctantB_of_halves 16 (u 0) (outerPair1 16)
    false true true
    scan16_outer_pair1_o011_h0_cert_checked
    scan16_outer_pair1_o011_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
