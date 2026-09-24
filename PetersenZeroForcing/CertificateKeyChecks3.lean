import PetersenZeroForcing.Certificate

namespace PetersenZeroForcing
namespace Certificate

set_option maxHeartbeats 4000000 in
theorem key_group_30_checked :
    CertificateData.mergeGroup30.map mergeKeyOf = expectedKeysForLeft 30 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_31_checked :
    CertificateData.mergeGroup31.map mergeKeyOf = expectedKeysForLeft 31 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_32_checked :
    CertificateData.mergeGroup32.map mergeKeyOf = expectedKeysForLeft 32 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_33_checked :
    CertificateData.mergeGroup33.map mergeKeyOf = expectedKeysForLeft 33 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_34_checked :
    CertificateData.mergeGroup34.map mergeKeyOf = expectedKeysForLeft 34 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_35_checked :
    CertificateData.mergeGroup35.map mergeKeyOf = expectedKeysForLeft 35 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_36_checked :
    CertificateData.mergeGroup36.map mergeKeyOf = expectedKeysForLeft 36 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_37_checked :
    CertificateData.mergeGroup37.map mergeKeyOf = expectedKeysForLeft 37 := by decide

end Certificate
end PetersenZeroForcing
