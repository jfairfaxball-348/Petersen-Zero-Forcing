import PetersenZeroForcing.FiniteScanCheck14InnerPair0O000
import PetersenZeroForcing.FiniteScanCheck14InnerPair0O001
import PetersenZeroForcing.FiniteScanCheck14InnerPair0O010
import PetersenZeroForcing.FiniteScanCheck14InnerPair0O011
import PetersenZeroForcing.FiniteScanCheck14InnerPair0O100
import PetersenZeroForcing.FiniteScanCheck14InnerPair0O101
import PetersenZeroForcing.FiniteScanCheck14InnerPair0O110
import PetersenZeroForcing.FiniteScanCheck14InnerPair0O111

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan14_inner_pair0_cert_checked :
    pairCertScanB 14 (v 0) (innerPair0 14) = true :=
  pairCertScanB_of_octants 14 (v 0) (innerPair0 14)
    scan14_inner_pair0_o000_cert_checked
    scan14_inner_pair0_o001_cert_checked
    scan14_inner_pair0_o010_cert_checked
    scan14_inner_pair0_o011_cert_checked
    scan14_inner_pair0_o100_cert_checked
    scan14_inner_pair0_o101_cert_checked
    scan14_inner_pair0_o110_cert_checked
    scan14_inner_pair0_o111_cert_checked

theorem scan14_inner_pair0_checked :
    pairScanB 14 (v 0) (innerPair0 14) = true :=
  pairScanB_of_certScan 14 (v 0) (innerPair0 14)
    scan14_inner_pair0_cert_checked

end FiniteScan
end PetersenZeroForcing
