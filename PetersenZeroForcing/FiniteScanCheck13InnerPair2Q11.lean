import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan13_inner_pair2_q11_cert_checked :
    pairCertScanQuarterB 13 (v 0) (innerPair2 13) true true = true := by decide

end FiniteScan
end PetersenZeroForcing
