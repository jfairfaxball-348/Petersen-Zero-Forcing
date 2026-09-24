import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan14_inner_pair1_o010_cert_checked :
    pairCertScanOctantB 14 (v 0) (innerPair1 14) false true false = true := by decide

end FiniteScan
end PetersenZeroForcing
