import PetersenZeroForcing.FiniteScanCheck16InnerPair2O001H0
import PetersenZeroForcing.FiniteScanCheck16InnerPair2O001H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_inner_pair2_o001_cert_checked :
    pairCertScanOctantB 16 (v 0) (innerPair2 16) false false true = true :=
  pairCertScanOctantB_of_halves 16 (v 0) (innerPair2 16)
    false false true
    scan16_inner_pair2_o001_h0_cert_checked
    scan16_inner_pair2_o001_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
