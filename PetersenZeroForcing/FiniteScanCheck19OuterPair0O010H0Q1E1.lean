import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan19_outer_pair0_o010_h0_q1_e1_cert_checked :
    pairCertScanOctantEighthB 19 (u 0) (outerPair0 19)
      false true false false true true = true := by decide

end FiniteScan
end PetersenZeroForcing
