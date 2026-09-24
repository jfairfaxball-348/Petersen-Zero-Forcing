import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan18_inner_pair0_o110_h0_q0_e0_cert_checked :
    pairCertScanOctantEighthB 18 (v 0) (innerPair0 18)
      true true false false false false = true := by decide

end FiniteScan
end PetersenZeroForcing
