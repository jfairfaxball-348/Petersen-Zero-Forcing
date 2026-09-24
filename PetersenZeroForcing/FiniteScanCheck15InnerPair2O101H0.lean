import PetersenZeroForcing.FiniteScanCheck15InnerPair2O101H0Q0
import PetersenZeroForcing.FiniteScanCheck15InnerPair2O101H0Q1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_inner_pair2_o101_h0_cert_checked :
    pairCertScanOctantHalfB 15 (v 0) (innerPair2 15)
      true false true false = true :=
  pairCertScanOctantHalfB_of_quarters 15 (v 0) (innerPair2 15)
    true false true false
    scan15_inner_pair2_o101_h0_q0_cert_checked
    scan15_inner_pair2_o101_h0_q1_cert_checked

end FiniteScan
end PetersenZeroForcing
