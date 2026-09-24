import PetersenZeroForcing.CertificateKeyChecks0
import PetersenZeroForcing.CertificateKeyChecks1
import PetersenZeroForcing.CertificateKeyChecks2
import PetersenZeroForcing.CertificateKeyChecks3

namespace PetersenZeroForcing
namespace Certificate

theorem certificate_key_groups_eq_expected :
    certificateKeyGroups = expectedKeyGroups := by
  simp [certificateKeyGroups, CertificateData.mergeGroups, expectedKeyGroups,
    key_group_0_checked,
    key_group_1_checked,
    key_group_2_checked,
    key_group_3_checked,
    key_group_4_checked,
    key_group_5_checked,
    key_group_6_checked,
    key_group_7_checked,
    key_group_8_checked,
    key_group_9_checked,
    key_group_10_checked,
    key_group_11_checked,
    key_group_12_checked,
    key_group_13_checked,
    key_group_14_checked,
    key_group_15_checked,
    key_group_16_checked,
    key_group_17_checked,
    key_group_18_checked,
    key_group_19_checked,
    key_group_20_checked,
    key_group_21_checked,
    key_group_22_checked,
    key_group_23_checked,
    key_group_24_checked,
    key_group_25_checked,
    key_group_26_checked,
    key_group_27_checked,
    key_group_28_checked,
    key_group_29_checked,
    key_group_30_checked,
    key_group_31_checked,
    key_group_32_checked,
    key_group_33_checked,
    key_group_34_checked,
    key_group_35_checked,
    key_group_36_checked,
    key_group_37_checked]

theorem certificate_keys_eq_expected : certificateKeys = expectedKeys := by
  have h := congrArg List.flatten certificate_key_groups_eq_expected
  simpa [certificateKeys, expectedKeys] using h

end Certificate
end PetersenZeroForcing
