import PetersenZeroForcing.FiniteScanCheck16OuterPair0O010H0Q0
import PetersenZeroForcing.FiniteScanCheck16OuterPair0O010H0Q1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan16_outer_pair0_o010_h0_cert_checked :
    pairCertScanOctantHalfB 16 (u 0) (outerPair0 16)
      false true false false = true :=
  pairCertScanOctantHalfB_of_quarters 16 (u 0) (outerPair0 16)
    false true false false
    scan16_outer_pair0_o010_h0_q0_cert_checked
    scan16_outer_pair0_o010_h0_q1_cert_checked

end FiniteScan
end PetersenZeroForcing
