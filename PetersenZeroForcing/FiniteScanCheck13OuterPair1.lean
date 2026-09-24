import PetersenZeroForcing.FiniteScanCheck13OuterPair1O000
import PetersenZeroForcing.FiniteScanCheck13OuterPair1O001
import PetersenZeroForcing.FiniteScanCheck13OuterPair1O010
import PetersenZeroForcing.FiniteScanCheck13OuterPair1O011
import PetersenZeroForcing.FiniteScanCheck13OuterPair1O100
import PetersenZeroForcing.FiniteScanCheck13OuterPair1O101
import PetersenZeroForcing.FiniteScanCheck13OuterPair1O110
import PetersenZeroForcing.FiniteScanCheck13OuterPair1O111

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_outer_pair1_cert_checked :
    pairCertScanB 13 (u 0) (outerPair1 13) = true :=
  pairCertScanB_of_octants 13 (u 0) (outerPair1 13)
    scan13_outer_pair1_o000_cert_checked
    scan13_outer_pair1_o001_cert_checked
    scan13_outer_pair1_o010_cert_checked
    scan13_outer_pair1_o011_cert_checked
    scan13_outer_pair1_o100_cert_checked
    scan13_outer_pair1_o101_cert_checked
    scan13_outer_pair1_o110_cert_checked
    scan13_outer_pair1_o111_cert_checked

theorem scan13_outer_pair1_checked :
    pairScanB 13 (u 0) (outerPair1 13) = true :=
  pairScanB_of_certScan 13 (u 0) (outerPair1 13)
    scan13_outer_pair1_cert_checked

end FiniteScan
end PetersenZeroForcing
