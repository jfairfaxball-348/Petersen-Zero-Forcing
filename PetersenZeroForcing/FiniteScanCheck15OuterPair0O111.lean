import PetersenZeroForcing.FiniteScanCheck15OuterPair0O111H0
import PetersenZeroForcing.FiniteScanCheck15OuterPair0O111H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_outer_pair0_o111_cert_checked :
    pairCertScanOctantB 15 (u 0) (outerPair0 15) true true true = true :=
  pairCertScanOctantB_of_halves 15 (u 0) (outerPair0 15)
    true true true
    scan15_outer_pair0_o111_h0_cert_checked
    scan15_outer_pair0_o111_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
