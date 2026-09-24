import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan19_inner_pair2_o000_h0_q0_e0_cert_checked :
    pairCertScanOctantEighthB 19 (v 0) (innerPair2 19)
      false false false false false false = true := by decide

end FiniteScan
end PetersenZeroForcing
