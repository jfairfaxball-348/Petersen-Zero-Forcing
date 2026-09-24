import PetersenZeroForcing.FiniteScanOctantSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan16_inner_pair0_o001_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 16 (v 0) (innerPair0 16)
      false false true false false = true := by decide

end FiniteScan
end PetersenZeroForcing
