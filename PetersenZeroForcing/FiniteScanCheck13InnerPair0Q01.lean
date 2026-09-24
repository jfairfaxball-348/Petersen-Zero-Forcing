import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan13_inner_pair0_q01_cert_checked :
    pairCertScanQuarterB 13 (v 0) (innerPair0 13) false true = true := by decide

end FiniteScan
end PetersenZeroForcing
