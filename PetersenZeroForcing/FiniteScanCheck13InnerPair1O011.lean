import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan13_inner_pair1_o011_cert_checked :
    pairCertScanOctantB 13 (v 0) (innerPair1 13) false true true = true := by decide

end FiniteScan
end PetersenZeroForcing
