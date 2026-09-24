import PetersenZeroForcing.FiniteScanCheck15OuterPair0O001H0
import PetersenZeroForcing.FiniteScanCheck15OuterPair0O001H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_outer_pair0_o001_cert_checked :
    pairCertScanOctantB 15 (u 0) (outerPair0 15) false false true = true :=
  pairCertScanOctantB_of_halves 15 (u 0) (outerPair0 15)
    false false true
    scan15_outer_pair0_o001_h0_cert_checked
    scan15_outer_pair0_o001_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
