import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan18_inner_pair1_o010_h0_q0_e1_cert_checked :
    pairCertScanOctantEighthB 18 (v 0) (innerPair1 18)
      false true false false false true = true := by decide

end FiniteScan
end PetersenZeroForcing
