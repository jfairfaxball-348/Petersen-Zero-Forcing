import PetersenZeroForcing.FiniteScanCheck13Outer
import PetersenZeroForcing.FiniteScanCheck13Inner
import PetersenZeroForcing.FiniteScanCheck14Outer
import PetersenZeroForcing.FiniteScanCheck14Inner
import PetersenZeroForcing.FiniteScanCheck15Outer
import PetersenZeroForcing.FiniteScanCheck15Inner
import PetersenZeroForcing.FiniteScanCheck16Outer
import PetersenZeroForcing.FiniteScanCheck16Inner
import PetersenZeroForcing.FiniteScanCheck17Outer
import PetersenZeroForcing.FiniteScanCheck17Inner
import PetersenZeroForcing.FiniteScanCheck18Outer
import PetersenZeroForcing.FiniteScanCheck18Inner
import PetersenZeroForcing.FiniteScanCheck19Outer
import PetersenZeroForcing.FiniteScanCheck19Inner
import PetersenZeroForcing.FiniteScanCheck20Outer
import PetersenZeroForcing.FiniteScanCheck20Inner
import PetersenZeroForcing.FiniteScanCheck21Outer
import PetersenZeroForcing.FiniteScanCheck21Inner

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_checked : reducedScanB 13 = true :=
  reducedScanB_of_source_scans 13 scan13_outer_checked scan13_inner_checked

theorem scan14_checked : reducedScanB 14 = true :=
  reducedScanB_of_source_scans 14 scan14_outer_checked scan14_inner_checked

theorem scan15_checked : reducedScanB 15 = true :=
  reducedScanB_of_source_scans 15 scan15_outer_checked scan15_inner_checked

theorem scan16_checked : reducedScanB 16 = true :=
  reducedScanB_of_source_scans 16 scan16_outer_checked scan16_inner_checked

theorem scan17_checked : reducedScanB 17 = true :=
  reducedScanB_of_source_scans 17 scan17_outer_checked scan17_inner_checked

theorem scan18_checked : reducedScanB 18 = true :=
  reducedScanB_of_source_scans 18 scan18_outer_checked scan18_inner_checked

theorem scan19_checked : reducedScanB 19 = true :=
  reducedScanB_of_source_scans 19 scan19_outer_checked scan19_inner_checked

theorem scan20_checked : reducedScanB 20 = true :=
  reducedScanB_of_source_scans 20 scan20_outer_checked scan20_inner_checked

theorem scan21_checked : reducedScanB 21 = true :=
  reducedScanB_of_source_scans 21 scan21_outer_checked scan21_inner_checked

end FiniteScan
end PetersenZeroForcing
