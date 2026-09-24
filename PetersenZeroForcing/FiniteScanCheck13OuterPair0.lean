import PetersenZeroForcing.FiniteScanCheck13OuterPair0Even
import PetersenZeroForcing.FiniteScanCheck13OuterPair0Odd

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_outer_pair0_checked :
    pairScanB 13 (u 0) (outerPair0 13) = true :=
  pairScanB_of_parity 13 (u 0) (outerPair0 13)
    scan13_outer_pair0_even_checked scan13_outer_pair0_odd_checked

end FiniteScan
end PetersenZeroForcing
