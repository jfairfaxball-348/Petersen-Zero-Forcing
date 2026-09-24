import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan13_inner_pair0_odd_cert_checked :
    pairCertScanParityB 13 (v 0) (innerPair0 13) false = true := by decide

end FiniteScan
end PetersenZeroForcing
