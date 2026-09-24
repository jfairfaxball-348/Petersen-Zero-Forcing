import PetersenZeroForcing.FiniteScanCheck13InnerPair2Even
import PetersenZeroForcing.FiniteScanCheck13InnerPair2Odd

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_inner_pair2_checked :
    pairScanB 13 (v 0) (innerPair2 13) = true :=
  pairScanB_of_parity 13 (v 0) (innerPair2 13)
    scan13_inner_pair2_even_checked scan13_inner_pair2_odd_checked

end FiniteScan
end PetersenZeroForcing
