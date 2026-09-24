import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan20_outer_pair2_o001_h0_q1_e0_cert_checked :
    pairCertScanOctantEighthB 20 (u 0) (outerPair2 20)
      false false true false true false = true := by decide

end FiniteScan
end PetersenZeroForcing
