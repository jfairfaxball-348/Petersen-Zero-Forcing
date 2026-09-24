import PetersenZeroForcing.FiniteScanCheck18OuterPair0
import PetersenZeroForcing.FiniteScanCheck18OuterPair1
import PetersenZeroForcing.FiniteScanCheck18OuterPair2
import PetersenZeroForcing.FiniteScanCheck18InnerPair0
import PetersenZeroForcing.FiniteScanCheck18InnerPair1
import PetersenZeroForcing.FiniteScanCheck18InnerPair2

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan18_outer_checked : sourceScanB 18 (u 0) = true := by
  apply sourceScanB_of_three_pairs 18 (u 0)
    (outerPair0 18) (outerPair1 18) (outerPair2 18)
  · decide
  · exact scan18_outer_pair0_checked
  · exact scan18_outer_pair1_checked
  · exact scan18_outer_pair2_checked

theorem scan18_inner_checked : sourceScanB 18 (v 0) = true := by
  apply sourceScanB_of_three_pairs 18 (v 0)
    (innerPair0 18) (innerPair1 18) (innerPair2 18)
  · decide
  · exact scan18_inner_pair0_checked
  · exact scan18_inner_pair1_checked
  · exact scan18_inner_pair2_checked

theorem scan18_checked : reducedScanB 18 = true :=
  reducedScanB_of_source_scans 18 scan18_outer_checked scan18_inner_checked

end FiniteScan
end PetersenZeroForcing
