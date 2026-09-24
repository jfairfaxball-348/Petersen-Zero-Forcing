import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan19_outer_pair1_o110_h1_q0_e1_cert_checked :
    pairCertScanOctantEighthB 19 (u 0) (outerPair1 19)
      true true false true false true = true := by decide

end FiniteScan
end PetersenZeroForcing
