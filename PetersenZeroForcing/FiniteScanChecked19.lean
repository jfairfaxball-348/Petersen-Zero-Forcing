import PetersenZeroForcing.FiniteScanCheck19OuterPair0
import PetersenZeroForcing.FiniteScanCheck19OuterPair1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2
import PetersenZeroForcing.FiniteScanCheck19InnerPair0
import PetersenZeroForcing.FiniteScanCheck19InnerPair1
import PetersenZeroForcing.FiniteScanCheck19InnerPair2

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan19_outer_checked : sourceScanB 19 (u 0) = true := by
  apply sourceScanB_of_three_pairs 19 (u 0)
    (outerPair0 19) (outerPair1 19) (outerPair2 19)
  · decide
  · exact scan19_outer_pair0_checked
  · exact scan19_outer_pair1_checked
  · exact scan19_outer_pair2_checked

theorem scan19_inner_checked : sourceScanB 19 (v 0) = true := by
  apply sourceScanB_of_three_pairs 19 (v 0)
    (innerPair0 19) (innerPair1 19) (innerPair2 19)
  · decide
  · exact scan19_inner_pair0_checked
  · exact scan19_inner_pair1_checked
  · exact scan19_inner_pair2_checked

theorem scan19_checked : reducedScanB 19 = true :=
  reducedScanB_of_source_scans 19 scan19_outer_checked scan19_inner_checked

end FiniteScan
end PetersenZeroForcing
