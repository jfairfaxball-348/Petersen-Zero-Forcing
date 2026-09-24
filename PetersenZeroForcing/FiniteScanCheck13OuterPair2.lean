import PetersenZeroForcing.FiniteScanCheck13OuterPair2O000
import PetersenZeroForcing.FiniteScanCheck13OuterPair2O001
import PetersenZeroForcing.FiniteScanCheck13OuterPair2O010
import PetersenZeroForcing.FiniteScanCheck13OuterPair2O011
import PetersenZeroForcing.FiniteScanCheck13OuterPair2O100
import PetersenZeroForcing.FiniteScanCheck13OuterPair2O101
import PetersenZeroForcing.FiniteScanCheck13OuterPair2O110
import PetersenZeroForcing.FiniteScanCheck13OuterPair2O111

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan13_outer_pair2_cert_checked :
    pairCertScanB 13 (u 0) (outerPair2 13) = true :=
  pairCertScanB_of_octants 13 (u 0) (outerPair2 13)
    scan13_outer_pair2_o000_cert_checked
    scan13_outer_pair2_o001_cert_checked
    scan13_outer_pair2_o010_cert_checked
    scan13_outer_pair2_o011_cert_checked
    scan13_outer_pair2_o100_cert_checked
    scan13_outer_pair2_o101_cert_checked
    scan13_outer_pair2_o110_cert_checked
    scan13_outer_pair2_o111_cert_checked

theorem scan13_outer_pair2_checked :
    pairScanB 13 (u 0) (outerPair2 13) = true :=
  pairScanB_of_certScan 13 (u 0) (outerPair2 13)
    scan13_outer_pair2_cert_checked

end FiniteScan
end PetersenZeroForcing
