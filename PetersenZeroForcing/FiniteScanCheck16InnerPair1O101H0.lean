import PetersenZeroForcing.FiniteScanOctantSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan16_inner_pair1_o101_h0_cert_checked :
    pairCertScanOctantHalfB 16 (v 0) (innerPair1 16)
      true false true false = true := by decide

end FiniteScan
end PetersenZeroForcing
