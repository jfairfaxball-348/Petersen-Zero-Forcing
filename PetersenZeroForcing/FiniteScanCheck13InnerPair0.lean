import PetersenZeroForcing.FiniteScanCheck13InnerPair0Even
import PetersenZeroForcing.FiniteScanCheck13InnerPair0Odd

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_inner_pair0_checked :
    pairScanB 13 (v 0) (innerPair0 13) = true :=
  pairScanB_of_parity 13 (v 0) (innerPair0 13)
    scan13_inner_pair0_even_checked scan13_inner_pair0_odd_checked

end FiniteScan
end PetersenZeroForcing
