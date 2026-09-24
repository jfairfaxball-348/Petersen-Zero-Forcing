import PetersenZeroForcing.FiniteScanCheck20OuterPair0
import PetersenZeroForcing.FiniteScanCheck20OuterPair1
import PetersenZeroForcing.FiniteScanCheck20OuterPair2
import PetersenZeroForcing.FiniteScanCheck20InnerPair0
import PetersenZeroForcing.FiniteScanCheck20InnerPair1
import PetersenZeroForcing.FiniteScanCheck20InnerPair2

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan20_outer_checked : sourceScanB 20 (u 0) = true := by
  apply sourceScanB_of_three_pairs 20 (u 0)
    (outerPair0 20) (outerPair1 20) (outerPair2 20)
  · decide
  · exact scan20_outer_pair0_checked
  · exact scan20_outer_pair1_checked
  · exact scan20_outer_pair2_checked

theorem scan20_inner_checked : sourceScanB 20 (v 0) = true := by
  apply sourceScanB_of_three_pairs 20 (v 0)
    (innerPair0 20) (innerPair1 20) (innerPair2 20)
  · decide
  · exact scan20_inner_pair0_checked
  · exact scan20_inner_pair1_checked
  · exact scan20_inner_pair2_checked

theorem scan20_checked : reducedScanB 20 = true :=
  reducedScanB_of_source_scans 20 scan20_outer_checked scan20_inner_checked

end FiniteScan
end PetersenZeroForcing
