import PetersenZeroForcing.FiniteScanOctantSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan15_inner_pair0_o101_h0_cert_checked :
    pairCertScanOctantHalfB 15 (v 0) (innerPair0 15)
      true false true false = true := by decide

end FiniteScan
end PetersenZeroForcing
