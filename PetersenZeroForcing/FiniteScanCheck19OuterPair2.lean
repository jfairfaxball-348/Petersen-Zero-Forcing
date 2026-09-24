import PetersenZeroForcing.FiniteScanCheck19OuterPair2O000H0Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O000H0Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O000H0Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O000H0Q1E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O000H1Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O000H1Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O000H1Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O000H1Q1E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O001H0Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O001H0Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O001H0Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O001H0Q1E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O001H1Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O001H1Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O001H1Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O001H1Q1E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O010H0Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O010H0Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O010H0Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O010H0Q1E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O010H1Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O010H1Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O010H1Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O010H1Q1E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O011H0Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O011H0Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O011H0Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O011H0Q1E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O011H1Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O011H1Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O011H1Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O011H1Q1E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O100H0Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O100H0Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O100H0Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O100H0Q1E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O100H1Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O100H1Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O100H1Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O100H1Q1E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O101H0Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O101H0Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O101H0Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O101H0Q1E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O101H1Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O101H1Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O101H1Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O101H1Q1E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O110H0Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O110H0Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O110H0Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O110H0Q1E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O110H1Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O110H1Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O110H1Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O110H1Q1E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O111H0Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O111H0Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O111H0Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O111H0Q1E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O111H1Q0E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O111H1Q0E1
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O111H1Q1E0
import PetersenZeroForcing.FiniteScanCheck19OuterPair2O111H1Q1E1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan19_outer_pair2_o000_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false false false false false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false false false false false
    scan19_outer_pair2_o000_h0_q0_e0_cert_checked
    scan19_outer_pair2_o000_h0_q0_e1_cert_checked

theorem scan19_outer_pair2_o000_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false false false false true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false false false false true
    scan19_outer_pair2_o000_h0_q1_e0_cert_checked
    scan19_outer_pair2_o000_h0_q1_e1_cert_checked

theorem scan19_outer_pair2_o000_h0_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      false false false false = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    false false false false
    scan19_outer_pair2_o000_h0_q0_cert_checked
    scan19_outer_pair2_o000_h0_q1_cert_checked

theorem scan19_outer_pair2_o000_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false false false true false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false false false true false
    scan19_outer_pair2_o000_h1_q0_e0_cert_checked
    scan19_outer_pair2_o000_h1_q0_e1_cert_checked

theorem scan19_outer_pair2_o000_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false false false true true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false false false true true
    scan19_outer_pair2_o000_h1_q1_e0_cert_checked
    scan19_outer_pair2_o000_h1_q1_e1_cert_checked

theorem scan19_outer_pair2_o000_h1_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      false false false true = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    false false false true
    scan19_outer_pair2_o000_h1_q0_cert_checked
    scan19_outer_pair2_o000_h1_q1_cert_checked

theorem scan19_outer_pair2_o000_cert_checked :
    pairCertScanOctantB 19 (u 0) (outerPair2 19)
      false false false = true :=
  pairCertScanOctantB_of_halves 19 (u 0) (outerPair2 19)
    false false false
    scan19_outer_pair2_o000_h0_cert_checked
    scan19_outer_pair2_o000_h1_cert_checked

theorem scan19_outer_pair2_o001_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false false true false false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false false true false false
    scan19_outer_pair2_o001_h0_q0_e0_cert_checked
    scan19_outer_pair2_o001_h0_q0_e1_cert_checked

theorem scan19_outer_pair2_o001_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false false true false true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false false true false true
    scan19_outer_pair2_o001_h0_q1_e0_cert_checked
    scan19_outer_pair2_o001_h0_q1_e1_cert_checked

theorem scan19_outer_pair2_o001_h0_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      false false true false = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    false false true false
    scan19_outer_pair2_o001_h0_q0_cert_checked
    scan19_outer_pair2_o001_h0_q1_cert_checked

theorem scan19_outer_pair2_o001_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false false true true false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false false true true false
    scan19_outer_pair2_o001_h1_q0_e0_cert_checked
    scan19_outer_pair2_o001_h1_q0_e1_cert_checked

theorem scan19_outer_pair2_o001_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false false true true true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false false true true true
    scan19_outer_pair2_o001_h1_q1_e0_cert_checked
    scan19_outer_pair2_o001_h1_q1_e1_cert_checked

