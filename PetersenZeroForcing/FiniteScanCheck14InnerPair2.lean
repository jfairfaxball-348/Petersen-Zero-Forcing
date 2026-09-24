import PetersenZeroForcing.FiniteScanCheck14InnerPair2O000
import PetersenZeroForcing.FiniteScanCheck14InnerPair2O001
import PetersenZeroForcing.FiniteScanCheck14InnerPair2O010
import PetersenZeroForcing.FiniteScanCheck14InnerPair2O011
import PetersenZeroForcing.FiniteScanCheck14InnerPair2O100
import PetersenZeroForcing.FiniteScanCheck14InnerPair2O101
import PetersenZeroForcing.FiniteScanCheck14InnerPair2O110
import PetersenZeroForcing.FiniteScanCheck14InnerPair2O111

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan14_inner_pair2_cert_checked :
    pairCertScanB 14 (v 0) (innerPair2 14) = true :=
  pairCertScanB_of_octants 14 (v 0) (innerPair2 14)
    scan14_inner_pair2_o000_cert_checked
    scan14_inner_pair2_o001_cert_checked
    scan14_inner_pair2_o010_cert_checked
    scan14_inner_pair2_o011_cert_checked
    scan14_inner_pair2_o100_cert_checked
    scan14_inner_pair2_o101_cert_checked
    scan14_inner_pair2_o110_cert_checked
    scan14_inner_pair2_o111_cert_checked

theorem scan14_inner_pair2_checked :
    pairScanB 14 (v 0) (innerPair2 14) = true :=
  pairScanB_of_certScan 14 (v 0) (innerPair2 14)
    scan14_inner_pair2_cert_checked

end FiniteScan
end PetersenZeroForcing
