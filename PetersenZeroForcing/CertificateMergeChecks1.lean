import PetersenZeroForcing.Certificate

namespace PetersenZeroForcing
namespace Certificate

set_option maxHeartbeats 4000000 in
theorem merge_group_4_checked :
    CertificateData.mergeGroup4.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_5_checked :
    CertificateData.mergeGroup5.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_6_checked :
    CertificateData.mergeGroup6.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_7_checked :
    CertificateData.mergeGroup7.all mergeRowOKB = true := by decide

end Certificate
end PetersenZeroForcing
