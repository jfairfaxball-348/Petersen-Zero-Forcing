import PetersenZeroForcing.Certificate

namespace PetersenZeroForcing
namespace Certificate

set_option maxHeartbeats 4000000 in
theorem merge_group_8_checked :
    CertificateData.mergeGroup8.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_9_checked :
    CertificateData.mergeGroup9.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_10_checked :
    CertificateData.mergeGroup10.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_11_checked :
    CertificateData.mergeGroup11.all mergeRowOKB = true := by decide

end Certificate
end PetersenZeroForcing
