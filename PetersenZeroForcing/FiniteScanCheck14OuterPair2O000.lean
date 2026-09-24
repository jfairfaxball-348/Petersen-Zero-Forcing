import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan14_outer_pair2_o000_cert_checked :
    pairCertScanOctantB 14 (u 0) (outerPair2 14) false false false = true := by decide

end FiniteScan
end PetersenZeroForcing
