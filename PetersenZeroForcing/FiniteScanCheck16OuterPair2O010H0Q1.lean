import PetersenZeroForcing.FiniteScanOctantSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan16_outer_pair2_o010_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 16 (u 0) (outerPair2 16)
      false true false false true = true := by decide

end FiniteScan
end PetersenZeroForcing
