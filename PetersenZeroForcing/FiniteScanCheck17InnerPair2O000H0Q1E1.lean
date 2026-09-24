import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan17_inner_pair2_o000_h0_q1_e1_cert_checked :
    pairCertScanOctantEighthB 17 (v 0) (innerPair2 17)
      false false false false true true = true := by decide

end FiniteScan
end PetersenZeroForcing
