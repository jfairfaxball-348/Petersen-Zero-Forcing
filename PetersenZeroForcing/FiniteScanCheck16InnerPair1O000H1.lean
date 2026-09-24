import PetersenZeroForcing.FiniteScanOctantSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan16_inner_pair1_o000_h1_cert_checked :
    pairCertScanOctantHalfB 16 (v 0) (innerPair1 16)
      false false false true = true := by decide

end FiniteScan
end PetersenZeroForcing
