import PetersenZeroForcing.FiniteScanCheck15OuterPair0
import PetersenZeroForcing.FiniteScanCheck15OuterPair1
import PetersenZeroForcing.FiniteScanCheck15OuterPair2
import PetersenZeroForcing.FiniteScanCheck15InnerPair0
import PetersenZeroForcing.FiniteScanCheck15InnerPair1
import PetersenZeroForcing.FiniteScanCheck15InnerPair2

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_outer_checked : sourceScanB 15 (u 0) = true := by
  apply sourceScanB_of_three_pairs 15 (u 0)
    (outerPair0 15) (outerPair1 15) (outerPair2 15)
  · decide
  · exact scan15_outer_pair0_checked
  · exact scan15_outer_pair1_checked
  · exact scan15_outer_pair2_checked

theorem scan15_inner_checked : sourceScanB 15 (v 0) = true := by
  apply sourceScanB_of_three_pairs 15 (v 0)
    (innerPair0 15) (innerPair1 15) (innerPair2 15)
  · decide
  · exact scan15_inner_pair0_checked
  · exact scan15_inner_pair1_checked
  · exact scan15_inner_pair2_checked

theorem scan15_checked : reducedScanB 15 = true :=
  reducedScanB_of_source_scans 15 scan15_outer_checked scan15_inner_checked

end FiniteScan
end PetersenZeroForcing
