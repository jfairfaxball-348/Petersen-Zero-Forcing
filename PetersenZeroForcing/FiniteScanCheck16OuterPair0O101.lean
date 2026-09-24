import PetersenZeroForcing.FiniteScanCheck16OuterPair0O101H0
import PetersenZeroForcing.FiniteScanCheck16OuterPair0O101H1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_outer_pair0_o101_cert_checked :
    pairCertScanOctantB 16 (u 0) (outerPair0 16) true false true = true :=
  pairCertScanOctantB_of_halves 16 (u 0) (outerPair0 16)
    true false true
    scan16_outer_pair0_o101_h0_cert_checked
    scan16_outer_pair0_o101_h1_cert_checked

end FiniteScan
end PetersenZeroForcing
