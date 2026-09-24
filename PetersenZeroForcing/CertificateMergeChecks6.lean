import PetersenZeroForcing.Certificate

namespace PetersenZeroForcing
namespace Certificate

set_option maxHeartbeats 4000000 in
theorem merge_group_22_checked :
    CertificateData.mergeGroup22.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_23_checked :
    CertificateData.mergeGroup23.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_24_checked :
    CertificateData.mergeGroup24.all mergeRowOKB = true := by decide

end Certificate
end PetersenZeroForcing
