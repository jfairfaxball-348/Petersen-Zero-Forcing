import PetersenZeroForcing.FiniteScanCheck16OuterPair0O100H1Q0
import PetersenZeroForcing.FiniteScanCheck16OuterPair0O100H1Q1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_outer_pair0_o100_h1_cert_checked :
    pairCertScanOctantHalfB 16 (u 0) (outerPair0 16)
      true false false true = true :=
  pairCertScanOctantHalfB_of_quarters 16 (u 0) (outerPair0 16)
    true false false true
    scan16_outer_pair0_o100_h1_q0_cert_checked
    scan16_outer_pair0_o100_h1_q1_cert_checked

end FiniteScan
end PetersenZeroForcing