theorem scan19_outer_pair2_o001_h1_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      false false true true = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    false false true true
    scan19_outer_pair2_o001_h1_q0_cert_checked
    scan19_outer_pair2_o001_h1_q1_cert_checked

theorem scan19_outer_pair2_o001_cert_checked :
    pairCertScanOctantB 19 (u 0) (outerPair2 19)
      false false true = true :=
  pairCertScanOctantB_of_halves 19 (u 0) (outerPair2 19)
    false false true
    scan19_outer_pair2_o001_h0_cert_checked
    scan19_outer_pair2_o001_h1_cert_checked

theorem scan19_outer_pair2_o010_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false true false false false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false true false false false
    scan19_outer_pair2_o010_h0_q0_e0_cert_checked
    scan19_outer_pair2_o010_h0_q0_e1_cert_checked

theorem scan19_outer_pair2_o010_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false true false false true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false true false false true
    scan19_outer_pair2_o010_h0_q1_e0_cert_checked
    scan19_outer_pair2_o010_h0_q1_e1_cert_checked

theorem scan19_outer_pair2_o010_h0_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      false true false false = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    false true false false
    scan19_outer_pair2_o010_h0_q0_cert_checked
    scan19_outer_pair2_o010_h0_q1_cert_checked

theorem scan19_outer_pair2_o010_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false true false true false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false true false true false
    scan19_outer_pair2_o010_h1_q0_e0_cert_checked
    scan19_outer_pair2_o010_h1_q0_e1_cert_checked

theorem scan19_outer_pair2_o010_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false true false true true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false true false true true
    scan19_outer_pair2_o010_h1_q1_e0_cert_checked
    scan19_outer_pair2_o010_h1_q1_e1_cert_checked

theorem scan19_outer_pair2_o010_h1_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      false true false true = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    false true false true
    scan19_outer_pair2_o010_h1_q0_cert_checked
    scan19_outer_pair2_o010_h1_q1_cert_checked

theorem scan19_outer_pair2_o010_cert_checked :
    pairCertScanOctantB 19 (u 0) (outerPair2 19)
      false true false = true :=
  pairCertScanOctantB_of_halves 19 (u 0) (outerPair2 19)
    false true false
    scan19_outer_pair2_o010_h0_cert_checked
    scan19_outer_pair2_o010_h1_cert_checked

theorem scan19_outer_pair2_o011_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false true true false false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false true true false false
    scan19_outer_pair2_o011_h0_q0_e0_cert_checked
    scan19_outer_pair2_o011_h0_q0_e1_cert_checked

theorem scan19_outer_pair2_o011_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false true true false true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false true true false true
    scan19_outer_pair2_o011_h0_q1_e0_cert_checked
    scan19_outer_pair2_o011_h0_q1_e1_cert_checked

theorem scan19_outer_pair2_o011_h0_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      false true true false = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    false true true false
    scan19_outer_pair2_o011_h0_q0_cert_checked
    scan19_outer_pair2_o011_h0_q1_cert_checked

theorem scan19_outer_pair2_o011_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false true true true false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false true true true false
    scan19_outer_pair2_o011_h1_q0_e0_cert_checked
    scan19_outer_pair2_o011_h1_q0_e1_cert_checked

theorem scan19_outer_pair2_o011_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      false true true true true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    false true true true true
    scan19_outer_pair2_o011_h1_q1_e0_cert_checked
    scan19_outer_pair2_o011_h1_q1_e1_cert_checked

theorem scan19_outer_pair2_o011_h1_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      false true true true = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    false true true true
    scan19_outer_pair2_o011_h1_q0_cert_checked
    scan19_outer_pair2_o011_h1_q1_cert_checked

theorem scan19_outer_pair2_o011_cert_checked :
    pairCertScanOctantB 19 (u 0) (outerPair2 19)
      false true true = true :=
  pairCertScanOctantB_of_halves 19 (u 0) (outerPair2 19)
    false true true
    scan19_outer_pair2_o011_h0_cert_checked
    scan19_outer_pair2_o011_h1_cert_checked

