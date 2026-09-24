import PetersenZeroForcing.FiniteScanCheck14OuterPair1O000
import PetersenZeroForcing.FiniteScanCheck14OuterPair1O001
import PetersenZeroForcing.FiniteScanCheck14OuterPair1O010
import PetersenZeroForcing.FiniteScanCheck14OuterPair1O011
import PetersenZeroForcing.FiniteScanCheck14OuterPair1O100
import PetersenZeroForcing.FiniteScanCheck14OuterPair1O101
import PetersenZeroForcing.FiniteScanCheck14OuterPair1O110
import PetersenZeroForcing.FiniteScanCheck14OuterPair1O111

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan14_outer_pair1_cert_checked :
    pairCertScanB 14 (u 0) (outerPair1 14) = true :=
  pairCertScanB_of_octants 14 (u 0) (outerPair1 14)
    scan14_outer_pair1_o000_cert_checked
    scan14_outer_pair1_o001_cert_checked
    scan14_outer_pair1_o010_cert_checked
    scan14_outer_pair1_o011_cert_checked
    scan14_outer_pair1_o100_cert_checked
    scan14_outer_pair1_o101_cert_checked
    scan14_outer_pair1_o110_cert_checked
    scan14_outer_pair1_o111_cert_checked

theorem scan14_outer_pair1_checked :
    pairScanB 14 (u 0) (outerPair1 14) = true :=
  pairScanB_of_certScan 14 (u 0) (outerPair1 14)
    scan14_outer_pair1_cert_checked

end FiniteScan
end PetersenZeroForcing
