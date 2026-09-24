import PetersenZeroForcing.FiniteScanCheck16OuterPair1O100H0Q0
import PetersenZeroForcing.FiniteScanCheck16OuterPair1O100H0Q1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_outer_pair1_o100_h0_cert_checked :
    pairCertScanOctantHalfB 16 (u 0) (outerPair1 16)
      true false false false = true :=
  pairCertScanOctantHalfB_of_quarters 16 (u 0) (outerPair1 16)
    true false false false
    scan16_outer_pair1_o100_h0_q0_cert_checked
    scan16_outer_pair1_o100_h0_q1_cert_checked

end FiniteScan
end PetersenZeroForcing
