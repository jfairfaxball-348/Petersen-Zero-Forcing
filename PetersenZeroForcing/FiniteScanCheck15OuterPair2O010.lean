import PetersenZeroForcing.FiniteScanCheck15OuterPair2O010H0
import PetersenZeroForcing.FiniteScanCheck15OuterPair2O010H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_outer_pair2_o010_cert_checked :
    pairCertScanOctantB 15 (u 0) (outerPair2 15) false true false = true :=
  pairCertScanOctantB_of_halves 15 (u 0) (outerPair2 15)
    false true false
    scan15_outer_pair2_o010_h0_cert_checked
    scan15_outer_pair2_o010_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
