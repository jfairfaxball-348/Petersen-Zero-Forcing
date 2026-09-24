import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan17_inner_pair0_o111_h1_q0_e0_cert_checked :
    pairCertScanOctantEighthB 17 (v 0) (innerPair0 17)
      true true true true false false = true := by decide

end FiniteScan
end PetersenZeroForcing
