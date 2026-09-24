import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan18_inner_pair2_o100_h0_q1_e1_cert_checked :
    pairCertScanOctantEighthB 18 (v 0) (innerPair2 18)
      true false false false true true = true := by decide

end FiniteScan
end PetersenZeroForcing
