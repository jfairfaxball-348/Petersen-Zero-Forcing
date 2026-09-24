import PetersenZeroForcing.FiniteScanOctantSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan15_inner_pair2_o101_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 15 (v 0) (innerPair2 15)
      true false true false true = true := by decide

end FiniteScan
end PetersenZeroForcing
