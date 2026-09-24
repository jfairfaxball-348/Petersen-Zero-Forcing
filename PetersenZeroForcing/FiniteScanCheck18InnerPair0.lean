import PetersenZeroForcing.FiniteScanCheck18InnerPair0O000H0Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O000H0Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O000H0Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O000H0Q1E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O000H1Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O000H1Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O000H1Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O000H1Q1E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O001H0Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O001H0Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O001H0Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O001H0Q1E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O001H1Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O001H1Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O001H1Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O001H1Q1E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O010H0Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O010H0Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O010H0Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O010H0Q1E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O010H1Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O010H1Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O010H1Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O010H1Q1E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O011H0Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O011H0Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O011H0Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O011H0Q1E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O011H1Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O011H1Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O011H1Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O011H1Q1E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O100H0Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O100H0Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O100H0Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O100H0Q1E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O100H1Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O100H1Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O100H1Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O100H1Q1E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O101H0Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O101H0Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O101H0Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O101H0Q1E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O101H1Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O101H1Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O101H1Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O101H1Q1E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O110H0Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O110H0Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O110H0Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O110H0Q1E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O110H1Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O110H1Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O110H1Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O110H1Q1E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O111H0Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O111H0Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O111H0Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O111H0Q1E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O111H1Q0E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O111H1Q0E1
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O111H1Q1E0
import PetersenZeroForcing.FiniteScanCheck18InnerPair0O111H1Q1E1

namespace PetersenZeroForcing
namespace FiniteScan

theorem scan18_inner_pair0_o000_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false false false false false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false false false false false
    scan18_inner_pair0_o000_h0_q0_e0_cert_checked
    scan18_inner_pair0_o000_h0_q0_e1_cert_checked

theorem scan18_inner_pair0_o000_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false false false false true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false false false false true
    scan18_inner_pair0_o000_h0_q1_e0_cert_checked
    scan18_inner_pair0_o000_h0_q1_e1_cert_checked

theorem scan18_inner_pair0_o000_h0_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      false false false false = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    false false false false
    scan18_inner_pair0_o000_h0_q0_cert_checked
    scan18_inner_pair0_o000_h0_q1_cert_checked

theorem scan18_inner_pair0_o000_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false false false true false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false false false true false
    scan18_inner_pair0_o000_h1_q0_e0_cert_checked
    scan18_inner_pair0_o000_h1_q0_e1_cert_checked

theorem scan18_inner_pair0_o000_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false false false true true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false false false true true
    scan18_inner_pair0_o000_h1_q1_e0_cert_checked
    scan18_inner_pair0_o000_h1_q1_e1_cert_checked

theorem scan18_inner_pair0_o000_h1_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      false false false true = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    false false false true
    scan18_inner_pair0_o000_h1_q0_cert_checked
    scan18_inner_pair0_o000_h1_q1_cert_checked

theorem scan18_inner_pair0_o000_cert_checked :
    pairCertScanOctantB 18 (v 0) (innerPair0 18)
      false false false = true :=
  pairCertScanOctantB_of_halves 18 (v 0) (innerPair0 18)
    false false false
    scan18_inner_pair0_o000_h0_cert_checked
    scan18_inner_pair0_o000_h1_cert_checked

theorem scan18_inner_pair0_o001_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false false true false false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false false true false false
    scan18_inner_pair0_o001_h0_q0_e0_cert_checked
    scan18_inner_pair0_o001_h0_q0_e1_cert_checked

theorem scan18_inner_pair0_o001_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false false true false true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false false true false true
    scan18_inner_pair0_o001_h0_q1_e0_cert_checked
    scan18_inner_pair0_o001_h0_q1_e1_cert_checked

theorem scan18_inner_pair0_o001_h0_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      false false true false = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    false false true false
    scan18_inner_pair0_o001_h0_q0_cert_checked
    scan18_inner_pair0_o001_h0_q1_cert_checked

theorem scan18_inner_pair0_o001_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false false true true false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false false true true false
    scan18_inner_pair0_o001_h1_q0_e0_cert_checked
    scan18_inner_pair0_o001_h1_q0_e1_cert_checked

theorem scan18_inner_pair0_o001_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false false true true true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false false true true true
    scan18_inner_pair0_o001_h1_q1_e0_cert_checked
    scan18_inner_pair0_o001_h1_q1_e1_cert_checked

