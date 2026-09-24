import PetersenZeroForcing.FiniteScanCheck15OuterPair2O000
import PetersenZeroForcing.FiniteScanCheck15OuterPair2O001
import PetersenZeroForcing.FiniteScanCheck15OuterPair2O010
import PetersenZeroForcing.FiniteScanCheck15OuterPair2O011
import PetersenZeroForcing.FiniteScanCheck15OuterPair2O100
import PetersenZeroForcing.FiniteScanCheck15OuterPair2O101
import PetersenZeroForcing.FiniteScanCheck15OuterPair2O110
import PetersenZeroForcing.FiniteScanCheck15OuterPair2O111

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_outer_pair2_cert_checked :
    pairCertScanB 15 (u 0) (outerPair2 15) = true :=
  pairCertScanB_of_octants 15 (u 0) (outerPair2 15)
    scan15_outer_pair2_o000_cert_checked
    scan15_outer_pair2_o001_cert_checked
    scan15_outer_pair2_o010_cert_checked
    scan15_outer_pair2_o011_cert_checked
    scan15_outer_pair2_o100_cert_checked
    scan15_outer_pair2_o101_cert_checked
    scan15_outer_pair2_o110_cert_checked
    scan15_outer_pair2_o111_cert_checked

theorem scan15_outer_pair2_checked :
    pairScanB 15 (u 0) (outerPair2 15) = true :=
  pairScanB_of_certScan 15 (u 0) (outerPair2 15)
    scan15_outer_pair2_cert_checked

end FiniteScan
end PetersenZeroForcing
