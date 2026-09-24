import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan15_inner_pair1_o010_cert_checked :
    pairCertScanOctantB 15 (v 0) (innerPair1 15) false true false = true := by decide

end FiniteScan
end PetersenZeroForcing
