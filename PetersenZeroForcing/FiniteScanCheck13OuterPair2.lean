import PetersenZeroForcing.FiniteScanCheck13OuterPair2Even
import PetersenZeroForcing.FiniteScanCheck13OuterPair2Odd

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_outer_pair2_cert_checked :
    pairCertScanB 13 (u 0) (outerPair2 13) = true :=
  pairCertScanB_of_parity 13 (u 0) (outerPair2 13)
    scan13_outer_pair2_even_cert_checked scan13_outer_pair2_odd_cert_checked

theorem scan13_outer_pair2_checked :
    pairScanB 13 (u 0) (outerPair2 13) = true :=
  pairScanB_of_certScan 13 (u 0) (outerPair2 13)
    scan13_outer_pair2_cert_checked

end FiniteScan
end PetersenZeroForcing
