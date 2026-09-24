import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan21_outer_pair2_o011_h0_q0_e1_cert_checked :
    pairCertScanOctantEighthB 21 (u 0) (outerPair2 21)
      false true true false false true = true := by decide

end FiniteScan
end PetersenZeroForcing
