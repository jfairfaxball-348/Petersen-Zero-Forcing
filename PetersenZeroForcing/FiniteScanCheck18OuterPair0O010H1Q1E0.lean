import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan18_outer_pair0_o010_h1_q1_e0_cert_checked :
    pairCertScanOctantEighthB 18 (u 0) (outerPair0 18)
      false true false true true false = true := by decide

end FiniteScan
end PetersenZeroForcing
