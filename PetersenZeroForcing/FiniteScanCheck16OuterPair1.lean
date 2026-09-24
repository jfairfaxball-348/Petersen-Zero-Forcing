import PetersenZeroForcing.FiniteScanCheck16OuterPair1O000
import PetersenZeroForcing.FiniteScanCheck16OuterPair1O001
import PetersenZeroForcing.FiniteScanCheck16OuterPair1O010
import PetersenZeroForcing.FiniteScanCheck16OuterPair1O011
import PetersenZeroForcing.FiniteScanCheck16OuterPair1O100
import PetersenZeroForcing.FiniteScanCheck16OuterPair1O101
import PetersenZeroForcing.FiniteScanCheck16OuterPair1O110
import PetersenZeroForcing.FiniteScanCheck16OuterPair1O111

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_outer_pair1_cert_checked :
    pairCertScanB 16 (u 0) (outerPair1 16) = true :=
  pairCertScanB_of_octants 16 (u 0) (outerPair1 16)
    scan16_outer_pair1_o000_cert_checked
    scan16_outer_pair1_o001_cert_checked
    scan16_outer_pair1_o010_cert_checked
    scan16_outer_pair1_o011_cert_checked
    scan16_outer_pair1_o100_cert_checked
    scan16_outer_pair1_o101_cert_checked
    scan16_outer_pair1_o110_cert_checked
    scan16_outer_pair1_o111_cert_checked

theorem scan16_outer_pair1_checked :
    pairScanB 16 (u 0) (outerPair1 16) = true :=
  pairScanB_of_certScan 16 (u 0) (outerPair1 16)
    scan16_outer_pair1_cert_checked

end FiniteScan
end PetersenZeroForcing
