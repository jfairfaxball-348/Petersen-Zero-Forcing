import PetersenZeroForcing.FiniteScanCheck16InnerPair0O010H0
import PetersenZeroForcing.FiniteScanCheck16InnerPair0O010H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_inner_pair0_o010_cert_checked :
    pairCertScanOctantB 16 (v 0) (innerPair0 16) false true false = true :=
  pairCertScanOctantB_of_halves 16 (v 0) (innerPair0 16)
    false true false
    scan16_inner_pair0_o010_h0_cert_checked
    scan16_inner_pair0_o010_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
