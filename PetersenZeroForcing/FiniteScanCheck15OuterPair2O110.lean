import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan15_outer_pair2_o110_cert_checked :
    pairCertScanOctantB 15 (u 0) (outerPair2 15) true true false = true := by decide

end FiniteScan
end PetersenZeroForcing
