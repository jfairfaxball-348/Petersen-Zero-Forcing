import PetersenZeroForcing.Certificate

namespace PetersenZeroForcing
namespace Certificate

set_option maxHeartbeats 4000000 in
theorem merge_group_0_checked :
    CertificateData.mergeGroup0.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_1_checked :
    CertificateData.mergeGroup1.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_2_checked :
    CertificateData.mergeGroup2.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_3_checked :
    CertificateData.mergeGroup3.all mergeRowOKB = true := by decide

end Certificate
end PetersenZeroForcing
