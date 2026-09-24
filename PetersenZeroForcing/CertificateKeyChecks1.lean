import PetersenZeroForcing.Certificate

namespace PetersenZeroForcing
namespace Certificate

set_option maxHeartbeats 4000000 in
theorem key_group_10_checked :
    CertificateData.mergeGroup10.map mergeKeyOf = expectedKeysForLeft 10 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_11_checked :
    CertificateData.mergeGroup11.map mergeKeyOf = expectedKeysForLeft 11 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_12_checked :
    CertificateData.mergeGroup12.map mergeKeyOf = expectedKeysForLeft 12 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_13_checked :
    CertificateData.mergeGroup13.map mergeKeyOf = expectedKeysForLeft 13 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_14_checked :
    CertificateData.mergeGroup14.map mergeKeyOf = expectedKeysForLeft 14 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_15_checked :
    CertificateData.mergeGroup15.map mergeKeyOf = expectedKeysForLeft 15 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_16_checked :
    CertificateData.mergeGroup16.map mergeKeyOf = expectedKeysForLeft 16 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_17_checked :
    CertificateData.mergeGroup17.map mergeKeyOf = expectedKeysForLeft 17 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_18_checked :
    CertificateData.mergeGroup18.map mergeKeyOf = expectedKeysForLeft 18 := by decide

set_option maxHeartbeats 4000000 in
theorem key_group_19_checked :
    CertificateData.mergeGroup19.map mergeKeyOf = expectedKeysForLeft 19 := by decide

end Certificate
end PetersenZeroForcing
