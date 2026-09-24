import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan13_outer_pair1_o100_cert_checked :
    pairCertScanOctantB 13 (u 0) (outerPair1 13) true false false = true := by decide

end FiniteScan
end PetersenZeroForcing