theorem scan18_inner_pair0_o001_h1_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      false false true true = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    false false true true
    scan18_inner_pair0_o001_h1_q0_cert_checked
    scan18_inner_pair0_o001_h1_q1_cert_checked

theorem scan18_inner_pair0_o001_cert_checked :
    pairCertScanOctantB 18 (v 0) (innerPair0 18)
      false false true = true :=
  pairCertScanOctantB_of_halves 18 (v 0) (innerPair0 18)
    false false true
    scan18_inner_pair0_o001_h0_cert_checked
    scan18_inner_pair0_o001_h1_cert_checked

theorem scan18_inner_pair0_o010_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false true false false false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false true false false false
    scan18_inner_pair0_o010_h0_q0_e0_cert_checked
    scan18_inner_pair0_o010_h0_q0_e1_cert_checked

theorem scan18_inner_pair0_o010_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false true false false true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false true false false true
    scan18_inner_pair0_o010_h0_q1_e0_cert_checked
    scan18_inner_pair0_o010_h0_q1_e1_cert_checked

theorem scan18_inner_pair0_o010_h0_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      false true false false = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    false true false false
    scan18_inner_pair0_o010_h0_q0_cert_checked
    scan18_inner_pair0_o010_h0_q1_cert_checked

theorem scan18_inner_pair0_o010_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false true false true false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false true false true false
    scan18_inner_pair0_o010_h1_q0_e0_cert_checked
    scan18_inner_pair0_o010_h1_q0_e1_cert_checked

theorem scan18_inner_pair0_o010_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false true false true true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false true false true true
    scan18_inner_pair0_o010_h1_q1_e0_cert_checked
    scan18_inner_pair0_o010_h1_q1_e1_cert_checked

theorem scan18_inner_pair0_o010_h1_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      false true false true = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    false true false true
    scan18_inner_pair0_o010_h1_q0_cert_checked
    scan18_inner_pair0_o010_h1_q1_cert_checked

theorem scan18_inner_pair0_o010_cert_checked :
    pairCertScanOctantB 18 (v 0) (innerPair0 18)
      false true false = true :=
  pairCertScanOctantB_of_halves 18 (v 0) (innerPair0 18)
    false true false
    scan18_inner_pair0_o010_h0_cert_checked
    scan18_inner_pair0_o010_h1_cert_checked

theorem scan18_inner_pair0_o011_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false true true false false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false true true false false
    scan18_inner_pair0_o011_h0_q0_e0_cert_checked
    scan18_inner_pair0_o011_h0_q0_e1_cert_checked

theorem scan18_inner_pair0_o011_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false true true false true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false true true false true
    scan18_inner_pair0_o011_h0_q1_e0_cert_checked
    scan18_inner_pair0_o011_h0_q1_e1_cert_checked

theorem scan18_inner_pair0_o011_h0_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      false true true false = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    false true true false
    scan18_inner_pair0_o011_h0_q0_cert_checked
    scan18_inner_pair0_o011_h0_q1_cert_checked

theorem scan18_inner_pair0_o011_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false true true true false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false true true true false
    scan18_inner_pair0_o011_h1_q0_e0_cert_checked
    scan18_inner_pair0_o011_h1_q0_e1_cert_checked

theorem scan18_inner_pair0_o011_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      false true true true true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    false true true true true
    scan18_inner_pair0_o011_h1_q1_e0_cert_checked
    scan18_inner_pair0_o011_h1_q1_e1_cert_checked

theorem scan18_inner_pair0_o011_h1_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      false true true true = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    false true true true
    scan18_inner_pair0_o011_h1_q0_cert_checked
    scan18_inner_pair0_o011_h1_q1_cert_checked

theorem scan18_inner_pair0_o011_cert_checked :
    pairCertScanOctantB 18 (v 0) (innerPair0 18)
      false true true = true :=
  pairCertScanOctantB_of_halves 18 (v 0) (innerPair0 18)
    false true true
    scan18_inner_pair0_o011_h0_cert_checked
    scan18_inner_pair0_o011_h1_cert_checked

