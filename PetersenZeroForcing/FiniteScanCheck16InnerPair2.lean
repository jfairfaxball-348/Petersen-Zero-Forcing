import PetersenZeroForcing.FiniteScanCheck16InnerPair2O000
import PetersenZeroForcing.FiniteScanCheck16InnerPair2O001
import PetersenZeroForcing.FiniteScanCheck16InnerPair2O010
import PetersenZeroForcing.FiniteScanCheck16InnerPair2O011
import PetersenZeroForcing.FiniteScanCheck16InnerPair2O100
import PetersenZeroForcing.FiniteScanCheck16InnerPair2O101
import PetersenZeroForcing.FiniteScanCheck16InnerPair2O110
import PetersenZeroForcing.FiniteScanCheck16InnerPair2O111

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_inner_pair2_cert_checked :
    pairCertScanB 16 (v 0) (innerPair2 16) = true :=
  pairCertScanB_of_octants 16 (v 0) (innerPair2 16)
    scan16_inner_pair2_o000_cert_checked
    scan16_inner_pair2_o001_cert_checked
    scan16_inner_pair2_o010_cert_checked
    scan16_inner_pair2_o011_cert_checked
    scan16_inner_pair2_o100_cert_checked
    scan16_inner_pair2_o101_cert_checked
    scan16_inner_pair2_o110_cert_checked
    scan16_inner_pair2_o111_cert_checked

theorem scan16_inner_pair2_checked :
    pairScanB 16 (v 0) (innerPair2 16) = true :=
  pairScanB_of_certScan 16 (v 0) (innerPair2 16)
    scan16_inner_pair2_cert_checked

end FiniteScan
end PetersenZeroForcing
