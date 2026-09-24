import PetersenZeroForcing.Certificate

namespace PetersenZeroForcing
namespace Certificate

set_option maxHeartbeats 4000000 in
set_option maxRecDepth 3000 in
theorem key_group_0_checked :
    CertificateData.mergeGroup0.map mergeKeyOf = expectedKeysForLeft 0 := by decide

set_option maxHeartbeats 4000000 in
set_option maxRecDepth 3000 in
theorem key_group_1_checked :
    CertificateData.mergeGroup1.map mergeKeyOf = expectedKeysForLeft 1 := by decide

set_option maxHeartbeats 4000000 in
set_option maxRecDepth 3000 in
theorem key_group_2_checked :
    CertificateData.mergeGroup2.map mergeKeyOf = expectedKeysForLeft 2 := by decide

set_option maxHeartbeats 4000000 in
set_option maxRecDepth 3000 in
theorem key_group_3_checked :
    CertificateData.mergeGroup3.map mergeKeyOf = expectedKeysForLeft 3 := by decide

set_option maxHeartbeats 4000000 in
set_option maxRecDepth 3000 in
theorem key_group_4_checked :
    CertificateData.mergeGroup4.map mergeKeyOf = expectedKeysForLeft 4 := by decide

set_option maxHeartbeats 4000000 in
set_option maxRecDepth 3000 in
theorem key_group_5_checked :
    CertificateData.mergeGroup5.map mergeKeyOf = expectedKeysForLeft 5 := by decide

set_option maxHeartbeats 4000000 in
set_option maxRecDepth 3000 in
theorem key_group_6_checked :
    CertificateData.mergeGroup6.map mergeKeyOf = expectedKeysForLeft 6 := by decide

set_option maxHeartbeats 4000000 in
set_option maxRecDepth 3000 in
theorem key_group_7_checked :
    CertificateData.mergeGroup7.map mergeKeyOf = expectedKeysForLeft 7 := by decide

set_option maxHeartbeats 4000000 in
set_option maxRecDepth 3000 in
theorem key_group_8_checked :
    CertificateData.mergeGroup8.map mergeKeyOf = expectedKeysForLeft 8 := by decide

set_option maxHeartbeats 4000000 in
set_option maxRecDepth 3000 in
theorem key_group_9_checked :
    CertificateData.mergeGroup9.map mergeKeyOf = expectedKeysForLeft 9 := by decide

end Certificate
end PetersenZeroForcing
