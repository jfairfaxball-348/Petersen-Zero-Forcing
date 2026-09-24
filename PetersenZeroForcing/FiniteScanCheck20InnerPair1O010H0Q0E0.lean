import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan20_inner_pair1_o010_h0_q0_e0_cert_checked :
    pairCertScanOctantEighthB 20 (v 0) (innerPair1 20)
      false true false false false false = true := by decide

end FiniteScan
end PetersenZeroForcing
