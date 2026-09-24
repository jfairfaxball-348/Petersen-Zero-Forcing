import PetersenZeroForcing.FiniteScanCheck15InnerPair0O001H0
import PetersenZeroForcing.FiniteScanCheck15InnerPair0O001H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_inner_pair0_o001_cert_checked :
    pairCertScanOctantB 15 (v 0) (innerPair0 15) false false true = true :=
  pairCertScanOctantB_of_halves 15 (v 0) (innerPair0 15)
    false false true
    scan15_inner_pair0_o001_h0_cert_checked
    scan15_inner_pair0_o001_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
