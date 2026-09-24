import PetersenZeroForcing.FiniteScanCheck16InnerPair2O001H0Q0
import PetersenZeroForcing.FiniteScanCheck16InnerPair2O001H0Q1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_inner_pair2_o001_h0_cert_checked :
    pairCertScanOctantHalfB 16 (v 0) (innerPair2 16)
      false false true false = true :=
  pairCertScanOctantHalfB_of_quarters 16 (v 0) (innerPair2 16)
    false false true false
    scan16_inner_pair2_o001_h0_q0_cert_checked
    scan16_inner_pair2_o001_h0_q1_cert_checked

end FiniteScan
end PetersenZeroForcing
