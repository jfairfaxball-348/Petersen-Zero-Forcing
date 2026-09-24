import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan20_inner_pair2_o110_h0_q0_e1_cert_checked :
    pairCertScanOctantEighthB 20 (v 0) (innerPair2 20)
      true true false false false true = true := by decide

end FiniteScan
end PetersenZeroForcing