theorem scan19_outer_pair2_o100_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true false false false false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true false false false false
    scan19_outer_pair2_o100_h0_q0_e0_cert_checked
    scan19_outer_pair2_o100_h0_q0_e1_cert_checked

theorem scan19_outer_pair2_o100_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true false false false true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true false false false true
    scan19_outer_pair2_o100_h0_q1_e0_cert_checked
    scan19_outer_pair2_o100_h0_q1_e1_cert_checked

theorem scan19_outer_pair2_o100_h0_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      true false false false = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    true false false false
    scan19_outer_pair2_o100_h0_q0_cert_checked
    scan19_outer_pair2_o100_h0_q1_cert_checked

theorem scan19_outer_pair2_o100_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true false false true false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true false false true false
    scan19_outer_pair2_o100_h1_q0_e0_cert_checked
    scan19_outer_pair2_o100_h1_q0_e1_cert_checked

theorem scan19_outer_pair2_o100_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true false false true true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true false false true true
    scan19_outer_pair2_o100_h1_q1_e0_cert_checked
    scan19_outer_pair2_o100_h1_q1_e1_cert_checked

theorem scan19_outer_pair2_o100_h1_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      true false false true = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    true false false true
    scan19_outer_pair2_o100_h1_q0_cert_checked
    scan19_outer_pair2_o100_h1_q1_cert_checked

theorem scan19_outer_pair2_o100_cert_checked :
    pairCertScanOctantB 19 (u 0) (outerPair2 19)
      true false false = true :=
  pairCertScanOctantB_of_halves 19 (u 0) (outerPair2 19)
    true false false
    scan19_outer_pair2_o100_h0_cert_checked
    scan19_outer_pair2_o100_h1_cert_checked

theorem scan19_outer_pair2_o101_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true false true false false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true false true false false
    scan19_outer_pair2_o101_h0_q0_e0_cert_checked
    scan19_outer_pair2_o101_h0_q0_e1_cert_checked

theorem scan19_outer_pair2_o101_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true false true false true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true false true false true
    scan19_outer_pair2_o101_h0_q1_e0_cert_checked
    scan19_outer_pair2_o101_h0_q1_e1_cert_checked

theorem scan19_outer_pair2_o101_h0_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      true false true false = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    true false true false
    scan19_outer_pair2_o101_h0_q0_cert_checked
    scan19_outer_pair2_o101_h0_q1_cert_checked

theorem scan19_outer_pair2_o101_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true false true true false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true false true true false
    scan19_outer_pair2_o101_h1_q0_e0_cert_checked
    scan19_outer_pair2_o101_h1_q0_e1_cert_checked

theorem scan19_outer_pair2_o101_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true false true true true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true false true true true
    scan19_outer_pair2_o101_h1_q1_e0_cert_checked
    scan19_outer_pair2_o101_h1_q1_e1_cert_checked

theorem scan19_outer_pair2_o101_h1_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      true false true true = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    true false true true
    scan19_outer_pair2_o101_h1_q0_cert_checked
    scan19_outer_pair2_o101_h1_q1_cert_checked

theorem scan19_outer_pair2_o101_cert_checked :
    pairCertScanOctantB 19 (u 0) (outerPair2 19)
      true false true = true :=
  pairCertScanOctantB_of_halves 19 (u 0) (outerPair2 19)
    true false true
    scan19_outer_pair2_o101_h0_cert_checked
    scan19_outer_pair2_o101_h1_cert_checked

theorem scan19_outer_pair2_o110_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true true false false false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true true false false false
    scan19_outer_pair2_o110_h0_q0_e0_cert_checked
    scan19_outer_pair2_o110_h0_q0_e1_cert_checked

theorem scan19_outer_pair2_o110_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true true false false true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true true false false true
    scan19_outer_pair2_o110_h0_q1_e0_cert_checked
    scan19_outer_pair2_o110_h0_q1_e1_cert_checked

theorem scan19_outer_pair2_o110_h0_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      true true false false = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    true true false false
    scan19_outer_pair2_o110_h0_q0_cert_checked
    scan19_outer_pair2_o110_h0_q1_cert_checked

