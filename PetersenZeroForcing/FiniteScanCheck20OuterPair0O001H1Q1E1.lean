import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan20_outer_pair0_o001_h1_q1_e1_cert_checked :
    pairCertScanOctantEighthB 20 (u 0) (outerPair0 20)
      false false true true true true = true := by decide

end FiniteScan
end PetersenZeroForcing
