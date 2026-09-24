import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan13_outer_pair0_odd_checked :
    pairScanParityB 13 (u 0) (outerPair0 13) false = true := by decide

end FiniteScan
end PetersenZeroForcing
