import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan17_inner_pair0_o010_h1_q1_e1_cert_checked :
    pairCertScanOctantEighthB 17 (v 0) (innerPair0 17)
      false true false true true true = true := by decide

end FiniteScan
end PetersenZeroForcing
