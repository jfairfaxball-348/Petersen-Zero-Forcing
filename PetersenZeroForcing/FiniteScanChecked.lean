import PetersenZeroForcing.FiniteScanCheck13OuterPair0
import PetersenZeroForcing.FiniteScanCheck13OuterPair1
import PetersenZeroForcing.FiniteScanCheck13OuterPair2
import PetersenZeroForcing.FiniteScanCheck13InnerPair0
import PetersenZeroForcing.FiniteScanCheck13InnerPair1
import PetersenZeroForcing.FiniteScanCheck13InnerPair2

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_outer_checked : sourceScanB 13 (u 0) = true := by
  apply sourceScanB_of_three_pairs 13 (u 0)
    (outerPair0 13) (outerPair1 13) (outerPair2 13)
  · decide
  · exact scan13_outer_pair0_checked
  · exact scan13_outer_pair1_checked
  · exact scan13_outer_pair2_checked

theorem scan13_inner_checked : sourceScanB 13 (v 0) = true := by
  apply sourceScanB_of_three_pairs 13 (v 0)
    (innerPair0 13) (innerPair1 13) (innerPair2 13)
  · decide
  · exact scan13_inner_pair0_checked
  · exact scan13_inner_pair1_checked
  · exact scan13_inner_pair2_checked

theorem scan13_checked : reducedScanB 13 = true :=
  reducedScanB_of_source_scans 13 scan13_outer_checked scan13_inner_checked

end FiniteScan
end PetersenZeroForcing
