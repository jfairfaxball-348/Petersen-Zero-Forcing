import PetersenZeroForcing.FiniteScanEighthSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan19_inner_pair0_o111_h0_q0_e1_cert_checked :
    pairCertScanOctantEighthB 19 (v 0) (innerPair0 19)
      true true true false false true = true := by decide

end FiniteScan
end PetersenZeroForcing
