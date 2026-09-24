import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan15_outer_pair1_o001_cert_checked :
    pairCertScanOctantB 15 (u 0) (outerPair1 15) false false true = true := by decide

end FiniteScan
end PetersenZeroForcing