theorem scan19_outer_pair2_o110_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true true false true false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true true false true false
    scan19_outer_pair2_o110_h1_q0_e0_cert_checked
    scan19_outer_pair2_o110_h1_q0_e1_cert_checked

theorem scan19_outer_pair2_o110_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true true false true true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true true false true true
    scan19_outer_pair2_o110_h1_q1_e0_cert_checked
    scan19_outer_pair2_o110_h1_q1_e1_cert_checked

theorem scan19_outer_pair2_o110_h1_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      true true false true = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    true true false true
    scan19_outer_pair2_o110_h1_q0_cert_checked
    scan19_outer_pair2_o110_h1_q1_cert_checked

theorem scan19_outer_pair2_o110_cert_checked :
    pairCertScanOctantB 19 (u 0) (outerPair2 19)
      true true false = true :=
  pairCertScanOctantB_of_halves 19 (u 0) (outerPair2 19)
    true true false
    scan19_outer_pair2_o110_h0_cert_checked
    scan19_outer_pair2_o110_h1_cert_checked

theorem scan19_outer_pair2_o111_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true true true false false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true true true false false
    scan19_outer_pair2_o111_h0_q0_e0_cert_checked
    scan19_outer_pair2_o111_h0_q0_e1_cert_checked

theorem scan19_outer_pair2_o111_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true true true false true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true true true false true
    scan19_outer_pair2_o111_h0_q1_e0_cert_checked
    scan19_outer_pair2_o111_h0_q1_e1_cert_checked

theorem scan19_outer_pair2_o111_h0_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      true true true false = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    true true true false
    scan19_outer_pair2_o111_h0_q0_cert_checked
    scan19_outer_pair2_o111_h0_q1_cert_checked

theorem scan19_outer_pair2_o111_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true true true true false = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true true true true false
    scan19_outer_pair2_o111_h1_q0_e0_cert_checked
    scan19_outer_pair2_o111_h1_q0_e1_cert_checked

theorem scan19_outer_pair2_o111_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 19 (u 0) (outerPair2 19)
      true true true true true = true :=
  pairCertScanOctantQuarterB_of_eighths 19 (u 0) (outerPair2 19)
    true true true true true
    scan19_outer_pair2_o111_h1_q1_e0_cert_checked
    scan19_outer_pair2_o111_h1_q1_e1_cert_checked

theorem scan19_outer_pair2_o111_h1_cert_checked :
    pairCertScanOctantHalfB 19 (u 0) (outerPair2 19)
      true true true true = true :=
  pairCertScanOctantHalfB_of_quarters 19 (u 0) (outerPair2 19)
    true true true true
    scan19_outer_pair2_o111_h1_q0_cert_checked
    scan19_outer_pair2_o111_h1_q1_cert_checked

theorem scan19_outer_pair2_o111_cert_checked :
    pairCertScanOctantB 19 (u 0) (outerPair2 19)
      true true true = true :=
  pairCertScanOctantB_of_halves 19 (u 0) (outerPair2 19)
    true true true
    scan19_outer_pair2_o111_h0_cert_checked
    scan19_outer_pair2_o111_h1_cert_checked

theorem scan19_outer_pair2_cert_checked :
    pairCertScanB 19 (u 0) (outerPair2 19) = true :=
  pairCertScanB_of_octants 19 (u 0) (outerPair2 19)
    scan19_outer_pair2_o000_cert_checked
    scan19_outer_pair2_o001_cert_checked
    scan19_outer_pair2_o010_cert_checked
    scan19_outer_pair2_o011_cert_checked
    scan19_outer_pair2_o100_cert_checked
    scan19_outer_pair2_o101_cert_checked
    scan19_outer_pair2_o110_cert_checked
    scan19_outer_pair2_o111_cert_checked

theorem scan19_outer_pair2_checked :
    pairScanB 19 (u 0) (outerPair2 19) = true :=
  pairScanB_of_certScan 19 (u 0) (outerPair2 19)
    scan19_outer_pair2_cert_checked

end FiniteScan
end PetersenZeroForcing
