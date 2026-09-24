import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan13_outer_checked : sourceScanB 13 (u 0) = true := by decide

end FiniteScan
end PetersenZeroForcing
