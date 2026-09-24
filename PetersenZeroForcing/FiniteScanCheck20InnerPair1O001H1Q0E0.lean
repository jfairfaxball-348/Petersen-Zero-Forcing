import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan20_inner_pair1_o001_h1_q0_e0_cert_checked :
    pairCertScanOctantEighthB 20 (v 0) (innerPair1 20)
      false false true true false false = true := by decide

end FiniteScan
end PetersenZeroForcing
