import PetersenZeroForcing.FiniteScanCheck16InnerPair2O100H0
import PetersenZeroForcing.FiniteScanCheck16InnerPair2O100H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_inner_pair2_o100_cert_checked :
    pairCertScanOctantB 16 (v 0) (innerPair2 16) true false false = true :=
  pairCertScanOctantB_of_halves 16 (v 0) (innerPair2 16)
    true false false
    scan16_inner_pair2_o100_h0_cert_checked
    scan16_inner_pair2_o100_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
