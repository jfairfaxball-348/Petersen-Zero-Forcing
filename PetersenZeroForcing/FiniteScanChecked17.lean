import PetersenZeroForcing.FiniteScanCheck17OuterPair0
import PetersenZeroForcing.FiniteScanCheck17OuterPair1
import PetersenZeroForcing.FiniteScanCheck17OuterPair2
import PetersenZeroForcing.FiniteScanCheck17InnerPair0
import PetersenZeroForcing.FiniteScanCheck17InnerPair1
import PetersenZeroForcing.FiniteScanCheck17InnerPair2

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan17_outer_checked : sourceScanB 17 (u 0) = true := by
  apply sourceScanB_of_three_pairs 17 (u 0)
    (outerPair0 17) (outerPair1 17) (outerPair2 17)
  · decide
  · exact scan17_outer_pair0_checked
  · exact scan17_outer_pair1_checked
  · exact scan17_outer_pair2_checked

theorem scan17_inner_checked : sourceScanB 17 (v 0) = true := by
  apply sourceScanB_of_three_pairs 17 (v 0)
    (innerPair0 17) (innerPair1 17) (innerPair2 17)
  · decide
  · exact scan17_inner_pair0_checked
  · exact scan17_inner_pair1_checked
  · exact scan17_inner_pair2_checked

theorem scan17_checked : reducedScanB 17 = true :=
  reducedScanB_of_source_scans 17 scan17_outer_checked scan17_inner_checked

end FiniteScan
end PetersenZeroForcing
