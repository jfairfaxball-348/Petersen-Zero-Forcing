import PetersenZeroForcing.FiniteScanOctantSplit

namespace PetersenZeroForcing
namespace FiniteScan

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan16_outer_pair0_o100_h0_cert_checked :
    pairCertScanOctantHalfB 16 (u 0) (outerPair0 16)
      true false false false = true := by decide

end FiniteScan
end PetersenZeroForcing
