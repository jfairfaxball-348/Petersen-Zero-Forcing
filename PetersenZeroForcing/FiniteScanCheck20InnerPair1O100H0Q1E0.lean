import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan20_inner_pair1_o100_h0_q1_e0_cert_checked :
    pairCertScanOctantEighthB 20 (v 0) (innerPair1 20)
      true false false false true false = true := by decide

end FiniteScan
end PetersenZeroForcing
