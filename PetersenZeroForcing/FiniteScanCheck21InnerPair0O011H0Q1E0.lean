import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan21_inner_pair0_o011_h0_q1_e0_cert_checked :
    pairCertScanOctantEighthB 21 (v 0) (innerPair0 21)
      false true true false true false = true := by decide

end FiniteScan
end PetersenZeroForcing
