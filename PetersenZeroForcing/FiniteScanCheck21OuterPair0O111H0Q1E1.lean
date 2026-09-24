import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan21_outer_pair0_o111_h0_q1_e1_cert_checked :
    pairCertScanOctantEighthB 21 (u 0) (outerPair0 21)
      true true true false true true = true := by decide

end FiniteScan
end PetersenZeroForcing
