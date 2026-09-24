import PetersenZeroForcing.Certificate

namespace PetersenZeroForcing
namespace Certificate

set_option maxHeartbeats 4000000 in
theorem key_group_20_checked :
    CertificateData.mergeGroup20.map mergeKeyOf = expectedKeysForLeft 20 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_21_checked :
    CertificateData.mergeGroup21.map mergeKeyOf = expectedKeysForLeft 21 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_22_checked :
    CertificateData.mergeGroup22.map mergeKeyOf = expectedKeysForLeft 22 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_23_checked :
    CertificateData.mergeGroup23.map mergeKeyOf = expectedKeysForLeft 23 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_24_checked :
    CertificateData.mergeGroup24.map mergeKeyOf = expectedKeysForLeft 24 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_25_checked :
    CertificateData.mergeGroup25.map mergeKeyOf = expectedKeysForLeft 25 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_26_checked :
    CertificateData.mergeGroup26.map mergeKeyOf = expectedKeysForLeft 26 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_27_checked :
    CertificateData.mergeGroup27.map mergeKeyOf = expectedKeysForLeft 27 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_28_checked :
    CertificateData.mergeGroup28.map mergeKeyOf = expectedKeysForLeft 28 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_29_checked :
    CertificateData.mergeGroup29.map mergeKeyOf = expectedKeysForLeft 29 := by decide

end Certificate
end PetersenZeroForcing
