import PetersenZeroForcing.FiniteScanCheck15OuterPair1O000
import PetersenZeroForcing.FiniteScanCheck15OuterPair1O001
import PetersenZeroForcing.FiniteScanCheck15OuterPair1O010
import PetersenZeroForcing.FiniteScanCheck15OuterPair1O011
import PetersenZeroForcing.FiniteScanCheck15OuterPair1O100
import PetersenZeroForcing.FiniteScanCheck15OuterPair1O101
import PetersenZeroForcing.FiniteScanCheck15OuterPair1O110
import PetersenZeroForcing.FiniteScanCheck15OuterPair1O111

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_outer_pair1_cert_checked :
    pairCertScanB 15 (u 0) (outerPair1 15) = true :=
  pairCertScanB_of_octants 15 (u 0) (outerPair1 15)
    scan15_outer_pair1_o000_cert_checked
    scan15_outer_pair1_o001_cert_checked
    scan15_outer_pair1_o010_cert_checked
    scan15_outer_pair1_o011_cert_checked
    scan15_outer_pair1_o100_cert_checked
    scan15_outer_pair1_o101_cert_checked
    scan15_outer_pair1_o110_cert_checked
    scan15_outer_pair1_o111_cert_checked

theorem scan15_outer_pair1_checked :
    pairScanB 15 (u 0) (outerPair1 15) = true :=
  pairScanB_of_certScan 15 (u 0) (outerPair1 15)
    scan15_outer_pair1_cert_checked

end FiniteScan
end PetersenZeroForcing
