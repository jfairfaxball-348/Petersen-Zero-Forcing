import PetersenZeroForcing.FiniteScanCheck16InnerPair0O000
import PetersenZeroForcing.FiniteScanCheck16InnerPair0O001
import PetersenZeroForcing.FiniteScanCheck16InnerPair0O010
import PetersenZeroForcing.FiniteScanCheck16InnerPair0O011
import PetersenZeroForcing.FiniteScanCheck16InnerPair0O100
import PetersenZeroForcing.FiniteScanCheck16InnerPair0O101
import PetersenZeroForcing.FiniteScanCheck16InnerPair0O110
import PetersenZeroForcing.FiniteScanCheck16InnerPair0O111

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_inner_pair0_cert_checked :
    pairCertScanB 16 (v 0) (innerPair0 16) = true :=
  pairCertScanB_of_octants 16 (v 0) (innerPair0 16)
    scan16_inner_pair0_o000_cert_checked
    scan16_inner_pair0_o001_cert_checked
    scan16_inner_pair0_o010_cert_checked
    scan16_inner_pair0_o011_cert_checked
    scan16_inner_pair0_o100_cert_checked
    scan16_inner_pair0_o101_cert_checked
    scan16_inner_pair0_o110_cert_checked
    scan16_inner_pair0_o111_cert_checked

theorem scan16_inner_pair0_checked :
    pairScanB 16 (v 0) (innerPair0 16) = true :=
  pairScanB_of_certScan 16 (v 0) (innerPair0 16)
    scan16_inner_pair0_cert_checked

end FiniteScan
end PetersenZeroForcing
