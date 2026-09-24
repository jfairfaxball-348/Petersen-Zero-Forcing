import PetersenZeroForcing.FiniteScanOctantSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan16_inner_pair1_o111_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 16 (v 0) (innerPair1 16)
      true true true true true = true := by decide

end FiniteScan
end PetersenZeroForcing
