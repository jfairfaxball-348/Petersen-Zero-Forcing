import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan17_inner_pair0_o101_h0_q1_e0_cert_checked :
    pairCertScanOctantEighthB 17 (v 0) (innerPair0 17)
      true false true false true false = true := by decide

end FiniteScan
end PetersenZeroForcing
