import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan13_outer_pair0_q10_cert_checked :
    pairCertScanQuarterB 13 (u 0) (outerPair0 13) true false = true := by decide

end FiniteScan
end PetersenZeroForcing
