import PetersenZeroForcing.FiniteScanCheck13OuterPair1Even
import PetersenZeroForcing.FiniteScanCheck13OuterPair1Odd

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_outer_pair1_checked :
    pairScanB 13 (u 0) (outerPair1 13) = true :=
  pairScanB_of_parity 13 (u 0) (outerPair1 13)
    scan13_outer_pair1_even_checked scan13_outer_pair1_odd_checked

end FiniteScan
end PetersenZeroForcing
