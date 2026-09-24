import PetersenZeroForcing.FiniteScanCheck16OuterPair2O000
import PetersenZeroForcing.FiniteScanCheck16OuterPair2O001
import PetersenZeroForcing.FiniteScanCheck16OuterPair2O010
import PetersenZeroForcing.FiniteScanCheck16OuterPair2O011
import PetersenZeroForcing.FiniteScanCheck16OuterPair2O100
import PetersenZeroForcing.FiniteScanCheck16OuterPair2O101
import PetersenZeroForcing.FiniteScanCheck16OuterPair2O110
import PetersenZeroForcing.FiniteScanCheck16OuterPair2O111

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_outer_pair2_cert_checked :
    pairCertScanB 16 (u 0) (outerPair2 16) = true :=
  pairCertScanB_of_octants 16 (u 0) (outerPair2 16)
    scan16_outer_pair2_o000_cert_checked
    scan16_outer_pair2_o001_cert_checked
    scan16_outer_pair2_o010_cert_checked
    scan16_outer_pair2_o011_cert_checked
    scan16_outer_pair2_o100_cert_checked
    scan16_outer_pair2_o101_cert_checked
    scan16_outer_pair2_o110_cert_checked
    scan16_outer_pair2_o111_cert_checked

theorem scan16_outer_pair2_checked :
    pairScanB 16 (u 0) (outerPair2 16) = true :=
  pairScanB_of_certScan 16 (u 0) (outerPair2 16)
    scan16_outer_pair2_cert_checked

end FiniteScan
end PetersenZeroForcing
