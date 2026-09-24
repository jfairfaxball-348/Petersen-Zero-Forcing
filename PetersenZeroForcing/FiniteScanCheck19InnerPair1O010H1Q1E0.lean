import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan19_inner_pair1_o010_h1_q1_e0_cert_checked :
    pairCertScanOctantEighthB 19 (v 0) (innerPair1 19)
      false true false true true false = true := by decide

end FiniteScan
end PetersenZeroForcing
