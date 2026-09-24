import PetersenZeroForcing.FiniteScanCheck15OuterPair0O000
import PetersenZeroForcing.FiniteScanCheck15OuterPair0O001
import PetersenZeroForcing.FiniteScanCheck15OuterPair0O010
import PetersenZeroForcing.FiniteScanCheck15OuterPair0O011
import PetersenZeroForcing.FiniteScanCheck15OuterPair0O100
import PetersenZeroForcing.FiniteScanCheck15OuterPair0O101
import PetersenZeroForcing.FiniteScanCheck15OuterPair0O110
import PetersenZeroForcing.FiniteScanCheck15OuterPair0O111

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan15_outer_pair0_cert_checked :
    pairCertScanB 15 (u 0) (outerPair0 15) = true :=
  pairCertScanB_of_octants 15 (u 0) (outerPair0 15)
    scan15_outer_pair0_o000_cert_checked
    scan15_outer_pair0_o001_cert_checked
    scan15_outer_pair0_o010_cert_checked
    scan15_outer_pair0_o011_cert_checked
    scan15_outer_pair0_o100_cert_checked
    scan15_outer_pair0_o101_cert_checked
    scan15_outer_pair0_o110_cert_checked
    scan15_outer_pair0_o111_cert_checked

theorem scan15_outer_pair0_checked :
    pairScanB 15 (u 0) (outerPair0 15) = true :=
  pairScanB_of_certScan 15 (u 0) (outerPair0 15)
    scan15_outer_pair0_cert_checked

end FiniteScan
end PetersenZeroForcing
