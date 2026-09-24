import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan21_inner_pair1_o010_h1_q0_e0_cert_checked :
    pairCertScanOctantEighthB 21 (v 0) (innerPair1 21)
      false true false true false false = true := by decide

end FiniteScan
end PetersenZeroForcing