theorem scan18_inner_pair0_o100_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true false false false false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true false false false false
    scan18_inner_pair0_o100_h0_q0_e0_cert_checked
    scan18_inner_pair0_o100_h0_q0_e1_cert_checked

theorem scan18_inner_pair0_o100_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true false false false true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true false false false true
    scan18_inner_pair0_o100_h0_q1_e0_cert_checked
    scan18_inner_pair0_o100_h0_q1_e1_cert_checked

theorem scan18_inner_pair0_o100_h0_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      true false false false = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    true false false false
    scan18_inner_pair0_o100_h0_q0_cert_checked
    scan18_inner_pair0_o100_h0_q1_cert_checked

theorem scan18_inner_pair0_o100_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true false false true false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true false false true false
    scan18_inner_pair0_o100_h1_q0_e0_cert_checked
    scan18_inner_pair0_o100_h1_q0_e1_cert_checked

theorem scan18_inner_pair0_o100_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true false false true true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true false false true true
    scan18_inner_pair0_o100_h1_q1_e0_cert_checked
    scan18_inner_pair0_o100_h1_q1_e1_cert_checked

theorem scan18_inner_pair0_o100_h1_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      true false false true = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    true false false true
    scan18_inner_pair0_o100_h1_q0_cert_checked
    scan18_inner_pair0_o100_h1_q1_cert_checked

theorem scan18_inner_pair0_o100_cert_checked :
    pairCertScanOctantB 18 (v 0) (innerPair0 18)
      true false false = true :=
  pairCertScanOctantB_of_halves 18 (v 0) (innerPair0 18)
    true false false
    scan18_inner_pair0_o100_h0_cert_checked
    scan18_inner_pair0_o100_h1_cert_checked

theorem scan18_inner_pair0_o101_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true false true false false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true false true false false
    scan18_inner_pair0_o101_h0_q0_e0_cert_checked
    scan18_inner_pair0_o101_h0_q0_e1_cert_checked

theorem scan18_inner_pair0_o101_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true false true false true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true false true false true
    scan18_inner_pair0_o101_h0_q1_e0_cert_checked
    scan18_inner_pair0_o101_h0_q1_e1_cert_checked

theorem scan18_inner_pair0_o101_h0_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      true false true false = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    true false true false
    scan18_inner_pair0_o101_h0_q0_cert_checked
    scan18_inner_pair0_o101_h0_q1_cert_checked

theorem scan18_inner_pair0_o101_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true false true true false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true false true true false
    scan18_inner_pair0_o101_h1_q0_e0_cert_checked
    scan18_inner_pair0_o101_h1_q0_e1_cert_checked

theorem scan18_inner_pair0_o101_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true false true true true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true false true true true
    scan18_inner_pair0_o101_h1_q1_e0_cert_checked
    scan18_inner_pair0_o101_h1_q1_e1_cert_checked

theorem scan18_inner_pair0_o101_h1_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      true false true true = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    true false true true
    scan18_inner_pair0_o101_h1_q0_cert_checked
    scan18_inner_pair0_o101_h1_q1_cert_checked

theorem scan18_inner_pair0_o101_cert_checked :
    pairCertScanOctantB 18 (v 0) (innerPair0 18)
      true false true = true :=
  pairCertScanOctantB_of_halves 18 (v 0) (innerPair0 18)
    true false true
    scan18_inner_pair0_o101_h0_cert_checked
    scan18_inner_pair0_o101_h1_cert_checked

theorem scan18_inner_pair0_o110_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true true false false false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true true false false false
    scan18_inner_pair0_o110_h0_q0_e0_cert_checked
    scan18_inner_pair0_o110_h0_q0_e1_cert_checked

theorem scan18_inner_pair0_o110_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true true false false true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true true false false true
    scan18_inner_pair0_o110_h0_q1_e0_cert_checked
    scan18_inner_pair0_o110_h0_q1_e1_cert_checked

theorem scan18_inner_pair0_o110_h0_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      true true false false = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    true true false false
    scan18_inner_pair0_o110_h0_q0_cert_checked
    scan18_inner_pair0_o110_h0_q1_cert_checked

