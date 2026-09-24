import PetersenZeroForcing.FiniteScanCheck14OuterPair0
import PetersenZeroForcing.FiniteScanCheck14OuterPair1
import PetersenZeroForcing.FiniteScanCheck14OuterPair2
import PetersenZeroForcing.FiniteScanCheck14InnerPair0
import PetersenZeroForcing.FiniteScanCheck14InnerPair1
import PetersenZeroForcing.FiniteScanCheck14InnerPair2

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan14_outer_checked : sourceScanB 14 (u 0) = true := by
  apply sourceScanB_of_three_pairs 14 (u 0)
    (outerPair0 14) (outerPair1 14) (outerPair2 14)
  · decide
  · exact scan14_outer_pair0_checked
  · exact scan14_outer_pair1_checked
  · exact scan14_outer_pair2_checked

theorem scan14_inner_checked : sourceScanB 14 (v 0) = true := by
  apply sourceScanB_of_three_pairs 14 (v 0)
    (innerPair0 14) (innerPair1 14) (innerPair2 14)
  · decide
  · exact scan14_inner_pair0_checked
  · exact scan14_inner_pair1_checked
  · exact scan14_inner_pair2_checked

theorem scan14_checked : reducedScanB 14 = true :=
  reducedScanB_of_source_scans 14 scan14_outer_checked scan14_inner_checked

end FiniteScan
end PetersenZeroForcing
