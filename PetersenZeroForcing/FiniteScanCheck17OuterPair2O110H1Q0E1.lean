import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan17_outer_pair2_o110_h1_q0_e1_cert_checked :
    pairCertScanOctantEighthB 17 (u 0) (outerPair2 17)
      true true false true false true = true := by decide

end FiniteScan
end PetersenZeroForcing
