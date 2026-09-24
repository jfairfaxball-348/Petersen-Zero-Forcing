import PetersenZeroForcing.FiniteScanOctantSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan15_inner_pair1_o001_h1_cert_checked :
    pairCertScanOctantHalfB 15 (v 0) (innerPair1 15)
      false false true true = true := by decide

end FiniteScan
end PetersenZeroForcing
