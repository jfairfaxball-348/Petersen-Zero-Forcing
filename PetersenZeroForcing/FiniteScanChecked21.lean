import PetersenZeroForcing.FiniteScanCheck21OuterPair0
import PetersenZeroForcing.FiniteScanCheck21OuterPair1
import PetersenZeroForcing.FiniteScanCheck21OuterPair2
import PetersenZeroForcing.FiniteScanCheck21InnerPair0
import PetersenZeroForcing.FiniteScanCheck21InnerPair1
import PetersenZeroForcing.FiniteScanCheck21InnerPair2

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan21_outer_checked : sourceScanB 21 (u 0) = true := by
  apply sourceScanB_of_three_pairs 21 (u 0)
    (outerPair0 21) (outerPair1 21) (outerPair2 21)
  · decide
  · exact scan21_outer_pair0_checked
  · exact scan21_outer_pair1_checked
  · exact scan21_outer_pair2_checked

theorem scan21_inner_checked : sourceScanB 21 (v 0) = true := by
  apply sourceScanB_of_three_pairs 21 (v 0)
    (innerPair0 21) (innerPair1 21) (innerPair2 21)
  · decide
  · exact scan21_inner_pair0_checked
  · exact scan21_inner_pair1_checked
  · exact scan21_inner_pair2_checked

theorem scan21_checked : reducedScanB 21 = true :=
  reducedScanB_of_source_scans 21 scan21_outer_checked scan21_inner_checked

end FiniteScan
end PetersenZeroForcing
