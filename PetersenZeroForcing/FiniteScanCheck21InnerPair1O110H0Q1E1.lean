import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan21_inner_pair1_o110_h0_q1_e1_cert_checked :
    pairCertScanOctantEighthB 21 (v 0) (innerPair1 21)
      true true false false true true = true := by decide

end FiniteScan
end PetersenZeroForcing
