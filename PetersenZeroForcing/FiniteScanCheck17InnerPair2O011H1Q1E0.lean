import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan17_inner_pair2_o011_h1_q1_e0_cert_checked :
    pairCertScanOctantEighthB 17 (v 0) (innerPair2 17)
      false true true true true false = true := by decide

end FiniteScan
end PetersenZeroForcing
