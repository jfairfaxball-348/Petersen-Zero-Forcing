import PetersenZeroForcing.FiniteScanCheck16OuterPair0O111H0
import PetersenZeroForcing.FiniteScanCheck16OuterPair0O111H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_outer_pair0_o111_cert_checked :
    pairCertScanOctantB 16 (u 0) (outerPair0 16) true true true = true :=
  pairCertScanOctantB_of_halves 16 (u 0) (outerPair0 16)
    true true true
    scan16_outer_pair0_o111_h0_cert_checked
    scan16_outer_pair0_o111_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
