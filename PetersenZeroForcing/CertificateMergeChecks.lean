import PetersenZeroForcing.CertificateMergeChecks0
import PetersenZeroForcing.CertificateMergeChecks1
import PetersenZeroForcing.CertificateMergeChecks2
import PetersenZeroForcing.CertificateMergeChecks3
import PetersenZeroForcing.CertificateMergeChecks4
import PetersenZeroForcing.CertificateMergeChecks5
import PetersenZeroForcing.CertificateMergeChecks6

namespace PetersenZeroForcing
namespace Certificate

theorem certificate_merge_rows_checked : certificateMergeRowsOKB = true := by
  simp [certificateMergeRowsOKB, CertificateData.mergeGroups,
    merge_group_0_checked,
    merge_group_1_checked,
    merge_group_2_checked,
    merge_group_3_checked,
    merge_group_4_checked,
    merge_group_5_checked,
    merge_group_6_checked,
    merge_group_7_checked,
    merge_group_8_checked,
    merge_group_9_checked,
    merge_group_10_checked,
    merge_group_11_checked,
    merge_group_12_checked,
    merge_group_13_checked,
    merge_group_14_checked,
    merge_group_15_checked,
    merge_group_16_checked,
    merge_group_17_checked,
    merge_group_18_checked,
    merge_group_19_checked,
    merge_group_20_checked,
    merge_group_21_checked,
    merge_group_22_checked,
    merge_group_23_checked,
    merge_group_24_checked,
    CertificateData.mergeGroup25,
    CertificateData.mergeGroup26,
    CertificateData.mergeGroup27,
    CertificateData.mergeGroup28,
    CertificateData.mergeGroup29,
    CertificateData.mergeGroup30,
    CertificateData.mergeGroup31,
    CertificateData.mergeGroup32,
    CertificateData.mergeGroup33,
    CertificateData.mergeGroup34,
    CertificateData.mergeGroup35,
    CertificateData.mergeGroup36,
    CertificateData.mergeGroup37]

end Certificate
end PetersenZeroForcing
