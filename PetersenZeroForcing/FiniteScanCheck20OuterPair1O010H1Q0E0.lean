import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan20_outer_pair1_o010_h1_q0_e0_cert_checked :
    pairCertScanOctantEighthB 20 (u 0) (outerPair1 20)
      false true false true false false = true := by decide

end FiniteScan
end PetersenZeroForcing
