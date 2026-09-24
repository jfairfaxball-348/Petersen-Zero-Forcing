import PetersenZeroForcing.FiniteScanCheck13OuterPair0O000
import PetersenZeroForcing.FiniteScanCheck13OuterPair0O001
import PetersenZeroForcing.FiniteScanCheck13OuterPair0O010
import PetersenZeroForcing.FiniteScanCheck13OuterPair0O011
import PetersenZeroForcing.FiniteScanCheck13OuterPair0O100
import PetersenZeroForcing.FiniteScanCheck13OuterPair0O101
import PetersenZeroForcing.FiniteScanCheck13OuterPair0O110
import PetersenZeroForcing.FiniteScanCheck13OuterPair0O111

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_outer_pair0_cert_checked :
    pairCertScanB 13 (u 0) (outerPair0 13) = true :=
  pairCertScanB_of_octants 13 (u 0) (outerPair0 13)
    scan13_outer_pair0_o000_cert_checked
    scan13_outer_pair0_o001_cert_checked
    scan13_outer_pair0_o010_cert_checked
    scan13_outer_pair0_o011_cert_checked
    scan13_outer_pair0_o100_cert_checked
    scan13_outer_pair0_o101_cert_checked
    scan13_outer_pair0_o110_cert_checked
    scan13_outer_pair0_o111_cert_checked

theorem scan13_outer_pair0_checked :
    pairScanB 13 (u 0) (outerPair0 13) = true :=
  pairScanB_of_certScan 13 (u 0) (outerPair0 13)
    scan13_outer_pair0_cert_checked

end FiniteScan
end PetersenZeroForcing
