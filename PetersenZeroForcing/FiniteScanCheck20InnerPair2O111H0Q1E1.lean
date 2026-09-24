import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan20_inner_pair2_o111_h0_q1_e1_cert_checked :
    pairCertScanOctantEighthB 20 (v 0) (innerPair2 20)
      true true true false true true = true := by decide

end FiniteScan
end PetersenZeroForcing
