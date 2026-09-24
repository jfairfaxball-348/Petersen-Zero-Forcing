import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan16_inner_checked : sourceScanB 16 (v 0) = true := by decide

end FiniteScan
end PetersenZeroForcing
