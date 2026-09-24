import PetersenZeroForcing.FiniteScanCheck16InnerPair2O000H0
import PetersenZeroForcing.FiniteScanCheck16InnerPair2O000H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_inner_pair2_o000_cert_checked :
    pairCertScanOctantB 16 (v 0) (innerPair2 16) false false false = true :=
  pairCertScanOctantB_of_halves 16 (v 0) (innerPair2 16)
    false false false
    scan16_inner_pair2_o000_h0_cert_checked
    scan16_inner_pair2_o000_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
