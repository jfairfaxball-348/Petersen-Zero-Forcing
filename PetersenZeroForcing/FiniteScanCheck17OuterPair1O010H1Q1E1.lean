import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan17_outer_pair1_o010_h1_q1_e1_cert_checked :
    pairCertScanOctantEighthB 17 (u 0) (outerPair1 17)
      false true false true true true = true := by decide

end FiniteScan
end PetersenZeroForcing
