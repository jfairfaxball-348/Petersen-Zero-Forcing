import PetersenZeroForcing.FiniteScanCheck15OuterPair2O011H0
import PetersenZeroForcing.FiniteScanCheck15OuterPair2O011H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_outer_pair2_o011_cert_checked :
    pairCertScanOctantB 15 (u 0) (outerPair2 15) false true true = true :=
  pairCertScanOctantB_of_halves 15 (u 0) (outerPair2 15)
    false true true
    scan15_outer_pair2_o011_h0_cert_checked
    scan15_outer_pair2_o011_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
