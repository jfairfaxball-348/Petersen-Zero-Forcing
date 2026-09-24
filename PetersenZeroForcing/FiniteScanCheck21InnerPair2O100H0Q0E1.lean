import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan21_inner_pair2_o100_h0_q0_e1_cert_checked :
    pairCertScanOctantEighthB 21 (v 0) (innerPair2 21)
      true false false false false true = true := by decide

end FiniteScan
end PetersenZeroForcing
