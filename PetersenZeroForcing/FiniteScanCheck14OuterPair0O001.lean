import PetersenZeroForcing.FiniteScanCheck14OuterPair0O001H0
import PetersenZeroForcing.FiniteScanCheck14OuterPair0O001H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan14_outer_pair0_o001_cert_checked :
    pairCertScanOctantB 14 (u 0) (outerPair0 14) false false true = true :=
  pairCertScanOctantB_of_halves 14 (u 0) (outerPair0 14)
    false false true
    scan14_outer_pair0_o001_h0_cert_checked
    scan14_outer_pair0_o001_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
