import PetersenZeroForcing.FiniteScanOctantSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan16_outer_pair1_o110_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 16 (u 0) (outerPair1 16)
      true true false false false = true := by decide

end FiniteScan
end PetersenZeroForcing
