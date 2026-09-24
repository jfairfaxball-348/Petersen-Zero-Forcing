import PetersenZeroForcing.FiniteScanOctantSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan16_inner_pair0_o011_h1_cert_checked :
    pairCertScanOctantHalfB 16 (v 0) (innerPair0 16)
      false true true true = true := by decide

end FiniteScan
end PetersenZeroForcing
