import PetersenZeroForcing.FiniteScanCheck16InnerPair0O101H1Q0
import PetersenZeroForcing.FiniteScanCheck16InnerPair0O101H1Q1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_inner_pair0_o101_h1_cert_checked :
    pairCertScanOctantHalfB 16 (v 0) (innerPair0 16)
      true false true true = true :=
  pairCertScanOctantHalfB_of_quarters 16 (v 0) (innerPair0 16)
    true false true true
    scan16_inner_pair0_o101_h1_q0_cert_checked
    scan16_inner_pair0_o101_h1_q1_cert_checked

end FiniteScan
end PetersenZeroForcing
