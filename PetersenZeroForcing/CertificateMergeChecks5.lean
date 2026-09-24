import PetersenZeroForcing.Certificate

namespace PetersenZeroForcing
namespace Certificate

set_option maxHeartbeats 4000000 in
theorem merge_group_19_checked :
    CertificateData.mergeGroup19.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_20_checked :
    CertificateData.mergeGroup20.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_21_checked :
    CertificateData.mergeGroup21.all mergeRowOKB = true := by decide

end Certificate
end PetersenZeroForcing
