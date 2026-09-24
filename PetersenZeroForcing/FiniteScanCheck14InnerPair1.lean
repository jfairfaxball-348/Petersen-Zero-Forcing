import PetersenZeroForcing.FiniteScanCheck14InnerPair1O000
import PetersenZeroForcing.FiniteScanCheck14InnerPair1O001
import PetersenZeroForcing.FiniteScanCheck14InnerPair1O010
import PetersenZeroForcing.FiniteScanCheck14InnerPair1O011
import PetersenZeroForcing.FiniteScanCheck14InnerPair1O100
import PetersenZeroForcing.FiniteScanCheck14InnerPair1O101
import PetersenZeroForcing.FiniteScanCheck14InnerPair1O110
import PetersenZeroForcing.FiniteScanCheck14InnerPair1O111

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan14_inner_pair1_cert_checked :
    pairCertScanB 14 (v 0) (innerPair1 14) = true :=
  pairCertScanB_of_octants 14 (v 0) (innerPair1 14)
    scan14_inner_pair1_o000_cert_checked
    scan14_inner_pair1_o001_cert_checked
    scan14_inner_pair1_o010_cert_checked
    scan14_inner_pair1_o011_cert_checked
    scan14_inner_pair1_o100_cert_checked
    scan14_inner_pair1_o101_cert_checked
    scan14_inner_pair1_o110_cert_checked
    scan14_inner_pair1_o111_cert_checked

theorem scan14_inner_pair1_checked :
    pairScanB 14 (v 0) (innerPair1 14) = true :=
  pairScanB_of_certScan 14 (v 0) (innerPair1 14)
    scan14_inner_pair1_cert_checked

end FiniteScan
end PetersenZeroForcing
