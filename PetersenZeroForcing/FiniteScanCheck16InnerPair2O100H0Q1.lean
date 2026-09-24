import PetersenZeroForcing.FiniteScanOctantSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan16_inner_pair2_o100_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 16 (v 0) (innerPair2 16)
      true false false false true = true := by decide

end FiniteScan
end PetersenZeroForcing
