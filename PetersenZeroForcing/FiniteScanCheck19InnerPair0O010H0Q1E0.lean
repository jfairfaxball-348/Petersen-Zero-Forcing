import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan19_inner_pair0_o010_h0_q1_e0_cert_checked :
    pairCertScanOctantEighthB 19 (v 0) (innerPair0 19)
      false true false false true false = true := by decide

end FiniteScan
end PetersenZeroForcing
