import PetersenZeroForcing.FiniteScanCheck13InnerPair1O000
import PetersenZeroForcing.FiniteScanCheck13InnerPair1O001
import PetersenZeroForcing.FiniteScanCheck13InnerPair1O010
import PetersenZeroForcing.FiniteScanCheck13InnerPair1O011
import PetersenZeroForcing.FiniteScanCheck13InnerPair1O100
import PetersenZeroForcing.FiniteScanCheck13InnerPair1O101
import PetersenZeroForcing.FiniteScanCheck13InnerPair1O110
import PetersenZeroForcing.FiniteScanCheck13InnerPair1O111

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_inner_pair1_cert_checked :
    pairCertScanB 13 (v 0) (innerPair1 13) = true :=
  pairCertScanB_of_octants 13 (v 0) (innerPair1 13)
    scan13_inner_pair1_o000_cert_checked
    scan13_inner_pair1_o001_cert_checked
    scan13_inner_pair1_o010_cert_checked
    scan13_inner_pair1_o011_cert_checked
    scan13_inner_pair1_o100_cert_checked
    scan13_inner_pair1_o101_cert_checked
    scan13_inner_pair1_o110_cert_checked
    scan13_inner_pair1_o111_cert_checked

theorem scan13_inner_pair1_checked :
    pairScanB 13 (v 0) (innerPair1 13) = true :=
  pairScanB_of_certScan 13 (v 0) (innerPair1 13)
    scan13_inner_pair1_cert_checked

end FiniteScan
end PetersenZeroForcing
