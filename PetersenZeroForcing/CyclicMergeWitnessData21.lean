import PetersenZeroForcing.CyclicCertificateData21

namespace PetersenZeroForcing

/-- Transparent witness constructor.  The generating search is not trusted:
`checkedWithWitnessB` re-checks every supplied witness in the original
`rotateSet` and containment semantics. -/
def cyclicMergeWitness21OfNat (c q : Nat) :
    CyclicCertificate.MergeWitness 21 cyclicCertificate21 where
  target := ⟨c % 38, by
    change c % 38 < 38
    exact Nat.mod_lt c (by decide)⟩
  shift := (q : ZMod 21)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
def cyclicMergeWitness21
    (a b : Fin cyclicCertificate21.shapeCount) (t : ZMod 21) :
    CyclicCertificate.MergeWitness 21 cyclicCertificate21 :=
  match a.val with
  | 0 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 0 0
          | 1 => cyclicMergeWitness21OfNat 3 0
          | 20 => cyclicMergeWitness21OfNat 3 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 2 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 2 0
          | 1 => cyclicMergeWitness21OfNat 5 0
          | 20 => cyclicMergeWitness21OfNat 5 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 3 0
          | 1 => cyclicMergeWitness21OfNat 5 0
          | 19 => cyclicMergeWitness21OfNat 5 19
          | 20 => cyclicMergeWitness21OfNat 3 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 6 18
          | 18 => cyclicMergeWitness21OfNat 6 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 5 0
          | 1 => cyclicMergeWitness21OfNat 7 0
          | 18 => cyclicMergeWitness21OfNat 7 18
          | 19 => cyclicMergeWitness21OfNat 5 19
          | 20 => cyclicMergeWitness21OfNat 5 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 9 18
          | 15 => cyclicMergeWitness21OfNat 9 15
          | 17 => cyclicMergeWitness21OfNat 8 17
          | 18 => cyclicMergeWitness21OfNat 6 18
          | 19 => cyclicMergeWitness21OfNat 8 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 7 0
          | 1 => cyclicMergeWitness21OfNat 10 0
          | 17 => cyclicMergeWitness21OfNat 10 17
          | 18 => cyclicMergeWitness21OfNat 7 18
          | 19 => cyclicMergeWitness21OfNat 7 19
          | 20 => cyclicMergeWitness21OfNat 7 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 14 18
          | 15 => cyclicMergeWitness21OfNat 13 15
          | 16 => cyclicMergeWitness21OfNat 12 16
          | 17 => cyclicMergeWitness21OfNat 8 17
          | 18 => cyclicMergeWitness21OfNat 8 18
          | 19 => cyclicMergeWitness21OfNat 8 19
          | 20 => cyclicMergeWitness21OfNat 11 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 15 18
          | 12 => cyclicMergeWitness21OfNat 15 12
          | 14 => cyclicMergeWitness21OfNat 14 14
          | 15 => cyclicMergeWitness21OfNat 9 15
          | 16 => cyclicMergeWitness21OfNat 14 16
          | 17 => cyclicMergeWitness21OfNat 13 17
          | 18 => cyclicMergeWitness21OfNat 9 18
          | 19 => cyclicMergeWitness21OfNat 13 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 10 0
          | 1 => cyclicMergeWitness21OfNat 19 19
          | 16 => cyclicMergeWitness21OfNat 19 14
          | 17 => cyclicMergeWitness21OfNat 10 17
          | 18 => cyclicMergeWitness21OfNat 10 18
          | 19 => cyclicMergeWitness21OfNat 10 19
          | 20 => cyclicMergeWitness21OfNat 10 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 15 => cyclicMergeWitness21OfNat 17 15
          | 16 => cyclicMergeWitness21OfNat 16 16
          | 17 => cyclicMergeWitness21OfNat 11 17
          | 18 => cyclicMergeWitness21OfNat 11 18
          | 19 => cyclicMergeWitness21OfNat 11 19
          | 20 => cyclicMergeWitness21OfNat 11 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 21 18
          | 15 => cyclicMergeWitness21OfNat 19 15
          | 16 => cyclicMergeWitness21OfNat 12 16
          | 17 => cyclicMergeWitness21OfNat 12 17
          | 18 => cyclicMergeWitness21OfNat 12 18
          | 19 => cyclicMergeWitness21OfNat 12 19
          | 20 => cyclicMergeWitness21OfNat 16 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 22 18
          | 12 => cyclicMergeWitness21OfNat 20 12
          | 14 => cyclicMergeWitness21OfNat 19 14
          | 15 => cyclicMergeWitness21OfNat 13 15
          | 16 => cyclicMergeWitness21OfNat 19 16
          | 17 => cyclicMergeWitness21OfNat 13 17
          | 18 => cyclicMergeWitness21OfNat 13 18
          | 19 => cyclicMergeWitness21OfNat 13 19
          | 20 => cyclicMergeWitness21OfNat 17 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 23 18
          | 12 => cyclicMergeWitness21OfNat 22 12
          | 13 => cyclicMergeWitness21OfNat 21 13
          | 14 => cyclicMergeWitness21OfNat 14 14
          | 15 => cyclicMergeWitness21OfNat 14 15
          | 16 => cyclicMergeWitness21OfNat 14 16
          | 17 => cyclicMergeWitness21OfNat 19 17
          | 18 => cyclicMergeWitness21OfNat 14 18
          | 19 => cyclicMergeWitness21OfNat 19 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 24 18
          | 9 => cyclicMergeWitness21OfNat 24 9
          | 11 => cyclicMergeWitness21OfNat 23 11
          | 12 => cyclicMergeWitness21OfNat 15 12
          | 13 => cyclicMergeWitness21OfNat 23 13
          | 14 => cyclicMergeWitness21OfNat 22 14
          | 15 => cyclicMergeWitness21OfNat 15 15
          | 16 => cyclicMergeWitness21OfNat 22 16
          | 17 => cyclicMergeWitness21OfNat 20 17
          | 18 => cyclicMergeWitness21OfNat 15 18
          | 19 => cyclicMergeWitness21OfNat 20 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 16 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 26 18
          | 15 => cyclicMergeWitness21OfNat 26 14
          | 16 => cyclicMergeWitness21OfNat 16 16
          | 17 => cyclicMergeWitness21OfNat 16 17
          | 18 => cyclicMergeWitness21OfNat 16 18
          | 19 => cyclicMergeWitness21OfNat 16 19
          | 20 => cyclicMergeWitness21OfNat 16 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 17 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 28 18
          | 12 => cyclicMergeWitness21OfNat 25 12
          | 14 => cyclicMergeWitness21OfNat 26 13
          | 15 => cyclicMergeWitness21OfNat 17 15
          | 16 => cyclicMergeWitness21OfNat 26 15
          | 17 => cyclicMergeWitness21OfNat 17 17
          | 18 => cyclicMergeWitness21OfNat 17 18
          | 19 => cyclicMergeWitness21OfNat 17 19
          | 20 => cyclicMergeWitness21OfNat 17 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 18 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 26 18
          | 14 => cyclicMergeWitness21OfNat 26 14
          | 15 => cyclicMergeWitness21OfNat 26 15
          | 16 => cyclicMergeWitness21OfNat 18 16
          | 17 => cyclicMergeWitness21OfNat 18 17
          | 18 => cyclicMergeWitness21OfNat 18 18
          | 19 => cyclicMergeWitness21OfNat 18 19
          | 20 => cyclicMergeWitness21OfNat 26 17
          | _ => cyclicMergeWitness21OfNat 0 0
      | 19 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 32 18
          | 12 => cyclicMergeWitness21OfNat 28 12
          | 13 => cyclicMergeWitness21OfNat 26 13
          | 14 => cyclicMergeWitness21OfNat 19 14
          | 15 => cyclicMergeWitness21OfNat 19 15
          | 16 => cyclicMergeWitness21OfNat 19 16
          | 17 => cyclicMergeWitness21OfNat 19 17
          | 18 => cyclicMergeWitness21OfNat 19 18
          | 19 => cyclicMergeWitness21OfNat 19 19
          | 20 => cyclicMergeWitness21OfNat 26 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 20 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 33 18
          | 9 => cyclicMergeWitness21OfNat 30 9
          | 11 => cyclicMergeWitness21OfNat 29 11
          | 12 => cyclicMergeWitness21OfNat 20 12
          | 13 => cyclicMergeWitness21OfNat 29 13
          | 14 => cyclicMergeWitness21OfNat 28 14
          | 15 => cyclicMergeWitness21OfNat 20 15
          | 16 => cyclicMergeWitness21OfNat 28 16
          | 17 => cyclicMergeWitness21OfNat 20 17
          | 18 => cyclicMergeWitness21OfNat 20 18
          | 19 => cyclicMergeWitness21OfNat 20 19
          | 20 => cyclicMergeWitness21OfNat 25 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 21 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 34 18
          | 12 => cyclicMergeWitness21OfNat 32 12
          | 13 => cyclicMergeWitness21OfNat 21 13
          | 14 => cyclicMergeWitness21OfNat 21 14
          | 15 => cyclicMergeWitness21OfNat 21 15
          | 16 => cyclicMergeWitness21OfNat 21 16
          | 17 => cyclicMergeWitness21OfNat 26 17
          | 18 => cyclicMergeWitness21OfNat 21 18
          | 19 => cyclicMergeWitness21OfNat 26 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 22 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 35 18
          | 9 => cyclicMergeWitness21OfNat 33 9
          | 11 => cyclicMergeWitness21OfNat 32 11
          | 12 => cyclicMergeWitness21OfNat 22 12
          | 13 => cyclicMergeWitness21OfNat 32 13
          | 14 => cyclicMergeWitness21OfNat 22 14
          | 15 => cyclicMergeWitness21OfNat 22 15
          | 16 => cyclicMergeWitness21OfNat 22 16
          | 17 => cyclicMergeWitness21OfNat 28 17
          | 18 => cyclicMergeWitness21OfNat 22 18
          | 19 => cyclicMergeWitness21OfNat 28 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 23 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 36 18
          | 9 => cyclicMergeWitness21OfNat 35 9
          | 10 => cyclicMergeWitness21OfNat 34 10
          | 11 => cyclicMergeWitness21OfNat 23 11
          | 12 => cyclicMergeWitness21OfNat 23 12
          | 13 => cyclicMergeWitness21OfNat 23 13
          | 14 => cyclicMergeWitness21OfNat 32 14
          | 15 => cyclicMergeWitness21OfNat 23 15
          | 16 => cyclicMergeWitness21OfNat 32 16
          | 17 => cyclicMergeWitness21OfNat 29 17
          | 18 => cyclicMergeWitness21OfNat 23 18
          | 19 => cyclicMergeWitness21OfNat 29 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 24 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 37 0
          | 6 => cyclicMergeWitness21OfNat 37 0
          | 8 => cyclicMergeWitness21OfNat 36 8
          | 9 => cyclicMergeWitness21OfNat 24 9
          | 10 => cyclicMergeWitness21OfNat 36 10
          | 11 => cyclicMergeWitness21OfNat 35 11
          | 12 => cyclicMergeWitness21OfNat 24 12
          | 13 => cyclicMergeWitness21OfNat 35 13
          | 14 => cyclicMergeWitness21OfNat 33 14
          | 15 => cyclicMergeWitness21OfNat 24 15
          | 16 => cyclicMergeWitness21OfNat 33 16
          | 17 => cyclicMergeWitness21OfNat 30 17
          | 18 => cyclicMergeWitness21OfNat 24 18
          | 19 => cyclicMergeWitness21OfNat 30 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 1 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 2 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 1 0
          | 3 => cyclicMergeWitness21OfNat 4 0
          | 18 => cyclicMergeWitness21OfNat 4 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 2 0
          | 3 => cyclicMergeWitness21OfNat 6 0
          | 18 => cyclicMergeWitness21OfNat 6 15
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 5 20
          | 20 => cyclicMergeWitness21OfNat 5 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 4 0
          | 3 => cyclicMergeWitness21OfNat 6 0
          | 15 => cyclicMergeWitness21OfNat 6 15
          | 18 => cyclicMergeWitness21OfNat 4 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 7 20
          | 2 => cyclicMergeWitness21OfNat 8 0
          | 17 => cyclicMergeWitness21OfNat 8 15
          | 19 => cyclicMergeWitness21OfNat 7 19
          | 20 => cyclicMergeWitness21OfNat 5 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 6 0
          | 3 => cyclicMergeWitness21OfNat 9 0
          | 12 => cyclicMergeWitness21OfNat 9 12
          | 15 => cyclicMergeWitness21OfNat 6 15
          | 18 => cyclicMergeWitness21OfNat 6 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 10 20
          | 1 => cyclicMergeWitness21OfNat 11 0
          | 2 => cyclicMergeWitness21OfNat 12 0
          | 16 => cyclicMergeWitness21OfNat 11 15
          | 17 => cyclicMergeWitness21OfNat 12 15
          | 18 => cyclicMergeWitness21OfNat 10 18
          | 19 => cyclicMergeWitness21OfNat 7 19
          | 20 => cyclicMergeWitness21OfNat 7 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 8 0
          | 3 => cyclicMergeWitness21OfNat 14 0
          | 12 => cyclicMergeWitness21OfNat 13 12
          | 15 => cyclicMergeWitness21OfNat 8 15
          | 17 => cyclicMergeWitness21OfNat 12 17
          | 18 => cyclicMergeWitness21OfNat 8 18
          | 19 => cyclicMergeWitness21OfNat 11 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 9 0
          | 3 => cyclicMergeWitness21OfNat 15 0
          | 9 => cyclicMergeWitness21OfNat 15 9
          | 12 => cyclicMergeWitness21OfNat 9 12
          | 15 => cyclicMergeWitness21OfNat 9 15
          | 18 => cyclicMergeWitness21OfNat 9 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 16 0
          | 2 => cyclicMergeWitness21OfNat 19 0
          | 15 => cyclicMergeWitness21OfNat 19 12
          | 16 => cyclicMergeWitness21OfNat 16 15
          | 17 => cyclicMergeWitness21OfNat 19 15
          | 18 => cyclicMergeWitness21OfNat 10 18
          | 19 => cyclicMergeWitness21OfNat 10 19
          | 20 => cyclicMergeWitness21OfNat 10 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 11 0
          | 1 => cyclicMergeWitness21OfNat 18 0
          | 3 => cyclicMergeWitness21OfNat 19 0
          | 12 => cyclicMergeWitness21OfNat 17 12
          | 15 => cyclicMergeWitness21OfNat 11 15
          | 16 => cyclicMergeWitness21OfNat 18 15
          | 17 => cyclicMergeWitness21OfNat 16 17
          | 18 => cyclicMergeWitness21OfNat 11 18
          | 19 => cyclicMergeWitness21OfNat 11 19
          | 20 => cyclicMergeWitness21OfNat 19 17
          | _ => cyclicMergeWitness21OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 12 0
          | 3 => cyclicMergeWitness21OfNat 21 0
          | 12 => cyclicMergeWitness21OfNat 19 12
          | 14 => cyclicMergeWitness21OfNat 18 14
          | 15 => cyclicMergeWitness21OfNat 12 15
          | 16 => cyclicMergeWitness21OfNat 19 16
          | 17 => cyclicMergeWitness21OfNat 12 17
          | 18 => cyclicMergeWitness21OfNat 12 18
          | 19 => cyclicMergeWitness21OfNat 16 19
          | 20 => cyclicMergeWitness21OfNat 18 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 13 0
          | 3 => cyclicMergeWitness21OfNat 22 0
          | 9 => cyclicMergeWitness21OfNat 20 9
          | 12 => cyclicMergeWitness21OfNat 13 12
          | 15 => cyclicMergeWitness21OfNat 13 15
          | 17 => cyclicMergeWitness21OfNat 19 17
          | 18 => cyclicMergeWitness21OfNat 13 18
          | 19 => cyclicMergeWitness21OfNat 17 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 14 0
          | 3 => cyclicMergeWitness21OfNat 23 0
          | 9 => cyclicMergeWitness21OfNat 22 9
          | 12 => cyclicMergeWitness21OfNat 14 12
          | 14 => cyclicMergeWitness21OfNat 21 14
          | 15 => cyclicMergeWitness21OfNat 14 15
          | 16 => cyclicMergeWitness21OfNat 19 16
          | 18 => cyclicMergeWitness21OfNat 14 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 15 0
          | 3 => cyclicMergeWitness21OfNat 24 0
          | 6 => cyclicMergeWitness21OfNat 24 6
          | 9 => cyclicMergeWitness21OfNat 15 9
          | 12 => cyclicMergeWitness21OfNat 15 12
          | 15 => cyclicMergeWitness21OfNat 15 15
          | 18 => cyclicMergeWitness21OfNat 15 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 16 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 16 0
          | 1 => cyclicMergeWitness21OfNat 26 0
          | 3 => cyclicMergeWitness21OfNat 26 0
          | 12 => cyclicMergeWitness21OfNat 26 11
          | 14 => cyclicMergeWitness21OfNat 26 11
          | 15 => cyclicMergeWitness21OfNat 16 15
          | 16 => cyclicMergeWitness21OfNat 26 15
          | 17 => cyclicMergeWitness21OfNat 16 17
          | 18 => cyclicMergeWitness21OfNat 16 18
          | 19 => cyclicMergeWitness21OfNat 16 19
          | 20 => cyclicMergeWitness21OfNat 26 17
          | _ => cyclicMergeWitness21OfNat 0 0
      | 17 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 17 0
          | 1 => cyclicMergeWitness21OfNat 26 0
          | 3 => cyclicMergeWitness21OfNat 28 0
          | 9 => cyclicMergeWitness21OfNat 25 9
          | 12 => cyclicMergeWitness21OfNat 17 12
          | 15 => cyclicMergeWitness21OfNat 17 15
          | 16 => cyclicMergeWitness21OfNat 26 15
          | 17 => cyclicMergeWitness21OfNat 26 16
          | 18 => cyclicMergeWitness21OfNat 17 18
          | 19 => cyclicMergeWitness21OfNat 17 19
          | 20 => cyclicMergeWitness21OfNat 28 17
          | _ => cyclicMergeWitness21OfNat 0 0
      | 18 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 18 0
          | 2 => cyclicMergeWitness21OfNat 26 20
          | 3 => cyclicMergeWitness21OfNat 26 0
          | 11 => cyclicMergeWitness21OfNat 26 11
          | 12 => cyclicMergeWitness21OfNat 26 12
          | 14 => cyclicMergeWitness21OfNat 18 14
          | 15 => cyclicMergeWitness21OfNat 18 15
          | 16 => cyclicMergeWitness21OfNat 26 16
          | 17 => cyclicMergeWitness21OfNat 18 17
          | 18 => cyclicMergeWitness21OfNat 18 18
          | 19 => cyclicMergeWitness21OfNat 26 16
          | 20 => cyclicMergeWitness21OfNat 18 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 19 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 0
          | 3 => cyclicMergeWitness21OfNat 32 0
          | 9 => cyclicMergeWitness21OfNat 28 9
          | 12 => cyclicMergeWitness21OfNat 19 12
          | 13 => cyclicMergeWitness21OfNat 26 12
          | 14 => cyclicMergeWitness21OfNat 26 14
          | 15 => cyclicMergeWitness21OfNat 19 15
          | 16 => cyclicMergeWitness21OfNat 19 16
          | 17 => cyclicMergeWitness21OfNat 19 17
          | 18 => cyclicMergeWitness21OfNat 19 18
          | 19 => cyclicMergeWitness21OfNat 26 18
          | 20 => cyclicMergeWitness21OfNat 26 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 20 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 20 0
          | 3 => cyclicMergeWitness21OfNat 33 0
          | 6 => cyclicMergeWitness21OfNat 30 6
          | 9 => cyclicMergeWitness21OfNat 20 9
          | 12 => cyclicMergeWitness21OfNat 20 12
          | 15 => cyclicMergeWitness21OfNat 20 15
          | 17 => cyclicMergeWitness21OfNat 28 17
          | 18 => cyclicMergeWitness21OfNat 20 18
          | 19 => cyclicMergeWitness21OfNat 25 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 21 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 21 0
          | 3 => cyclicMergeWitness21OfNat 34 0
          | 9 => cyclicMergeWitness21OfNat 32 9
          | 11 => cyclicMergeWitness21OfNat 26 11
          | 12 => cyclicMergeWitness21OfNat 21 12
          | 13 => cyclicMergeWitness21OfNat 32 13
          | 14 => cyclicMergeWitness21OfNat 21 14
          | 15 => cyclicMergeWitness21OfNat 21 15
          | 16 => cyclicMergeWitness21OfNat 26 16
          | 17 => cyclicMergeWitness21OfNat 26 17
          | 18 => cyclicMergeWitness21OfNat 21 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 22 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 22 0
          | 3 => cyclicMergeWitness21OfNat 35 0
          | 6 => cyclicMergeWitness21OfNat 33 6
          | 9 => cyclicMergeWitness21OfNat 22 9
          | 12 => cyclicMergeWitness21OfNat 22 12
          | 14 => cyclicMergeWitness21OfNat 32 14
          | 15 => cyclicMergeWitness21OfNat 22 15
          | 16 => cyclicMergeWitness21OfNat 28 16
          | 18 => cyclicMergeWitness21OfNat 22 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 23 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 23 0
          | 3 => cyclicMergeWitness21OfNat 36 0
          | 6 => cyclicMergeWitness21OfNat 35 6
          | 9 => cyclicMergeWitness21OfNat 23 9
          | 11 => cyclicMergeWitness21OfNat 34 11
          | 12 => cyclicMergeWitness21OfNat 23 12
          | 13 => cyclicMergeWitness21OfNat 32 13
          | 15 => cyclicMergeWitness21OfNat 23 15
          | 18 => cyclicMergeWitness21OfNat 23 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 24 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 24 0
          | 3 => cyclicMergeWitness21OfNat 37 0
          | 6 => cyclicMergeWitness21OfNat 24 6
          | 9 => cyclicMergeWitness21OfNat 24 9
          | 12 => cyclicMergeWitness21OfNat 24 12
          | 15 => cyclicMergeWitness21OfNat 24 15
          | 18 => cyclicMergeWitness21OfNat 24 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 2 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 2 0
          | 1 => cyclicMergeWitness21OfNat 5 20
          | 20 => cyclicMergeWitness21OfNat 5 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 2 0
          | 3 => cyclicMergeWitness21OfNat 6 18
          | 18 => cyclicMergeWitness21OfNat 6 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 2 0
          | 1 => cyclicMergeWitness21OfNat 7 20
          | 3 => cyclicMergeWitness21OfNat 9 18
          | 18 => cyclicMergeWitness21OfNat 9 15
          | 20 => cyclicMergeWitness21OfNat 7 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 5 20
          | 1 => cyclicMergeWitness21OfNat 7 20
          | 19 => cyclicMergeWitness21OfNat 7 19
          | 20 => cyclicMergeWitness21OfNat 5 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 6 18
          | 3 => cyclicMergeWitness21OfNat 9 18
          | 15 => cyclicMergeWitness21OfNat 9 15
          | 18 => cyclicMergeWitness21OfNat 6 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 7 20
          | 1 => cyclicMergeWitness21OfNat 10 20
          | 2 => cyclicMergeWitness21OfNat 14 18
          | 17 => cyclicMergeWitness21OfNat 13 15
          | 18 => cyclicMergeWitness21OfNat 10 18
          | 19 => cyclicMergeWitness21OfNat 7 19
          | 20 => cyclicMergeWitness21OfNat 5 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 9 18
          | 3 => cyclicMergeWitness21OfNat 15 18
          | 12 => cyclicMergeWitness21OfNat 15 12
          | 15 => cyclicMergeWitness21OfNat 9 15
          | 17 => cyclicMergeWitness21OfNat 12 17
          | 18 => cyclicMergeWitness21OfNat 6 18
          | 19 => cyclicMergeWitness21OfNat 11 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 10 20
          | 1 => cyclicMergeWitness21OfNat 19 18
          | 2 => cyclicMergeWitness21OfNat 21 18
          | 16 => cyclicMergeWitness21OfNat 17 15
          | 17 => cyclicMergeWitness21OfNat 19 15
          | 18 => cyclicMergeWitness21OfNat 10 18
          | 19 => cyclicMergeWitness21OfNat 7 19
          | 20 => cyclicMergeWitness21OfNat 7 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 14 18
          | 3 => cyclicMergeWitness21OfNat 23 18
          | 12 => cyclicMergeWitness21OfNat 20 12
          | 15 => cyclicMergeWitness21OfNat 13 15
          | 16 => cyclicMergeWitness21OfNat 19 16
          | 17 => cyclicMergeWitness21OfNat 12 17
          | 18 => cyclicMergeWitness21OfNat 8 18
          | 19 => cyclicMergeWitness21OfNat 11 19
          | 20 => cyclicMergeWitness21OfNat 19 17
          | _ => cyclicMergeWitness21OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 15 18
          | 3 => cyclicMergeWitness21OfNat 24 18
          | 9 => cyclicMergeWitness21OfNat 24 9
          | 12 => cyclicMergeWitness21OfNat 15 12
          | 14 => cyclicMergeWitness21OfNat 21 14
          | 15 => cyclicMergeWitness21OfNat 9 15
          | 16 => cyclicMergeWitness21OfNat 19 16
          | 17 => cyclicMergeWitness21OfNat 19 17
          | 18 => cyclicMergeWitness21OfNat 9 18
          | 19 => cyclicMergeWitness21OfNat 17 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 26 18
          | 2 => cyclicMergeWitness21OfNat 32 18
          | 15 => cyclicMergeWitness21OfNat 28 12
          | 16 => cyclicMergeWitness21OfNat 26 14
          | 17 => cyclicMergeWitness21OfNat 19 15
          | 18 => cyclicMergeWitness21OfNat 10 18
          | 19 => cyclicMergeWitness21OfNat 10 19
          | 20 => cyclicMergeWitness21OfNat 10 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 26 18
          | 3 => cyclicMergeWitness21OfNat 32 18
          | 12 => cyclicMergeWitness21OfNat 25 12
          | 15 => cyclicMergeWitness21OfNat 17 15
          | 16 => cyclicMergeWitness21OfNat 26 15
          | 17 => cyclicMergeWitness21OfNat 16 17
          | 18 => cyclicMergeWitness21OfNat 11 18
          | 19 => cyclicMergeWitness21OfNat 11 19
          | 20 => cyclicMergeWitness21OfNat 19 17
          | _ => cyclicMergeWitness21OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 21 18
          | 3 => cyclicMergeWitness21OfNat 34 18
          | 12 => cyclicMergeWitness21OfNat 28 12
          | 14 => cyclicMergeWitness21OfNat 26 14
          | 15 => cyclicMergeWitness21OfNat 19 15
          | 16 => cyclicMergeWitness21OfNat 19 16
          | 17 => cyclicMergeWitness21OfNat 12 17
          | 18 => cyclicMergeWitness21OfNat 12 18
          | 19 => cyclicMergeWitness21OfNat 16 19
          | 20 => cyclicMergeWitness21OfNat 26 17
          | _ => cyclicMergeWitness21OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 22 18
          | 3 => cyclicMergeWitness21OfNat 35 18
          | 9 => cyclicMergeWitness21OfNat 30 9
          | 12 => cyclicMergeWitness21OfNat 20 12
          | 14 => cyclicMergeWitness21OfNat 26 14
          | 15 => cyclicMergeWitness21OfNat 13 15
          | 16 => cyclicMergeWitness21OfNat 19 16
          | 17 => cyclicMergeWitness21OfNat 19 17
          | 18 => cyclicMergeWitness21OfNat 13 18
          | 19 => cyclicMergeWitness21OfNat 17 19
          | 20 => cyclicMergeWitness21OfNat 28 17
          | _ => cyclicMergeWitness21OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 23 18
          | 3 => cyclicMergeWitness21OfNat 36 18
          | 9 => cyclicMergeWitness21OfNat 33 9
          | 12 => cyclicMergeWitness21OfNat 22 12
          | 13 => cyclicMergeWitness21OfNat 32 13
          | 14 => cyclicMergeWitness21OfNat 21 14
          | 15 => cyclicMergeWitness21OfNat 14 15
          | 16 => cyclicMergeWitness21OfNat 19 16
          | 17 => cyclicMergeWitness21OfNat 19 17
          | 18 => cyclicMergeWitness21OfNat 14 18
          | 19 => cyclicMergeWitness21OfNat 26 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 24 18
          | 3 => cyclicMergeWitness21OfNat 37 0
          | 6 => cyclicMergeWitness21OfNat 37 0
          | 9 => cyclicMergeWitness21OfNat 24 9
          | 11 => cyclicMergeWitness21OfNat 34 11
          | 12 => cyclicMergeWitness21OfNat 15 12
          | 13 => cyclicMergeWitness21OfNat 32 13
          | 14 => cyclicMergeWitness21OfNat 32 14
          | 15 => cyclicMergeWitness21OfNat 15 15
          | 16 => cyclicMergeWitness21OfNat 28 16
          | 17 => cyclicMergeWitness21OfNat 28 17
          | 18 => cyclicMergeWitness21OfNat 15 18
          | 19 => cyclicMergeWitness21OfNat 25 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 3 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 3 0
          | 1 => cyclicMergeWitness21OfNat 3 0
          | 2 => cyclicMergeWitness21OfNat 5 0
          | 20 => cyclicMergeWitness21OfNat 5 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 5 20
          | 1 => cyclicMergeWitness21OfNat 5 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 5 20
          | 1 => cyclicMergeWitness21OfNat 5 0
          | 2 => cyclicMergeWitness21OfNat 7 0
          | 20 => cyclicMergeWitness21OfNat 7 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 3 0
          | 1 => cyclicMergeWitness21OfNat 5 0
          | 2 => cyclicMergeWitness21OfNat 7 0
          | 19 => cyclicMergeWitness21OfNat 7 19
          | 20 => cyclicMergeWitness21OfNat 5 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 8 18
          | 1 => cyclicMergeWitness21OfNat 8 19
          | 18 => cyclicMergeWitness21OfNat 8 18
          | 19 => cyclicMergeWitness21OfNat 8 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 5 0
          | 1 => cyclicMergeWitness21OfNat 7 0
          | 2 => cyclicMergeWitness21OfNat 10 0
          | 18 => cyclicMergeWitness21OfNat 10 18
          | 19 => cyclicMergeWitness21OfNat 7 19
          | 20 => cyclicMergeWitness21OfNat 5 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 13 18
          | 1 => cyclicMergeWitness21OfNat 13 19
          | 15 => cyclicMergeWitness21OfNat 14 15
          | 16 => cyclicMergeWitness21OfNat 14 16
          | 17 => cyclicMergeWitness21OfNat 12 17
          | 18 => cyclicMergeWitness21OfNat 8 18
          | 19 => cyclicMergeWitness21OfNat 8 19
          | 20 => cyclicMergeWitness21OfNat 11 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 7 0
          | 1 => cyclicMergeWitness21OfNat 10 0
          | 2 => cyclicMergeWitness21OfNat 19 19
          | 17 => cyclicMergeWitness21OfNat 19 15
          | 18 => cyclicMergeWitness21OfNat 10 18
          | 19 => cyclicMergeWitness21OfNat 7 19
          | 20 => cyclicMergeWitness21OfNat 7 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 19 19
          | 15 => cyclicMergeWitness21OfNat 19 15
          | 16 => cyclicMergeWitness21OfNat 19 16
          | 17 => cyclicMergeWitness21OfNat 12 17
          | 18 => cyclicMergeWitness21OfNat 8 18
          | 19 => cyclicMergeWitness21OfNat 8 19
          | 20 => cyclicMergeWitness21OfNat 11 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 20 18
          | 1 => cyclicMergeWitness21OfNat 20 19
          | 12 => cyclicMergeWitness21OfNat 23 12
          | 13 => cyclicMergeWitness21OfNat 23 13
          | 14 => cyclicMergeWitness21OfNat 21 14
          | 15 => cyclicMergeWitness21OfNat 14 15
          | 16 => cyclicMergeWitness21OfNat 14 16
          | 17 => cyclicMergeWitness21OfNat 19 17
          | 18 => cyclicMergeWitness21OfNat 13 18
          | 19 => cyclicMergeWitness21OfNat 13 19
          | 20 => cyclicMergeWitness21OfNat 17 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 10 0
          | 1 => cyclicMergeWitness21OfNat 19 19
          | 2 => cyclicMergeWitness21OfNat 26 19
          | 16 => cyclicMergeWitness21OfNat 26 14
          | 17 => cyclicMergeWitness21OfNat 19 15
          | 18 => cyclicMergeWitness21OfNat 10 18
          | 19 => cyclicMergeWitness21OfNat 10 19
          | 20 => cyclicMergeWitness21OfNat 10 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 19 19
          | 15 => cyclicMergeWitness21OfNat 26 14
          | 16 => cyclicMergeWitness21OfNat 26 15
          | 17 => cyclicMergeWitness21OfNat 16 17
          | 18 => cyclicMergeWitness21OfNat 11 18
          | 19 => cyclicMergeWitness21OfNat 11 19
          | 20 => cyclicMergeWitness21OfNat 11 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 26 18
          | 1 => cyclicMergeWitness21OfNat 26 19
          | 15 => cyclicMergeWitness21OfNat 19 15
          | 16 => cyclicMergeWitness21OfNat 19 16
          | 17 => cyclicMergeWitness21OfNat 12 17
          | 18 => cyclicMergeWitness21OfNat 12 18
          | 19 => cyclicMergeWitness21OfNat 12 19
          | 20 => cyclicMergeWitness21OfNat 16 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 28 18
          | 1 => cyclicMergeWitness21OfNat 28 19
          | 12 => cyclicMergeWitness21OfNat 29 12
          | 13 => cyclicMergeWitness21OfNat 29 13
          | 14 => cyclicMergeWitness21OfNat 26 14
          | 15 => cyclicMergeWitness21OfNat 19 15
          | 16 => cyclicMergeWitness21OfNat 19 16
          | 17 => cyclicMergeWitness21OfNat 19 17
          | 18 => cyclicMergeWitness21OfNat 13 18
          | 19 => cyclicMergeWitness21OfNat 13 19
          | 20 => cyclicMergeWitness21OfNat 17 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 29 18
          | 1 => cyclicMergeWitness21OfNat 29 19
          | 12 => cyclicMergeWitness21OfNat 32 12
          | 13 => cyclicMergeWitness21OfNat 32 13
          | 14 => cyclicMergeWitness21OfNat 21 14
          | 15 => cyclicMergeWitness21OfNat 14 15
          | 16 => cyclicMergeWitness21OfNat 14 16
          | 17 => cyclicMergeWitness21OfNat 19 17
          | 18 => cyclicMergeWitness21OfNat 19 18
          | 19 => cyclicMergeWitness21OfNat 19 19
          | 20 => cyclicMergeWitness21OfNat 26 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 30 18
          | 1 => cyclicMergeWitness21OfNat 30 19
          | 9 => cyclicMergeWitness21OfNat 36 9
          | 10 => cyclicMergeWitness21OfNat 36 10
          | 11 => cyclicMergeWitness21OfNat 34 11
          | 12 => cyclicMergeWitness21OfNat 23 12
          | 13 => cyclicMergeWitness21OfNat 23 13
          | 14 => cyclicMergeWitness21OfNat 32 14
          | 15 => cyclicMergeWitness21OfNat 22 15
          | 16 => cyclicMergeWitness21OfNat 22 16
          | 17 => cyclicMergeWitness21OfNat 28 17
          | 18 => cyclicMergeWitness21OfNat 20 18
          | 19 => cyclicMergeWitness21OfNat 20 19
          | 20 => cyclicMergeWitness21OfNat 25 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 4 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 6 18
          | 3 => cyclicMergeWitness21OfNat 6 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 4 0
          | 3 => cyclicMergeWitness21OfNat 4 0
          | 6 => cyclicMergeWitness21OfNat 6 0
          | 18 => cyclicMergeWitness21OfNat 6 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 6 18
          | 3 => cyclicMergeWitness21OfNat 6 0
          | 6 => cyclicMergeWitness21OfNat 9 0
          | 18 => cyclicMergeWitness21OfNat 9 15
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 8 18
          | 2 => cyclicMergeWitness21OfNat 8 0
          | 3 => cyclicMergeWitness21OfNat 8 0
          | 20 => cyclicMergeWitness21OfNat 8 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 4 0
          | 3 => cyclicMergeWitness21OfNat 6 0
          | 6 => cyclicMergeWitness21OfNat 9 0
          | 15 => cyclicMergeWitness21OfNat 9 15
          | 18 => cyclicMergeWitness21OfNat 6 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 12 18
          | 1 => cyclicMergeWitness21OfNat 11 0
          | 2 => cyclicMergeWitness21OfNat 8 0
          | 3 => cyclicMergeWitness21OfNat 12 0
          | 5 => cyclicMergeWitness21OfNat 14 0
          | 17 => cyclicMergeWitness21OfNat 13 15
          | 19 => cyclicMergeWitness21OfNat 11 18
          | 20 => cyclicMergeWitness21OfNat 8 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 6 0
          | 3 => cyclicMergeWitness21OfNat 9 0
          | 6 => cyclicMergeWitness21OfNat 15 0
          | 12 => cyclicMergeWitness21OfNat 15 12
          | 15 => cyclicMergeWitness21OfNat 9 15
          | 18 => cyclicMergeWitness21OfNat 6 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 11 0
          | 2 => cyclicMergeWitness21OfNat 12 0
          | 3 => cyclicMergeWitness21OfNat 19 0
          | 4 => cyclicMergeWitness21OfNat 19 0
          | 5 => cyclicMergeWitness21OfNat 21 0
          | 16 => cyclicMergeWitness21OfNat 17 15
          | 17 => cyclicMergeWitness21OfNat 19 15
          | 18 => cyclicMergeWitness21OfNat 19 15
          | 19 => cyclicMergeWitness21OfNat 11 18
          | 20 => cyclicMergeWitness21OfNat 12 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 8 0
          | 1 => cyclicMergeWitness21OfNat 18 0
          | 3 => cyclicMergeWitness21OfNat 14 0
          | 6 => cyclicMergeWitness21OfNat 23 0
          | 12 => cyclicMergeWitness21OfNat 20 12
          | 15 => cyclicMergeWitness21OfNat 13 15
          | 17 => cyclicMergeWitness21OfNat 18 17
          | 18 => cyclicMergeWitness21OfNat 8 18
          | 19 => cyclicMergeWitness21OfNat 18 18
          | 20 => cyclicMergeWitness21OfNat 18 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 9 0
          | 3 => cyclicMergeWitness21OfNat 15 0
          | 6 => cyclicMergeWitness21OfNat 24 0
          | 9 => cyclicMergeWitness21OfNat 24 9
          | 12 => cyclicMergeWitness21OfNat 15 12
          | 15 => cyclicMergeWitness21OfNat 9 15
          | 18 => cyclicMergeWitness21OfNat 9 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 16 0
          | 2 => cyclicMergeWitness21OfNat 19 0
          | 3 => cyclicMergeWitness21OfNat 19 0
          | 4 => cyclicMergeWitness21OfNat 26 0
          | 5 => cyclicMergeWitness21OfNat 32 0
          | 15 => cyclicMergeWitness21OfNat 28 12
          | 16 => cyclicMergeWitness21OfNat 26 14
          | 17 => cyclicMergeWitness21OfNat 19 15
          | 18 => cyclicMergeWitness21OfNat 19 15
          | 19 => cyclicMergeWitness21OfNat 16 18
          | 20 => cyclicMergeWitness21OfNat 19 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 11 0
          | 1 => cyclicMergeWitness21OfNat 18 0
          | 2 => cyclicMergeWitness21OfNat 26 20
          | 3 => cyclicMergeWitness21OfNat 19 0
          | 4 => cyclicMergeWitness21OfNat 26 0
          | 6 => cyclicMergeWitness21OfNat 32 0
          | 12 => cyclicMergeWitness21OfNat 25 12
          | 15 => cyclicMergeWitness21OfNat 17 15
          | 16 => cyclicMergeWitness21OfNat 26 15
          | 17 => cyclicMergeWitness21OfNat 26 14
          | 18 => cyclicMergeWitness21OfNat 11 18
          | 19 => cyclicMergeWitness21OfNat 18 18
          | 20 => cyclicMergeWitness21OfNat 26 17
          | _ => cyclicMergeWitness21OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 12 0
          | 1 => cyclicMergeWitness21OfNat 26 0
          | 2 => cyclicMergeWitness21OfNat 26 20
          | 3 => cyclicMergeWitness21OfNat 21 0
          | 6 => cyclicMergeWitness21OfNat 34 0
          | 12 => cyclicMergeWitness21OfNat 28 12
          | 14 => cyclicMergeWitness21OfNat 26 14
          | 15 => cyclicMergeWitness21OfNat 19 15
          | 16 => cyclicMergeWitness21OfNat 26 15
          | 17 => cyclicMergeWitness21OfNat 18 17
          | 18 => cyclicMergeWitness21OfNat 12 18
          | 19 => cyclicMergeWitness21OfNat 26 18
          | 20 => cyclicMergeWitness21OfNat 18 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 13 0
          | 1 => cyclicMergeWitness21OfNat 26 0
          | 3 => cyclicMergeWitness21OfNat 22 0
          | 6 => cyclicMergeWitness21OfNat 35 0
          | 9 => cyclicMergeWitness21OfNat 30 9
          | 12 => cyclicMergeWitness21OfNat 20 12
          | 15 => cyclicMergeWitness21OfNat 13 15
          | 17 => cyclicMergeWitness21OfNat 26 17
          | 18 => cyclicMergeWitness21OfNat 13 18
          | 19 => cyclicMergeWitness21OfNat 26 18
          | 20 => cyclicMergeWitness21OfNat 26 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 14 0
          | 3 => cyclicMergeWitness21OfNat 23 0
          | 6 => cyclicMergeWitness21OfNat 36 0
          | 9 => cyclicMergeWitness21OfNat 33 9
          | 12 => cyclicMergeWitness21OfNat 22 12
          | 14 => cyclicMergeWitness21OfNat 26 14
          | 15 => cyclicMergeWitness21OfNat 14 15
          | 16 => cyclicMergeWitness21OfNat 26 15
          | 17 => cyclicMergeWitness21OfNat 26 17
          | 18 => cyclicMergeWitness21OfNat 14 18
          | 19 => cyclicMergeWitness21OfNat 26 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 15 0
          | 3 => cyclicMergeWitness21OfNat 24 0
          | 6 => cyclicMergeWitness21OfNat 37 0
          | 9 => cyclicMergeWitness21OfNat 24 9
          | 12 => cyclicMergeWitness21OfNat 15 12
          | 15 => cyclicMergeWitness21OfNat 15 15
          | 18 => cyclicMergeWitness21OfNat 15 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 5 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 5 0
          | 1 => cyclicMergeWitness21OfNat 5 0
          | 2 => cyclicMergeWitness21OfNat 5 0
          | 3 => cyclicMergeWitness21OfNat 7 0
          | 20 => cyclicMergeWitness21OfNat 7 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 7 20
          | 1 => cyclicMergeWitness21OfNat 5 0
          | 2 => cyclicMergeWitness21OfNat 7 0
          | 4 => cyclicMergeWitness21OfNat 8 19
          | 19 => cyclicMergeWitness21OfNat 8 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 7 20
          | 1 => cyclicMergeWitness21OfNat 5 0
          | 2 => cyclicMergeWitness21OfNat 7 0
          | 3 => cyclicMergeWitness21OfNat 10 0
          | 4 => cyclicMergeWitness21OfNat 13 19
          | 19 => cyclicMergeWitness21OfNat 14 16
          | 20 => cyclicMergeWitness21OfNat 10 19
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 5 0
          | 1 => cyclicMergeWitness21OfNat 5 0
          | 2 => cyclicMergeWitness21OfNat 7 0
          | 3 => cyclicMergeWitness21OfNat 10 0
          | 19 => cyclicMergeWitness21OfNat 10 19
          | 20 => cyclicMergeWitness21OfNat 7 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 12 18
          | 1 => cyclicMergeWitness21OfNat 8 19
          | 2 => cyclicMergeWitness21OfNat 11 20
          | 4 => cyclicMergeWitness21OfNat 13 19
          | 16 => cyclicMergeWitness21OfNat 14 16
          | 18 => cyclicMergeWitness21OfNat 12 18
          | 19 => cyclicMergeWitness21OfNat 8 19
          | 20 => cyclicMergeWitness21OfNat 11 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 5 0
          | 1 => cyclicMergeWitness21OfNat 7 0
          | 2 => cyclicMergeWitness21OfNat 10 0
          | 3 => cyclicMergeWitness21OfNat 19 19
          | 18 => cyclicMergeWitness21OfNat 19 16
          | 19 => cyclicMergeWitness21OfNat 10 19
          | 20 => cyclicMergeWitness21OfNat 7 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 13 19
          | 2 => cyclicMergeWitness21OfNat 17 20
          | 4 => cyclicMergeWitness21OfNat 20 19
          | 13 => cyclicMergeWitness21OfNat 23 13
          | 15 => cyclicMergeWitness21OfNat 21 15
          | 16 => cyclicMergeWitness21OfNat 14 16
          | 17 => cyclicMergeWitness21OfNat 19 17
          | 18 => cyclicMergeWitness21OfNat 12 18
          | 19 => cyclicMergeWitness21OfNat 8 19
          | 20 => cyclicMergeWitness21OfNat 11 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 7 0
          | 1 => cyclicMergeWitness21OfNat 10 0
          | 2 => cyclicMergeWitness21OfNat 19 19
          | 3 => cyclicMergeWitness21OfNat 26 19
          | 17 => cyclicMergeWitness21OfNat 26 15
          | 18 => cyclicMergeWitness21OfNat 19 16
          | 19 => cyclicMergeWitness21OfNat 10 19
          | 20 => cyclicMergeWitness21OfNat 7 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 19 19
          | 2 => cyclicMergeWitness21OfNat 26 19
          | 4 => cyclicMergeWitness21OfNat 29 19
          | 13 => cyclicMergeWitness21OfNat 29 13
          | 15 => cyclicMergeWitness21OfNat 26 15
          | 16 => cyclicMergeWitness21OfNat 19 16
          | 17 => cyclicMergeWitness21OfNat 19 17
          | 18 => cyclicMergeWitness21OfNat 12 18
          | 19 => cyclicMergeWitness21OfNat 8 19
          | 20 => cyclicMergeWitness21OfNat 11 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 28 18
          | 1 => cyclicMergeWitness21OfNat 20 19
          | 2 => cyclicMergeWitness21OfNat 25 20
          | 4 => cyclicMergeWitness21OfNat 30 19
          | 10 => cyclicMergeWitness21OfNat 36 10
          | 12 => cyclicMergeWitness21OfNat 34 12
          | 13 => cyclicMergeWitness21OfNat 23 13
          | 14 => cyclicMergeWitness21OfNat 32 14
          | 15 => cyclicMergeWitness21OfNat 21 15
          | 16 => cyclicMergeWitness21OfNat 14 16
          | 17 => cyclicMergeWitness21OfNat 19 17
          | 18 => cyclicMergeWitness21OfNat 19 18
          | 19 => cyclicMergeWitness21OfNat 13 19
          | 20 => cyclicMergeWitness21OfNat 17 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 6 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 9 18
          | 2 => cyclicMergeWitness21OfNat 8 0
          | 3 => cyclicMergeWitness21OfNat 6 0
          | 4 => cyclicMergeWitness21OfNat 8 0
          | 6 => cyclicMergeWitness21OfNat 9 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 6 0
          | 3 => cyclicMergeWitness21OfNat 6 0
          | 6 => cyclicMergeWitness21OfNat 6 0
          | 9 => cyclicMergeWitness21OfNat 9 0
          | 18 => cyclicMergeWitness21OfNat 9 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 9 18
          | 2 => cyclicMergeWitness21OfNat 11 0
          | 3 => cyclicMergeWitness21OfNat 6 0
          | 4 => cyclicMergeWitness21OfNat 12 0
          | 6 => cyclicMergeWitness21OfNat 9 0
          | 9 => cyclicMergeWitness21OfNat 15 0
          | 18 => cyclicMergeWitness21OfNat 15 15
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 13 18
          | 1 => cyclicMergeWitness21OfNat 11 0
          | 2 => cyclicMergeWitness21OfNat 8 0
          | 3 => cyclicMergeWitness21OfNat 8 0
          | 4 => cyclicMergeWitness21OfNat 12 0
          | 5 => cyclicMergeWitness21OfNat 14 0
          | 6 => cyclicMergeWitness21OfNat 14 0
          | 20 => cyclicMergeWitness21OfNat 13 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 6 0
          | 3 => cyclicMergeWitness21OfNat 6 0
          | 6 => cyclicMergeWitness21OfNat 9 0
          | 9 => cyclicMergeWitness21OfNat 15 0
          | 15 => cyclicMergeWitness21OfNat 15 15
          | 18 => cyclicMergeWitness21OfNat 9 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 11 0
          | 2 => cyclicMergeWitness21OfNat 8 0
          | 3 => cyclicMergeWitness21OfNat 12 0
          | 4 => cyclicMergeWitness21OfNat 19 0
          | 5 => cyclicMergeWitness21OfNat 14 0
          | 6 => cyclicMergeWitness21OfNat 21 0
          | 8 => cyclicMergeWitness21OfNat 23 0
          | 17 => cyclicMergeWitness21OfNat 20 15
          | 19 => cyclicMergeWitness21OfNat 17 18
          | 20 => cyclicMergeWitness21OfNat 13 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 6 0
          | 1 => cyclicMergeWitness21OfNat 18 0
          | 3 => cyclicMergeWitness21OfNat 9 0
          | 6 => cyclicMergeWitness21OfNat 15 0
          | 9 => cyclicMergeWitness21OfNat 24 0
          | 12 => cyclicMergeWitness21OfNat 24 12
          | 15 => cyclicMergeWitness21OfNat 15 15
          | 18 => cyclicMergeWitness21OfNat 9 18
          | 20 => cyclicMergeWitness21OfNat 18 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 11 0
          | 2 => cyclicMergeWitness21OfNat 12 0
          | 3 => cyclicMergeWitness21OfNat 19 0
          | 4 => cyclicMergeWitness21OfNat 19 0
          | 5 => cyclicMergeWitness21OfNat 21 0
          | 6 => cyclicMergeWitness21OfNat 32 0
          | 7 => cyclicMergeWitness21OfNat 32 0
          | 8 => cyclicMergeWitness21OfNat 34 0
          | 16 => cyclicMergeWitness21OfNat 25 15
          | 17 => cyclicMergeWitness21OfNat 28 15
          | 18 => cyclicMergeWitness21OfNat 28 15
          | 19 => cyclicMergeWitness21OfNat 17 18
          | 20 => cyclicMergeWitness21OfNat 19 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 8 0
          | 1 => cyclicMergeWitness21OfNat 18 0
          | 2 => cyclicMergeWitness21OfNat 26 20
          | 3 => cyclicMergeWitness21OfNat 14 0
          | 4 => cyclicMergeWitness21OfNat 26 0
          | 6 => cyclicMergeWitness21OfNat 23 0
          | 9 => cyclicMergeWitness21OfNat 36 0
          | 12 => cyclicMergeWitness21OfNat 30 12
          | 15 => cyclicMergeWitness21OfNat 20 15
          | 17 => cyclicMergeWitness21OfNat 26 17
          | 18 => cyclicMergeWitness21OfNat 13 18
          | 19 => cyclicMergeWitness21OfNat 26 18
          | 20 => cyclicMergeWitness21OfNat 18 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 9 0
          | 1 => cyclicMergeWitness21OfNat 26 0
          | 3 => cyclicMergeWitness21OfNat 15 0
          | 6 => cyclicMergeWitness21OfNat 24 0
          | 9 => cyclicMergeWitness21OfNat 37 0
          | 12 => cyclicMergeWitness21OfNat 24 12
          | 15 => cyclicMergeWitness21OfNat 15 15
          | 17 => cyclicMergeWitness21OfNat 26 17
          | 18 => cyclicMergeWitness21OfNat 9 18
          | 19 => cyclicMergeWitness21OfNat 26 18
          | 20 => cyclicMergeWitness21OfNat 26 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 7 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 7 0
          | 1 => cyclicMergeWitness21OfNat 7 0
          | 2 => cyclicMergeWitness21OfNat 7 0
          | 3 => cyclicMergeWitness21OfNat 7 0
          | 4 => cyclicMergeWitness21OfNat 10 0
          | 20 => cyclicMergeWitness21OfNat 10 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 10 20
          | 1 => cyclicMergeWitness21OfNat 7 0
          | 2 => cyclicMergeWitness21OfNat 7 0
          | 3 => cyclicMergeWitness21OfNat 10 0
          | 4 => cyclicMergeWitness21OfNat 12 19
          | 5 => cyclicMergeWitness21OfNat 11 20
          | 19 => cyclicMergeWitness21OfNat 12 19
          | 20 => cyclicMergeWitness21OfNat 11 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 10 20
          | 1 => cyclicMergeWitness21OfNat 7 0
          | 2 => cyclicMergeWitness21OfNat 7 0
          | 3 => cyclicMergeWitness21OfNat 10 0
          | 4 => cyclicMergeWitness21OfNat 19 19
          | 5 => cyclicMergeWitness21OfNat 17 20
          | 19 => cyclicMergeWitness21OfNat 21 16
          | 20 => cyclicMergeWitness21OfNat 19 17
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 7 0
          | 1 => cyclicMergeWitness21OfNat 7 0
          | 2 => cyclicMergeWitness21OfNat 7 0
          | 3 => cyclicMergeWitness21OfNat 10 0
          | 4 => cyclicMergeWitness21OfNat 19 19
          | 19 => cyclicMergeWitness21OfNat 19 17
          | 20 => cyclicMergeWitness21OfNat 10 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 12 19
          | 2 => cyclicMergeWitness21OfNat 11 20
          | 3 => cyclicMergeWitness21OfNat 19 18
          | 4 => cyclicMergeWitness21OfNat 19 19
          | 5 => cyclicMergeWitness21OfNat 17 20
          | 16 => cyclicMergeWitness21OfNat 21 16
          | 17 => cyclicMergeWitness21OfNat 19 17
          | 18 => cyclicMergeWitness21OfNat 19 18
          | 19 => cyclicMergeWitness21OfNat 12 19
          | 20 => cyclicMergeWitness21OfNat 11 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 7 0
          | 1 => cyclicMergeWitness21OfNat 7 0
          | 2 => cyclicMergeWitness21OfNat 10 0
          | 3 => cyclicMergeWitness21OfNat 19 19
          | 4 => cyclicMergeWitness21OfNat 26 19
          | 18 => cyclicMergeWitness21OfNat 26 16
          | 19 => cyclicMergeWitness21OfNat 19 17
          | 20 => cyclicMergeWitness21OfNat 10 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 19 19
          | 2 => cyclicMergeWitness21OfNat 17 20
          | 3 => cyclicMergeWitness21OfNat 28 18
          | 4 => cyclicMergeWitness21OfNat 28 19
          | 5 => cyclicMergeWitness21OfNat 25 20
          | 13 => cyclicMergeWitness21OfNat 34 13
          | 14 => cyclicMergeWitness21OfNat 32 14
          | 15 => cyclicMergeWitness21OfNat 32 15
          | 16 => cyclicMergeWitness21OfNat 21 16
          | 17 => cyclicMergeWitness21OfNat 19 17
          | 18 => cyclicMergeWitness21OfNat 19 18
          | 19 => cyclicMergeWitness21OfNat 12 19
          | 20 => cyclicMergeWitness21OfNat 11 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 8 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 14 18
          | 1 => cyclicMergeWitness21OfNat 11 0
          | 2 => cyclicMergeWitness21OfNat 8 0
          | 3 => cyclicMergeWitness21OfNat 8 0
          | 4 => cyclicMergeWitness21OfNat 8 0
          | 5 => cyclicMergeWitness21OfNat 12 0
          | 6 => cyclicMergeWitness21OfNat 13 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 8 0
          | 2 => cyclicMergeWitness21OfNat 11 0
          | 3 => cyclicMergeWitness21OfNat 8 0
          | 4 => cyclicMergeWitness21OfNat 12 0
          | 6 => cyclicMergeWitness21OfNat 8 0
          | 9 => cyclicMergeWitness21OfNat 13 0
          | 18 => cyclicMergeWitness21OfNat 14 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 14 18
          | 1 => cyclicMergeWitness21OfNat 19 18
          | 2 => cyclicMergeWitness21OfNat 11 0
          | 3 => cyclicMergeWitness21OfNat 8 0
          | 4 => cyclicMergeWitness21OfNat 12 0
          | 5 => cyclicMergeWitness21OfNat 19 0
          | 6 => cyclicMergeWitness21OfNat 13 0
          | 9 => cyclicMergeWitness21OfNat 20 0
          | 18 => cyclicMergeWitness21OfNat 23 15
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 11 0
          | 2 => cyclicMergeWitness21OfNat 8 0
          | 3 => cyclicMergeWitness21OfNat 8 0
          | 4 => cyclicMergeWitness21OfNat 12 0
          | 5 => cyclicMergeWitness21OfNat 19 0
          | 6 => cyclicMergeWitness21OfNat 19 0
          | 20 => cyclicMergeWitness21OfNat 19 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 8 0
          | 1 => cyclicMergeWitness21OfNat 18 0
          | 2 => cyclicMergeWitness21OfNat 18 20
          | 3 => cyclicMergeWitness21OfNat 8 0
          | 4 => cyclicMergeWitness21OfNat 18 0
          | 6 => cyclicMergeWitness21OfNat 13 0
          | 9 => cyclicMergeWitness21OfNat 20 0
          | 15 => cyclicMergeWitness21OfNat 23 15
          | 18 => cyclicMergeWitness21OfNat 14 18
          | 20 => cyclicMergeWitness21OfNat 18 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 11 0
          | 2 => cyclicMergeWitness21OfNat 8 0
          | 3 => cyclicMergeWitness21OfNat 12 0
          | 4 => cyclicMergeWitness21OfNat 19 0
          | 5 => cyclicMergeWitness21OfNat 19 0
          | 6 => cyclicMergeWitness21OfNat 26 0
          | 8 => cyclicMergeWitness21OfNat 29 0
          | 17 => cyclicMergeWitness21OfNat 29 15
          | 19 => cyclicMergeWitness21OfNat 26 17
          | 20 => cyclicMergeWitness21OfNat 19 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 8 0
          | 1 => cyclicMergeWitness21OfNat 18 0
          | 2 => cyclicMergeWitness21OfNat 26 20
          | 3 => cyclicMergeWitness21OfNat 13 0
          | 4 => cyclicMergeWitness21OfNat 26 0
          | 6 => cyclicMergeWitness21OfNat 20 0
          | 9 => cyclicMergeWitness21OfNat 30 0
          | 12 => cyclicMergeWitness21OfNat 36 12
          | 15 => cyclicMergeWitness21OfNat 23 15
          | 17 => cyclicMergeWitness21OfNat 26 17
          | 18 => cyclicMergeWitness21OfNat 14 18
          | 19 => cyclicMergeWitness21OfNat 26 18
          | 20 => cyclicMergeWitness21OfNat 18 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 9 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 15 18
          | 2 => cyclicMergeWitness21OfNat 13 0
          | 3 => cyclicMergeWitness21OfNat 9 0
          | 4 => cyclicMergeWitness21OfNat 13 0
          | 5 => cyclicMergeWitness21OfNat 14 0
          | 6 => cyclicMergeWitness21OfNat 9 0
          | 7 => cyclicMergeWitness21OfNat 14 0
          | 9 => cyclicMergeWitness21OfNat 15 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 9 0
          | 3 => cyclicMergeWitness21OfNat 9 0
          | 6 => cyclicMergeWitness21OfNat 9 0
          | 9 => cyclicMergeWitness21OfNat 9 0
          | 12 => cyclicMergeWitness21OfNat 15 0
          | 18 => cyclicMergeWitness21OfNat 15 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 15 18
          | 2 => cyclicMergeWitness21OfNat 17 0
          | 3 => cyclicMergeWitness21OfNat 9 0
          | 4 => cyclicMergeWitness21OfNat 19 0
          | 5 => cyclicMergeWitness21OfNat 19 0
          | 6 => cyclicMergeWitness21OfNat 9 0
          | 7 => cyclicMergeWitness21OfNat 21 0
          | 9 => cyclicMergeWitness21OfNat 15 0
          | 12 => cyclicMergeWitness21OfNat 24 0
          | 18 => cyclicMergeWitness21OfNat 24 15
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 20 18
          | 1 => cyclicMergeWitness21OfNat 17 0
          | 2 => cyclicMergeWitness21OfNat 13 0
          | 3 => cyclicMergeWitness21OfNat 13 0
          | 4 => cyclicMergeWitness21OfNat 19 0
          | 5 => cyclicMergeWitness21OfNat 14 0
          | 6 => cyclicMergeWitness21OfNat 14 0
          | 7 => cyclicMergeWitness21OfNat 21 0
          | 8 => cyclicMergeWitness21OfNat 23 0
          | 9 => cyclicMergeWitness21OfNat 23 0
          | 20 => cyclicMergeWitness21OfNat 20 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 9 0
          | 3 => cyclicMergeWitness21OfNat 9 0
          | 6 => cyclicMergeWitness21OfNat 9 0
          | 9 => cyclicMergeWitness21OfNat 15 0
          | 12 => cyclicMergeWitness21OfNat 24 0
          | 15 => cyclicMergeWitness21OfNat 24 15
          | 18 => cyclicMergeWitness21OfNat 15 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 28 18
          | 1 => cyclicMergeWitness21OfNat 17 0
          | 2 => cyclicMergeWitness21OfNat 13 0
          | 3 => cyclicMergeWitness21OfNat 19 0
          | 4 => cyclicMergeWitness21OfNat 19 0
          | 5 => cyclicMergeWitness21OfNat 14 0
          | 6 => cyclicMergeWitness21OfNat 21 0
          | 7 => cyclicMergeWitness21OfNat 32 0
          | 8 => cyclicMergeWitness21OfNat 23 0
          | 9 => cyclicMergeWitness21OfNat 34 0
          | 11 => cyclicMergeWitness21OfNat 36 0
          | 17 => cyclicMergeWitness21OfNat 30 15
          | 19 => cyclicMergeWitness21OfNat 25 18
          | 20 => cyclicMergeWitness21OfNat 20 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 9 0
          | 1 => cyclicMergeWitness21OfNat 26 0
          | 2 => cyclicMergeWitness21OfNat 26 20
          | 3 => cyclicMergeWitness21OfNat 9 0
          | 4 => cyclicMergeWitness21OfNat 26 0
          | 6 => cyclicMergeWitness21OfNat 15 0
          | 9 => cyclicMergeWitness21OfNat 24 0
          | 12 => cyclicMergeWitness21OfNat 37 0
          | 15 => cyclicMergeWitness21OfNat 24 15
          | 18 => cyclicMergeWitness21OfNat 15 18
          | 20 => cyclicMergeWitness21OfNat 26 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 10 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 10 0
          | 1 => cyclicMergeWitness21OfNat 10 0
          | 2 => cyclicMergeWitness21OfNat 10 0
          | 3 => cyclicMergeWitness21OfNat 10 0
          | 4 => cyclicMergeWitness21OfNat 10 0
          | 5 => cyclicMergeWitness21OfNat 19 19
          | 20 => cyclicMergeWitness21OfNat 19 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 10 0
          | 2 => cyclicMergeWitness21OfNat 10 0
          | 3 => cyclicMergeWitness21OfNat 10 0
          | 4 => cyclicMergeWitness21OfNat 19 19
          | 5 => cyclicMergeWitness21OfNat 16 20
          | 6 => cyclicMergeWitness21OfNat 19 18
          | 19 => cyclicMergeWitness21OfNat 19 19
          | 20 => cyclicMergeWitness21OfNat 16 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 10 0
          | 2 => cyclicMergeWitness21OfNat 10 0
          | 3 => cyclicMergeWitness21OfNat 10 0
          | 4 => cyclicMergeWitness21OfNat 19 19
          | 5 => cyclicMergeWitness21OfNat 26 19
          | 6 => cyclicMergeWitness21OfNat 28 18
          | 19 => cyclicMergeWitness21OfNat 32 16
          | 20 => cyclicMergeWitness21OfNat 26 17
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 10 0
          | 1 => cyclicMergeWitness21OfNat 10 0
          | 2 => cyclicMergeWitness21OfNat 10 0
          | 3 => cyclicMergeWitness21OfNat 10 0
          | 4 => cyclicMergeWitness21OfNat 19 19
          | 5 => cyclicMergeWitness21OfNat 26 19
          | 19 => cyclicMergeWitness21OfNat 26 17
          | 20 => cyclicMergeWitness21OfNat 19 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 19 19
          | 2 => cyclicMergeWitness21OfNat 16 20
          | 3 => cyclicMergeWitness21OfNat 19 18
          | 4 => cyclicMergeWitness21OfNat 19 19
          | 5 => cyclicMergeWitness21OfNat 26 19
          | 6 => cyclicMergeWitness21OfNat 28 18
          | 16 => cyclicMergeWitness21OfNat 32 16
          | 17 => cyclicMergeWitness21OfNat 26 17
          | 18 => cyclicMergeWitness21OfNat 19 18
          | 19 => cyclicMergeWitness21OfNat 19 19
          | 20 => cyclicMergeWitness21OfNat 16 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 11 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 11 0
          | 2 => cyclicMergeWitness21OfNat 11 0
          | 3 => cyclicMergeWitness21OfNat 11 0
          | 4 => cyclicMergeWitness21OfNat 11 0
          | 5 => cyclicMergeWitness21OfNat 16 0
          | 6 => cyclicMergeWitness21OfNat 17 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 11 0
          | 1 => cyclicMergeWitness21OfNat 19 18
          | 2 => cyclicMergeWitness21OfNat 11 0
          | 3 => cyclicMergeWitness21OfNat 11 0
          | 4 => cyclicMergeWitness21OfNat 16 0
          | 5 => cyclicMergeWitness21OfNat 18 20
          | 6 => cyclicMergeWitness21OfNat 11 0
          | 9 => cyclicMergeWitness21OfNat 17 0
          | 18 => cyclicMergeWitness21OfNat 19 18
          | 20 => cyclicMergeWitness21OfNat 18 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 19 18
          | 2 => cyclicMergeWitness21OfNat 11 0
          | 3 => cyclicMergeWitness21OfNat 11 0
          | 4 => cyclicMergeWitness21OfNat 16 0
          | 5 => cyclicMergeWitness21OfNat 26 20
          | 6 => cyclicMergeWitness21OfNat 17 0
          | 9 => cyclicMergeWitness21OfNat 25 0
          | 18 => cyclicMergeWitness21OfNat 32 15
          | 20 => cyclicMergeWitness21OfNat 26 17
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 18
          | 1 => cyclicMergeWitness21OfNat 11 0
          | 2 => cyclicMergeWitness21OfNat 11 0
          | 3 => cyclicMergeWitness21OfNat 11 0
          | 4 => cyclicMergeWitness21OfNat 16 0
          | 5 => cyclicMergeWitness21OfNat 26 20
          | 6 => cyclicMergeWitness21OfNat 26 20
          | 20 => cyclicMergeWitness21OfNat 19 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 11 0
          | 1 => cyclicMergeWitness21OfNat 26 18
          | 2 => cyclicMergeWitness21OfNat 18 20
          | 3 => cyclicMergeWitness21OfNat 11 0
          | 4 => cyclicMergeWitness21OfNat 26 18
          | 5 => cyclicMergeWitness21OfNat 26 20
          | 6 => cyclicMergeWitness21OfNat 17 0
          | 9 => cyclicMergeWitness21OfNat 25 0
          | 15 => cyclicMergeWitness21OfNat 32 15
          | 17 => cyclicMergeWitness21OfNat 26 17
          | 18 => cyclicMergeWitness21OfNat 19 18
          | 19 => cyclicMergeWitness21OfNat 26 18
          | 20 => cyclicMergeWitness21OfNat 18 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 12 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 21 18
          | 1 => cyclicMergeWitness21OfNat 16 0
          | 2 => cyclicMergeWitness21OfNat 12 0
          | 3 => cyclicMergeWitness21OfNat 12 0
          | 4 => cyclicMergeWitness21OfNat 12 0
          | 5 => cyclicMergeWitness21OfNat 12 0
          | 6 => cyclicMergeWitness21OfNat 19 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 12 0
          | 1 => cyclicMergeWitness21OfNat 18 0
          | 2 => cyclicMergeWitness21OfNat 16 0
          | 3 => cyclicMergeWitness21OfNat 12 0
          | 4 => cyclicMergeWitness21OfNat 12 0
          | 5 => cyclicMergeWitness21OfNat 19 0
          | 6 => cyclicMergeWitness21OfNat 12 0
          | 7 => cyclicMergeWitness21OfNat 18 0
          | 9 => cyclicMergeWitness21OfNat 19 0
          | 18 => cyclicMergeWitness21OfNat 21 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 21 18
          | 1 => cyclicMergeWitness21OfNat 26 18
          | 2 => cyclicMergeWitness21OfNat 16 0
          | 3 => cyclicMergeWitness21OfNat 12 0
          | 4 => cyclicMergeWitness21OfNat 12 0
          | 5 => cyclicMergeWitness21OfNat 19 0
          | 6 => cyclicMergeWitness21OfNat 19 0
          | 7 => cyclicMergeWitness21OfNat 26 0
          | 9 => cyclicMergeWitness21OfNat 28 0
          | 18 => cyclicMergeWitness21OfNat 34 15
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 26 18
          | 1 => cyclicMergeWitness21OfNat 16 0
          | 2 => cyclicMergeWitness21OfNat 12 0
          | 3 => cyclicMergeWitness21OfNat 12 0
          | 4 => cyclicMergeWitness21OfNat 12 0
          | 5 => cyclicMergeWitness21OfNat 19 0
          | 6 => cyclicMergeWitness21OfNat 19 0
          | 20 => cyclicMergeWitness21OfNat 26 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 12 0
          | 1 => cyclicMergeWitness21OfNat 18 0
          | 2 => cyclicMergeWitness21OfNat 26 20
          | 3 => cyclicMergeWitness21OfNat 12 0
          | 4 => cyclicMergeWitness21OfNat 18 0
          | 5 => cyclicMergeWitness21OfNat 26 20
          | 6 => cyclicMergeWitness21OfNat 19 0
          | 7 => cyclicMergeWitness21OfNat 26 0
          | 9 => cyclicMergeWitness21OfNat 28 0
          | 15 => cyclicMergeWitness21OfNat 34 15
          | 18 => cyclicMergeWitness21OfNat 21 18
          | 19 => cyclicMergeWitness21OfNat 26 18
          | 20 => cyclicMergeWitness21OfNat 26 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 13 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 22 18
          | 1 => cyclicMergeWitness21OfNat 17 0
          | 2 => cyclicMergeWitness21OfNat 13 0
          | 3 => cyclicMergeWitness21OfNat 13 0
          | 4 => cyclicMergeWitness21OfNat 13 0
          | 5 => cyclicMergeWitness21OfNat 19 0
          | 6 => cyclicMergeWitness21OfNat 13 0
          | 7 => cyclicMergeWitness21OfNat 19 0
          | 9 => cyclicMergeWitness21OfNat 20 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 13 0
          | 2 => cyclicMergeWitness21OfNat 17 0
          | 3 => cyclicMergeWitness21OfNat 13 0
          | 4 => cyclicMergeWitness21OfNat 19 0
          | 6 => cyclicMergeWitness21OfNat 13 0
          | 9 => cyclicMergeWitness21OfNat 13 0
          | 12 => cyclicMergeWitness21OfNat 20 0
          | 18 => cyclicMergeWitness21OfNat 22 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 22 18
          | 1 => cyclicMergeWitness21OfNat 28 18
          | 2 => cyclicMergeWitness21OfNat 17 0
          | 3 => cyclicMergeWitness21OfNat 13 0
          | 4 => cyclicMergeWitness21OfNat 19 0
          | 5 => cyclicMergeWitness21OfNat 19 0
          | 6 => cyclicMergeWitness21OfNat 13 0
          | 7 => cyclicMergeWitness21OfNat 26 0
          | 9 => cyclicMergeWitness21OfNat 20 0
          | 12 => cyclicMergeWitness21OfNat 30 0
          | 18 => cyclicMergeWitness21OfNat 35 15
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 28 18
          | 1 => cyclicMergeWitness21OfNat 17 0
          | 2 => cyclicMergeWitness21OfNat 13 0
          | 3 => cyclicMergeWitness21OfNat 13 0
          | 4 => cyclicMergeWitness21OfNat 19 0
          | 5 => cyclicMergeWitness21OfNat 19 0
          | 6 => cyclicMergeWitness21OfNat 19 0
          | 7 => cyclicMergeWitness21OfNat 26 0
          | 8 => cyclicMergeWitness21OfNat 29 0
          | 9 => cyclicMergeWitness21OfNat 29 0
          | 20 => cyclicMergeWitness21OfNat 28 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 13 0
          | 1 => cyclicMergeWitness21OfNat 26 0
          | 2 => cyclicMergeWitness21OfNat 26 20
          | 3 => cyclicMergeWitness21OfNat 13 0
          | 4 => cyclicMergeWitness21OfNat 26 0
          | 6 => cyclicMergeWitness21OfNat 13 0
          | 9 => cyclicMergeWitness21OfNat 20 0
          | 12 => cyclicMergeWitness21OfNat 30 0
          | 15 => cyclicMergeWitness21OfNat 35 15
          | 18 => cyclicMergeWitness21OfNat 22 18
          | 20 => cyclicMergeWitness21OfNat 26 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 14 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 23 18
          | 2 => cyclicMergeWitness21OfNat 19 0
          | 3 => cyclicMergeWitness21OfNat 14 0
          | 4 => cyclicMergeWitness21OfNat 19 0
          | 5 => cyclicMergeWitness21OfNat 14 0
          | 6 => cyclicMergeWitness21OfNat 14 0
          | 7 => cyclicMergeWitness21OfNat 14 0
          | 8 => cyclicMergeWitness21OfNat 21 0
          | 9 => cyclicMergeWitness21OfNat 22 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 14 0
          | 3 => cyclicMergeWitness21OfNat 14 0
          | 5 => cyclicMergeWitness21OfNat 19 0
          | 6 => cyclicMergeWitness21OfNat 14 0
          | 7 => cyclicMergeWitness21OfNat 21 0
          | 9 => cyclicMergeWitness21OfNat 14 0
          | 12 => cyclicMergeWitness21OfNat 22 0
          | 18 => cyclicMergeWitness21OfNat 23 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 23 18
          | 2 => cyclicMergeWitness21OfNat 26 20
          | 3 => cyclicMergeWitness21OfNat 14 0
          | 4 => cyclicMergeWitness21OfNat 19 0
          | 5 => cyclicMergeWitness21OfNat 19 0
          | 6 => cyclicMergeWitness21OfNat 14 0
          | 7 => cyclicMergeWitness21OfNat 21 0
          | 8 => cyclicMergeWitness21OfNat 32 0
          | 9 => cyclicMergeWitness21OfNat 22 0
          | 12 => cyclicMergeWitness21OfNat 33 0
          | 18 => cyclicMergeWitness21OfNat 36 15
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 29 18
          | 1 => cyclicMergeWitness21OfNat 26 20
          | 2 => cyclicMergeWitness21OfNat 19 0
          | 3 => cyclicMergeWitness21OfNat 19 0
          | 4 => cyclicMergeWitness21OfNat 19 0
          | 5 => cyclicMergeWitness21OfNat 14 0
          | 6 => cyclicMergeWitness21OfNat 14 0
          | 7 => cyclicMergeWitness21OfNat 21 0
          | 8 => cyclicMergeWitness21OfNat 32 0
          | 9 => cyclicMergeWitness21OfNat 32 0
          | 20 => cyclicMergeWitness21OfNat 29 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 14 0
          | 2 => cyclicMergeWitness21OfNat 26 20
          | 3 => cyclicMergeWitness21OfNat 14 0
          | 4 => cyclicMergeWitness21OfNat 26 0
          | 5 => cyclicMergeWitness21OfNat 26 20
          | 6 => cyclicMergeWitness21OfNat 14 0
          | 7 => cyclicMergeWitness21OfNat 26 0
          | 9 => cyclicMergeWitness21OfNat 22 0
          | 12 => cyclicMergeWitness21OfNat 33 0
          | 15 => cyclicMergeWitness21OfNat 36 15
          | 18 => cyclicMergeWitness21OfNat 23 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 15 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 24 18
          | 2 => cyclicMergeWitness21OfNat 20 0
          | 3 => cyclicMergeWitness21OfNat 15 0
          | 4 => cyclicMergeWitness21OfNat 20 0
          | 5 => cyclicMergeWitness21OfNat 22 0
          | 6 => cyclicMergeWitness21OfNat 15 0
          | 7 => cyclicMergeWitness21OfNat 22 0
          | 8 => cyclicMergeWitness21OfNat 23 0
          | 9 => cyclicMergeWitness21OfNat 15 0
          | 10 => cyclicMergeWitness21OfNat 23 0
          | 12 => cyclicMergeWitness21OfNat 24 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 15 0
          | 3 => cyclicMergeWitness21OfNat 15 0
          | 6 => cyclicMergeWitness21OfNat 15 0
          | 9 => cyclicMergeWitness21OfNat 15 0
          | 12 => cyclicMergeWitness21OfNat 15 0
          | 15 => cyclicMergeWitness21OfNat 24 0
          | 18 => cyclicMergeWitness21OfNat 24 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 24 18
          | 2 => cyclicMergeWitness21OfNat 25 0
          | 3 => cyclicMergeWitness21OfNat 15 0
          | 4 => cyclicMergeWitness21OfNat 28 0
          | 5 => cyclicMergeWitness21OfNat 28 0
          | 6 => cyclicMergeWitness21OfNat 15 0
          | 7 => cyclicMergeWitness21OfNat 32 0
          | 8 => cyclicMergeWitness21OfNat 32 0
          | 9 => cyclicMergeWitness21OfNat 15 0
          | 10 => cyclicMergeWitness21OfNat 34 0
          | 12 => cyclicMergeWitness21OfNat 24 0
          | 15 => cyclicMergeWitness21OfNat 37 0
          | 18 => cyclicMergeWitness21OfNat 37 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 30 18
          | 1 => cyclicMergeWitness21OfNat 25 0
          | 2 => cyclicMergeWitness21OfNat 20 0
          | 3 => cyclicMergeWitness21OfNat 20 0
          | 4 => cyclicMergeWitness21OfNat 28 0
          | 5 => cyclicMergeWitness21OfNat 22 0
          | 6 => cyclicMergeWitness21OfNat 22 0
          | 7 => cyclicMergeWitness21OfNat 32 0
          | 8 => cyclicMergeWitness21OfNat 23 0
          | 9 => cyclicMergeWitness21OfNat 23 0
          | 10 => cyclicMergeWitness21OfNat 34 0
          | 11 => cyclicMergeWitness21OfNat 36 0
          | 12 => cyclicMergeWitness21OfNat 36 0
          | 20 => cyclicMergeWitness21OfNat 30 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 15 0
          | 3 => cyclicMergeWitness21OfNat 15 0
          | 6 => cyclicMergeWitness21OfNat 15 0
          | 9 => cyclicMergeWitness21OfNat 15 0
          | 12 => cyclicMergeWitness21OfNat 24 0
          | 15 => cyclicMergeWitness21OfNat 37 0
          | 18 => cyclicMergeWitness21OfNat 24 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 16 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 26 18
          | 1 => cyclicMergeWitness21OfNat 16 0
          | 2 => cyclicMergeWitness21OfNat 16 0
          | 3 => cyclicMergeWitness21OfNat 16 0
          | 4 => cyclicMergeWitness21OfNat 16 0
          | 5 => cyclicMergeWitness21OfNat 16 0
          | 6 => cyclicMergeWitness21OfNat 26 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 16 0
          | 1 => cyclicMergeWitness21OfNat 26 18
          | 2 => cyclicMergeWitness21OfNat 16 0
          | 3 => cyclicMergeWitness21OfNat 16 0
          | 4 => cyclicMergeWitness21OfNat 16 0
          | 5 => cyclicMergeWitness21OfNat 26 20
          | 6 => cyclicMergeWitness21OfNat 16 0
          | 7 => cyclicMergeWitness21OfNat 26 18
          | 9 => cyclicMergeWitness21OfNat 26 20
          | 18 => cyclicMergeWitness21OfNat 26 18
          | 20 => cyclicMergeWitness21OfNat 26 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 17 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 28 18
          | 1 => cyclicMergeWitness21OfNat 17 0
          | 2 => cyclicMergeWitness21OfNat 17 0
          | 3 => cyclicMergeWitness21OfNat 17 0
          | 4 => cyclicMergeWitness21OfNat 17 0
          | 5 => cyclicMergeWitness21OfNat 26 20
          | 6 => cyclicMergeWitness21OfNat 17 0
          | 7 => cyclicMergeWitness21OfNat 26 20
          | 9 => cyclicMergeWitness21OfNat 25 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 17 0
          | 1 => cyclicMergeWitness21OfNat 28 18
          | 2 => cyclicMergeWitness21OfNat 17 0
          | 3 => cyclicMergeWitness21OfNat 17 0
          | 4 => cyclicMergeWitness21OfNat 26 20
          | 5 => cyclicMergeWitness21OfNat 26 20
          | 6 => cyclicMergeWitness21OfNat 17 0
          | 9 => cyclicMergeWitness21OfNat 17 0
          | 12 => cyclicMergeWitness21OfNat 25 0
          | 18 => cyclicMergeWitness21OfNat 28 18
          | 20 => cyclicMergeWitness21OfNat 26 20
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 18 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 26 18
          | 1 => cyclicMergeWitness21OfNat 26 18
          | 2 => cyclicMergeWitness21OfNat 18 0
          | 3 => cyclicMergeWitness21OfNat 18 0
          | 4 => cyclicMergeWitness21OfNat 18 0
          | 5 => cyclicMergeWitness21OfNat 18 0
          | 6 => cyclicMergeWitness21OfNat 26 0
          | 7 => cyclicMergeWitness21OfNat 26 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 18 0
          | 1 => cyclicMergeWitness21OfNat 18 0
          | 2 => cyclicMergeWitness21OfNat 26 18
          | 3 => cyclicMergeWitness21OfNat 18 0
          | 4 => cyclicMergeWitness21OfNat 18 0
          | 5 => cyclicMergeWitness21OfNat 26 0
          | 6 => cyclicMergeWitness21OfNat 18 0
          | 7 => cyclicMergeWitness21OfNat 18 0
          | 9 => cyclicMergeWitness21OfNat 26 0
          | 10 => cyclicMergeWitness21OfNat 26 0
          | 18 => cyclicMergeWitness21OfNat 26 18
          | 19 => cyclicMergeWitness21OfNat 26 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 19 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 32 18
          | 1 => cyclicMergeWitness21OfNat 26 20
          | 2 => cyclicMergeWitness21OfNat 19 0
          | 3 => cyclicMergeWitness21OfNat 19 0
          | 4 => cyclicMergeWitness21OfNat 19 0
          | 5 => cyclicMergeWitness21OfNat 19 0
          | 6 => cyclicMergeWitness21OfNat 19 0
          | 7 => cyclicMergeWitness21OfNat 19 0
          | 8 => cyclicMergeWitness21OfNat 26 0
          | 9 => cyclicMergeWitness21OfNat 28 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 19 0
          | 1 => cyclicMergeWitness21OfNat 26 0
          | 2 => cyclicMergeWitness21OfNat 26 20
          | 3 => cyclicMergeWitness21OfNat 19 0
          | 4 => cyclicMergeWitness21OfNat 19 0
          | 5 => cyclicMergeWitness21OfNat 19 0
          | 6 => cyclicMergeWitness21OfNat 19 0
          | 7 => cyclicMergeWitness21OfNat 26 0
          | 8 => cyclicMergeWitness21OfNat 26 20
          | 9 => cyclicMergeWitness21OfNat 19 0
          | 12 => cyclicMergeWitness21OfNat 28 0
          | 18 => cyclicMergeWitness21OfNat 32 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 20 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 33 18
          | 1 => cyclicMergeWitness21OfNat 25 0
          | 2 => cyclicMergeWitness21OfNat 20 0
          | 3 => cyclicMergeWitness21OfNat 20 0
          | 4 => cyclicMergeWitness21OfNat 20 0
          | 5 => cyclicMergeWitness21OfNat 28 0
          | 6 => cyclicMergeWitness21OfNat 20 0
          | 7 => cyclicMergeWitness21OfNat 28 0
          | 8 => cyclicMergeWitness21OfNat 29 0
          | 9 => cyclicMergeWitness21OfNat 20 0
          | 10 => cyclicMergeWitness21OfNat 29 0
          | 12 => cyclicMergeWitness21OfNat 30 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 20 0
          | 2 => cyclicMergeWitness21OfNat 25 0
          | 3 => cyclicMergeWitness21OfNat 20 0
          | 4 => cyclicMergeWitness21OfNat 28 0
          | 6 => cyclicMergeWitness21OfNat 20 0
          | 9 => cyclicMergeWitness21OfNat 20 0
          | 12 => cyclicMergeWitness21OfNat 20 0
          | 15 => cyclicMergeWitness21OfNat 30 0
          | 18 => cyclicMergeWitness21OfNat 33 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 21 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 34 18
          | 2 => cyclicMergeWitness21OfNat 26 0
          | 3 => cyclicMergeWitness21OfNat 21 0
          | 4 => cyclicMergeWitness21OfNat 26 0
          | 5 => cyclicMergeWitness21OfNat 21 0
          | 6 => cyclicMergeWitness21OfNat 21 0
          | 7 => cyclicMergeWitness21OfNat 21 0
          | 8 => cyclicMergeWitness21OfNat 21 0
          | 9 => cyclicMergeWitness21OfNat 32 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 21 0
          | 3 => cyclicMergeWitness21OfNat 21 0
          | 4 => cyclicMergeWitness21OfNat 26 0
          | 5 => cyclicMergeWitness21OfNat 26 0
          | 6 => cyclicMergeWitness21OfNat 21 0
          | 7 => cyclicMergeWitness21OfNat 21 0
          | 8 => cyclicMergeWitness21OfNat 32 0
          | 9 => cyclicMergeWitness21OfNat 21 0
          | 10 => cyclicMergeWitness21OfNat 26 0
          | 12 => cyclicMergeWitness21OfNat 32 0
          | 18 => cyclicMergeWitness21OfNat 34 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 22 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 35 18
          | 2 => cyclicMergeWitness21OfNat 28 0
          | 3 => cyclicMergeWitness21OfNat 22 0
          | 4 => cyclicMergeWitness21OfNat 28 0
          | 5 => cyclicMergeWitness21OfNat 22 0
          | 6 => cyclicMergeWitness21OfNat 22 0
          | 7 => cyclicMergeWitness21OfNat 22 0
          | 8 => cyclicMergeWitness21OfNat 32 0
          | 9 => cyclicMergeWitness21OfNat 22 0
          | 10 => cyclicMergeWitness21OfNat 32 0
          | 12 => cyclicMergeWitness21OfNat 33 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 22 0
          | 3 => cyclicMergeWitness21OfNat 22 0
          | 5 => cyclicMergeWitness21OfNat 28 0
          | 6 => cyclicMergeWitness21OfNat 22 0
          | 7 => cyclicMergeWitness21OfNat 32 0
          | 9 => cyclicMergeWitness21OfNat 22 0
          | 12 => cyclicMergeWitness21OfNat 22 0
          | 15 => cyclicMergeWitness21OfNat 33 0
          | 18 => cyclicMergeWitness21OfNat 35 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 23 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 36 18
          | 2 => cyclicMergeWitness21OfNat 29 0
          | 3 => cyclicMergeWitness21OfNat 23 0
          | 4 => cyclicMergeWitness21OfNat 29 0
          | 5 => cyclicMergeWitness21OfNat 32 0
          | 6 => cyclicMergeWitness21OfNat 23 0
          | 7 => cyclicMergeWitness21OfNat 32 0
          | 8 => cyclicMergeWitness21OfNat 23 0
          | 9 => cyclicMergeWitness21OfNat 23 0
          | 10 => cyclicMergeWitness21OfNat 23 0
          | 11 => cyclicMergeWitness21OfNat 34 0
          | 12 => cyclicMergeWitness21OfNat 35 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 23 0
          | 3 => cyclicMergeWitness21OfNat 23 0
          | 6 => cyclicMergeWitness21OfNat 23 0
          | 8 => cyclicMergeWitness21OfNat 32 0
          | 9 => cyclicMergeWitness21OfNat 23 0
          | 10 => cyclicMergeWitness21OfNat 34 0
          | 12 => cyclicMergeWitness21OfNat 23 0
          | 15 => cyclicMergeWitness21OfNat 35 0
          | 18 => cyclicMergeWitness21OfNat 36 18
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | 24 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 37 0
          | 2 => cyclicMergeWitness21OfNat 30 0
          | 3 => cyclicMergeWitness21OfNat 24 0
          | 4 => cyclicMergeWitness21OfNat 30 0
          | 5 => cyclicMergeWitness21OfNat 33 0
          | 6 => cyclicMergeWitness21OfNat 24 0
          | 7 => cyclicMergeWitness21OfNat 33 0
          | 8 => cyclicMergeWitness21OfNat 35 0
          | 9 => cyclicMergeWitness21OfNat 24 0
          | 10 => cyclicMergeWitness21OfNat 35 0
          | 11 => cyclicMergeWitness21OfNat 36 0
          | 12 => cyclicMergeWitness21OfNat 24 0
          | 13 => cyclicMergeWitness21OfNat 36 0
          | 15 => cyclicMergeWitness21OfNat 37 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness21OfNat 24 0
          | 3 => cyclicMergeWitness21OfNat 24 0
          | 6 => cyclicMergeWitness21OfNat 24 0
          | 9 => cyclicMergeWitness21OfNat 24 0
          | 12 => cyclicMergeWitness21OfNat 24 0
          | 15 => cyclicMergeWitness21OfNat 24 0
          | 18 => cyclicMergeWitness21OfNat 37 0
          | _ => cyclicMergeWitness21OfNat 0 0
      | _ => cyclicMergeWitness21OfNat 0 0
  | _ => cyclicMergeWitness21OfNat 0 0

end PetersenZeroForcing
