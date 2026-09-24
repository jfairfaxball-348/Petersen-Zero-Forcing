import PetersenZeroForcing.FiniteScanCheck16OuterPair0
import PetersenZeroForcing.FiniteScanCheck16OuterPair1
import PetersenZeroForcing.FiniteScanCheck16OuterPair2
import PetersenZeroForcing.FiniteScanCheck16InnerPair0
import PetersenZeroForcing.FiniteScanCheck16InnerPair1
import PetersenZeroForcing.FiniteScanCheck16InnerPair2

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_outer_checked : sourceScanB 16 (u 0) = true := by
  apply sourceScanB_of_three_pairs 16 (u 0)
    (outerPair0 16) (outerPair1 16) (outerPair2 16)
  · decide
  · exact scan16_outer_pair0_checked
  · exact scan16_outer_pair1_checked
  · exact scan16_outer_pair2_checked

theorem scan16_inner_checked : sourceScanB 16 (v 0) = true := by
  apply sourceScanB_of_three_pairs 16 (v 0)
    (innerPair0 16) (innerPair1 16) (innerPair2 16)
  · decide
  · exact scan16_inner_pair0_checked
  · exact scan16_inner_pair1_checked
  · exact scan16_inner_pair2_checked

theorem scan16_checked : reducedScanB 16 = true :=
  reducedScanB_of_source_scans 16 scan16_outer_checked scan16_inner_checked

end FiniteScan
end PetersenZeroForcing