theorem scan18_inner_pair0_o110_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true true false true false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true true false true false
    scan18_inner_pair0_o110_h1_q0_e0_cert_checked
    scan18_inner_pair0_o110_h1_q0_e1_cert_checked

theorem scan18_inner_pair0_o110_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true true false true true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true true false true true
    scan18_inner_pair0_o110_h1_q1_e0_cert_checked
    scan18_inner_pair0_o110_h1_q1_e1_cert_checked

theorem scan18_inner_pair0_o110_h1_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      true true false true = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    true true false true
    scan18_inner_pair0_o110_h1_q0_cert_checked
    scan18_inner_pair0_o110_h1_q1_cert_checked

theorem scan18_inner_pair0_o110_cert_checked :
    pairCertScanOctantB 18 (v 0) (innerPair0 18)
      true true false = true :=
  pairCertScanOctantB_of_halves 18 (v 0) (innerPair0 18)
    true true false
    scan18_inner_pair0_o110_h0_cert_checked
    scan18_inner_pair0_o110_h1_cert_checked

theorem scan18_inner_pair0_o111_h0_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true true true false false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true true true false false
    scan18_inner_pair0_o111_h0_q0_e0_cert_checked
    scan18_inner_pair0_o111_h0_q0_e1_cert_checked

theorem scan18_inner_pair0_o111_h0_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true true true false true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true true true false true
    scan18_inner_pair0_o111_h0_q1_e0_cert_checked
    scan18_inner_pair0_o111_h0_q1_e1_cert_checked

theorem scan18_inner_pair0_o111_h0_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      true true true false = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    true true true false
    scan18_inner_pair0_o111_h0_q0_cert_checked
    scan18_inner_pair0_o111_h0_q1_cert_checked

theorem scan18_inner_pair0_o111_h1_q0_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true true true true false = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true true true true false
    scan18_inner_pair0_o111_h1_q0_e0_cert_checked
    scan18_inner_pair0_o111_h1_q0_e1_cert_checked

theorem scan18_inner_pair0_o111_h1_q1_cert_checked :
    pairCertScanOctantQuarterB 18 (v 0) (innerPair0 18)
      true true true true true = true :=
  pairCertScanOctantQuarterB_of_eighths 18 (v 0) (innerPair0 18)
    true true true true true
    scan18_inner_pair0_o111_h1_q1_e0_cert_checked
    scan18_inner_pair0_o111_h1_q1_e1_cert_checked

theorem scan18_inner_pair0_o111_h1_cert_checked :
    pairCertScanOctantHalfB 18 (v 0) (innerPair0 18)
      true true true true = true :=
  pairCertScanOctantHalfB_of_quarters 18 (v 0) (innerPair0 18)
    true true true true
    scan18_inner_pair0_o111_h1_q0_cert_checked
    scan18_inner_pair0_o111_h1_q1_cert_checked

theorem scan18_inner_pair0_o111_cert_checked :
    pairCertScanOctantB 18 (v 0) (innerPair0 18)
      true true true = true :=
  pairCertScanOctantB_of_halves 18 (v 0) (innerPair0 18)
    true true true
    scan18_inner_pair0_o111_h0_cert_checked
    scan18_inner_pair0_o111_h1_cert_checked

theorem scan18_inner_pair0_cert_checked :
    pairCertScanB 18 (v 0) (innerPair0 18) = true :=
  pairCertScanB_of_octants 18 (v 0) (innerPair0 18)
    scan18_inner_pair0_o000_cert_checked
    scan18_inner_pair0_o001_cert_checked
    scan18_inner_pair0_o010_cert_checked
    scan18_inner_pair0_o011_cert_checked
    scan18_inner_pair0_o100_cert_checked
    scan18_inner_pair0_o101_cert_checked
    scan18_inner_pair0_o110_cert_checked
    scan18_inner_pair0_o111_cert_checked

theorem scan18_inner_pair0_checked :
    pairScanB 18 (v 0) (innerPair0 18) = true :=
  pairScanB_of_certScan 18 (v 0) (innerPair0 18)
    scan18_inner_pair0_cert_checked

end FiniteScan
end PetersenZeroForcing
