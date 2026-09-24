import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan17_outer_pair0_o001_h0_q0_e0_cert_checked :
    pairCertScanOctantEighthB 17 (u 0) (outerPair0 17)
      false false true false false false = true := by decide

end FiniteScan
end PetersenZeroForcing
