import PetersenZeroForcing.Certificate

namespace PetersenZeroForcing
namespace Certificate

set_option maxHeartbeats 4000000 in
theorem merge_group_16_checked :
    CertificateData.mergeGroup16.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_17_checked :
    CertificateData.mergeGroup17.all mergeRowOKB = true := by decide

set_option maxHeartbeats 4000000 in
theorem merge_group_18_checked :
    CertificateData.mergeGroup18.all mergeRowOKB = true := by decide

end Certificate
end PetersenZeroForcing
