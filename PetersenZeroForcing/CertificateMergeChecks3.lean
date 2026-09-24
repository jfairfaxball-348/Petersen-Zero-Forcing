import PetersenZeroForcing.Certificate

namespace PetersenZeroForcing
namespace Certificate

set_option maxHeartbeats 4000000 in
theorem merge_group_12_checked :
    CertificateData.mergeGroup12.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_13_checked :
    CertificateData.mergeGroup13.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_14_checked :
    CertificateData.mergeGroup14.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_15_checked :
    CertificateData.mergeGroup15.all mergeRowOKB = true := by decide

end Certificate
end PetersenZeroForcing
