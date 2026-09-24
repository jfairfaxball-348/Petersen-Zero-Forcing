import PetersenZeroForcing.FiniteScanCheck15InnerPair2O100H0
import PetersenZeroForcing.FiniteScanCheck15InnerPair2O100H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_inner_pair2_o100_cert_checked :
    pairCertScanOctantB 15 (v 0) (innerPair2 15) true false false = true :=
  pairCertScanOctantB_of_halves 15 (v 0) (innerPair2 15)
    true false false
    scan15_inner_pair2_o100_h0_cert_checked
    scan15_inner_pair2_o100_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
