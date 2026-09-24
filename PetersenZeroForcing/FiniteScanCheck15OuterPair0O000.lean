import PetersenZeroForcing.FiniteScanCheck15OuterPair0O000H0
import PetersenZeroForcing.FiniteScanCheck15OuterPair0O000H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_outer_pair0_o000_cert_checked :
    pairCertScanOctantB 15 (u 0) (outerPair0 15) false false false = true :=
  pairCertScanOctantB_of_halves 15 (u 0) (outerPair0 15)
    false false false
    scan15_outer_pair0_o000_h0_cert_checked
    scan15_outer_pair0_o000_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
