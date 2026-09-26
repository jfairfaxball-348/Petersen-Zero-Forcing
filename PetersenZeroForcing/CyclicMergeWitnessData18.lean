import PetersenZeroForcing.CyclicCertificateData18

namespace PetersenZeroForcing

/-- Transparent witness constructor.  The generating search is not trusted:
`checkedWithWitnessB` re-checks every supplied witness in the original
`rotateSet` and containment semantics. -/
def cyclicMergeWitness18OfNat (c q : Nat) :
    CyclicCertificate.MergeWitness 18 cyclicCertificate18 where
  target := ⟨c % 34, by
    change c % 34 < 34
    exact Nat.mod_lt c (by decide)⟩
  shift := (q : ZMod 18)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
def cyclicMergeWitness18
    (a b : Fin cyclicCertificate18.shapeCount) (t : ZMod 18) :
    CyclicCertificate.MergeWitness 18 cyclicCertificate18 :=
  match a.val with
  | 0 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 0 0
          | 1 => cyclicMergeWitness18OfNat 2 0
          | 17 => cyclicMergeWitness18OfNat 2 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 3 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 2 0
          | 1 => cyclicMergeWitness18OfNat 5 0
          | 16 => cyclicMergeWitness18OfNat 5 16
          | 17 => cyclicMergeWitness18OfNat 2 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 3 0
          | 1 => cyclicMergeWitness18OfNat 5 0
          | 17 => cyclicMergeWitness18OfNat 5 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 6 0
          | 15 => cyclicMergeWitness18OfNat 6 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 5 0
          | 1 => cyclicMergeWitness18OfNat 7 0
          | 15 => cyclicMergeWitness18OfNat 7 15
          | 16 => cyclicMergeWitness18OfNat 5 16
          | 17 => cyclicMergeWitness18OfNat 5 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 6 0
          | 1 => cyclicMergeWitness18OfNat 8 0
          | 3 => cyclicMergeWitness18OfNat 9 0
          | 15 => cyclicMergeWitness18OfNat 9 15
          | 17 => cyclicMergeWitness18OfNat 8 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 7 0
          | 1 => cyclicMergeWitness18OfNat 10 0
          | 14 => cyclicMergeWitness18OfNat 10 14
          | 15 => cyclicMergeWitness18OfNat 7 15
          | 16 => cyclicMergeWitness18OfNat 7 16
          | 17 => cyclicMergeWitness18OfNat 7 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 8 0
          | 1 => cyclicMergeWitness18OfNat 12 0
          | 2 => cyclicMergeWitness18OfNat 14 2
          | 14 => cyclicMergeWitness18OfNat 13 14
          | 15 => cyclicMergeWitness18OfNat 11 15
          | 16 => cyclicMergeWitness18OfNat 8 16
          | 17 => cyclicMergeWitness18OfNat 8 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 9 0
          | 1 => cyclicMergeWitness18OfNat 13 0
          | 3 => cyclicMergeWitness18OfNat 15 0
          | 12 => cyclicMergeWitness18OfNat 15 12
          | 14 => cyclicMergeWitness18OfNat 14 16
          | 15 => cyclicMergeWitness18OfNat 9 15
          | 16 => cyclicMergeWitness18OfNat 14 0
          | 17 => cyclicMergeWitness18OfNat 13 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 10 0
          | 1 => cyclicMergeWitness18OfNat 23 0
          | 13 => cyclicMergeWitness18OfNat 23 13
          | 14 => cyclicMergeWitness18OfNat 10 14
          | 15 => cyclicMergeWitness18OfNat 10 15
          | 16 => cyclicMergeWitness18OfNat 10 16
          | 17 => cyclicMergeWitness18OfNat 10 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 11 0
          | 1 => cyclicMergeWitness18OfNat 16 0
          | 2 => cyclicMergeWitness18OfNat 18 2
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 11 15
          | 16 => cyclicMergeWitness18OfNat 11 16
          | 17 => cyclicMergeWitness18OfNat 11 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 12 0
          | 1 => cyclicMergeWitness18OfNat 23 17
          | 13 => cyclicMergeWitness18OfNat 17 13
          | 14 => cyclicMergeWitness18OfNat 16 14
          | 15 => cyclicMergeWitness18OfNat 12 15
          | 16 => cyclicMergeWitness18OfNat 12 16
          | 17 => cyclicMergeWitness18OfNat 12 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 13 0
          | 1 => cyclicMergeWitness18OfNat 17 0
          | 2 => cyclicMergeWitness18OfNat 21 2
          | 11 => cyclicMergeWitness18OfNat 20 11
          | 13 => cyclicMergeWitness18OfNat 23 13
          | 14 => cyclicMergeWitness18OfNat 13 14
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 13 16
          | 17 => cyclicMergeWitness18OfNat 13 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 14 0
          | 1 => cyclicMergeWitness18OfNat 23 16
          | 2 => cyclicMergeWitness18OfNat 14 2
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 5 => cyclicMergeWitness18OfNat 22 5
          | 14 => cyclicMergeWitness18OfNat 21 14
          | 15 => cyclicMergeWitness18OfNat 18 15
          | 16 => cyclicMergeWitness18OfNat 14 16
          | 17 => cyclicMergeWitness18OfNat 14 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 15 0
          | 1 => cyclicMergeWitness18OfNat 20 0
          | 3 => cyclicMergeWitness18OfNat 24 0
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 11 => cyclicMergeWitness18OfNat 22 16
          | 12 => cyclicMergeWitness18OfNat 15 12
          | 13 => cyclicMergeWitness18OfNat 22 0
          | 14 => cyclicMergeWitness18OfNat 21 16
          | 15 => cyclicMergeWitness18OfNat 15 15
          | 16 => cyclicMergeWitness18OfNat 21 0
          | 17 => cyclicMergeWitness18OfNat 20 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 16 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 16 0
          | 1 => cyclicMergeWitness18OfNat 33 17
          | 13 => cyclicMergeWitness18OfNat 33 13
          | 14 => cyclicMergeWitness18OfNat 16 14
          | 15 => cyclicMergeWitness18OfNat 16 15
          | 16 => cyclicMergeWitness18OfNat 16 16
          | 17 => cyclicMergeWitness18OfNat 16 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 17 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 17 0
          | 1 => cyclicMergeWitness18OfNat 30 17
          | 10 => cyclicMergeWitness18OfNat 25 10
          | 12 => cyclicMergeWitness18OfNat 33 12
          | 13 => cyclicMergeWitness18OfNat 17 13
          | 14 => cyclicMergeWitness18OfNat 33 14
          | 15 => cyclicMergeWitness18OfNat 17 15
          | 16 => cyclicMergeWitness18OfNat 17 16
          | 17 => cyclicMergeWitness18OfNat 17 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 18 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 18 0
          | 1 => cyclicMergeWitness18OfNat 33 16
          | 2 => cyclicMergeWitness18OfNat 18 2
          | 3 => cyclicMergeWitness18OfNat 33 0
          | 5 => cyclicMergeWitness18OfNat 27 5
          | 14 => cyclicMergeWitness18OfNat 31 14
          | 15 => cyclicMergeWitness18OfNat 18 15
          | 16 => cyclicMergeWitness18OfNat 18 16
          | 17 => cyclicMergeWitness18OfNat 18 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 19 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 19 0
          | 1 => cyclicMergeWitness18OfNat 33 16
          | 2 => cyclicMergeWitness18OfNat 28 2
          | 13 => cyclicMergeWitness18OfNat 26 13
          | 14 => cyclicMergeWitness18OfNat 33 14
          | 15 => cyclicMergeWitness18OfNat 19 15
          | 16 => cyclicMergeWitness18OfNat 19 16
          | 17 => cyclicMergeWitness18OfNat 19 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 20 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 20 0
          | 1 => cyclicMergeWitness18OfNat 25 0
          | 2 => cyclicMergeWitness18OfNat 32 2
          | 8 => cyclicMergeWitness18OfNat 32 8
          | 10 => cyclicMergeWitness18OfNat 29 10
          | 11 => cyclicMergeWitness18OfNat 20 11
          | 12 => cyclicMergeWitness18OfNat 29 12
          | 13 => cyclicMergeWitness18OfNat 30 13
          | 14 => cyclicMergeWitness18OfNat 20 14
          | 15 => cyclicMergeWitness18OfNat 30 15
          | 16 => cyclicMergeWitness18OfNat 20 16
          | 17 => cyclicMergeWitness18OfNat 20 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 21 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 21 0
          | 1 => cyclicMergeWitness18OfNat 30 16
          | 2 => cyclicMergeWitness18OfNat 21 2
          | 3 => cyclicMergeWitness18OfNat 30 0
          | 5 => cyclicMergeWitness18OfNat 32 5
          | 11 => cyclicMergeWitness18OfNat 32 11
          | 13 => cyclicMergeWitness18OfNat 31 13
          | 14 => cyclicMergeWitness18OfNat 21 14
          | 15 => cyclicMergeWitness18OfNat 31 15
          | 16 => cyclicMergeWitness18OfNat 21 16
          | 17 => cyclicMergeWitness18OfNat 21 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 22 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 22 0
          | 1 => cyclicMergeWitness18OfNat 31 16
          | 2 => cyclicMergeWitness18OfNat 22 2
          | 3 => cyclicMergeWitness18OfNat 31 0
          | 4 => cyclicMergeWitness18OfNat 29 16
          | 5 => cyclicMergeWitness18OfNat 22 5
          | 6 => cyclicMergeWitness18OfNat 29 0
          | 8 => cyclicMergeWitness18OfNat 32 8
          | 14 => cyclicMergeWitness18OfNat 32 14
          | 15 => cyclicMergeWitness18OfNat 27 15
          | 16 => cyclicMergeWitness18OfNat 22 16
          | 17 => cyclicMergeWitness18OfNat 22 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 23 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 0
          | 1 => cyclicMergeWitness18OfNat 33 0
          | 2 => cyclicMergeWitness18OfNat 31 2
          | 11 => cyclicMergeWitness18OfNat 30 11
          | 12 => cyclicMergeWitness18OfNat 33 12
          | 13 => cyclicMergeWitness18OfNat 23 13
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 23 16
          | 17 => cyclicMergeWitness18OfNat 23 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 24 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 24 0
          | 1 => cyclicMergeWitness18OfNat 32 0
          | 2 => cyclicMergeWitness18OfNat 32 16
          | 3 => cyclicMergeWitness18OfNat 24 0
          | 4 => cyclicMergeWitness18OfNat 32 0
          | 5 => cyclicMergeWitness18OfNat 32 16
          | 6 => cyclicMergeWitness18OfNat 24 0
          | 7 => cyclicMergeWitness18OfNat 32 0
          | 8 => cyclicMergeWitness18OfNat 32 16
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 10 => cyclicMergeWitness18OfNat 32 0
          | 11 => cyclicMergeWitness18OfNat 32 16
          | 12 => cyclicMergeWitness18OfNat 24 0
          | 13 => cyclicMergeWitness18OfNat 32 0
          | 14 => cyclicMergeWitness18OfNat 32 16
          | 15 => cyclicMergeWitness18OfNat 24 0
          | 16 => cyclicMergeWitness18OfNat 32 0
          | 17 => cyclicMergeWitness18OfNat 32 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 1 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 3 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 1 0
          | 3 => cyclicMergeWitness18OfNat 4 0
          | 15 => cyclicMergeWitness18OfNat 4 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 5 17
          | 17 => cyclicMergeWitness18OfNat 5 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 3 0
          | 3 => cyclicMergeWitness18OfNat 6 3
          | 15 => cyclicMergeWitness18OfNat 6 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 4 0
          | 3 => cyclicMergeWitness18OfNat 6 3
          | 12 => cyclicMergeWitness18OfNat 6 15
          | 15 => cyclicMergeWitness18OfNat 4 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 7 17
          | 2 => cyclicMergeWitness18OfNat 8 2
          | 14 => cyclicMergeWitness18OfNat 8 14
          | 16 => cyclicMergeWitness18OfNat 7 16
          | 17 => cyclicMergeWitness18OfNat 5 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 6 0
          | 3 => cyclicMergeWitness18OfNat 6 3
          | 6 => cyclicMergeWitness18OfNat 9 3
          | 12 => cyclicMergeWitness18OfNat 9 12
          | 15 => cyclicMergeWitness18OfNat 6 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 10 17
          | 1 => cyclicMergeWitness18OfNat 12 1
          | 2 => cyclicMergeWitness18OfNat 11 2
          | 13 => cyclicMergeWitness18OfNat 12 13
          | 14 => cyclicMergeWitness18OfNat 11 14
          | 15 => cyclicMergeWitness18OfNat 10 15
          | 16 => cyclicMergeWitness18OfNat 7 16
          | 17 => cyclicMergeWitness18OfNat 7 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 12 17
          | 2 => cyclicMergeWitness18OfNat 8 2
          | 5 => cyclicMergeWitness18OfNat 14 5
          | 11 => cyclicMergeWitness18OfNat 13 11
          | 14 => cyclicMergeWitness18OfNat 8 14
          | 16 => cyclicMergeWitness18OfNat 11 16
          | 17 => cyclicMergeWitness18OfNat 8 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 9 0
          | 3 => cyclicMergeWitness18OfNat 9 3
          | 6 => cyclicMergeWitness18OfNat 15 3
          | 9 => cyclicMergeWitness18OfNat 15 9
          | 12 => cyclicMergeWitness18OfNat 9 12
          | 15 => cyclicMergeWitness18OfNat 9 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 17
          | 1 => cyclicMergeWitness18OfNat 16 1
          | 2 => cyclicMergeWitness18OfNat 23 2
          | 12 => cyclicMergeWitness18OfNat 23 11
          | 13 => cyclicMergeWitness18OfNat 16 13
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 10 15
          | 16 => cyclicMergeWitness18OfNat 10 16
          | 17 => cyclicMergeWitness18OfNat 10 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 16 17
          | 1 => cyclicMergeWitness18OfNat 19 1
          | 2 => cyclicMergeWitness18OfNat 11 2
          | 5 => cyclicMergeWitness18OfNat 18 5
          | 11 => cyclicMergeWitness18OfNat 23 11
          | 13 => cyclicMergeWitness18OfNat 19 13
          | 14 => cyclicMergeWitness18OfNat 11 14
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 11 16
          | 17 => cyclicMergeWitness18OfNat 11 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 16
          | 1 => cyclicMergeWitness18OfNat 12 1
          | 2 => cyclicMergeWitness18OfNat 19 2
          | 4 => cyclicMergeWitness18OfNat 23 2
          | 10 => cyclicMergeWitness18OfNat 17 10
          | 13 => cyclicMergeWitness18OfNat 12 13
          | 14 => cyclicMergeWitness18OfNat 19 14
          | 15 => cyclicMergeWitness18OfNat 16 15
          | 16 => cyclicMergeWitness18OfNat 12 16
          | 17 => cyclicMergeWitness18OfNat 12 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 17 17
          | 2 => cyclicMergeWitness18OfNat 13 2
          | 5 => cyclicMergeWitness18OfNat 21 5
          | 8 => cyclicMergeWitness18OfNat 20 8
          | 11 => cyclicMergeWitness18OfNat 13 11
          | 14 => cyclicMergeWitness18OfNat 13 14
          | 16 => cyclicMergeWitness18OfNat 23 16
          | 17 => cyclicMergeWitness18OfNat 13 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 15
          | 2 => cyclicMergeWitness18OfNat 14 2
          | 5 => cyclicMergeWitness18OfNat 14 5
          | 8 => cyclicMergeWitness18OfNat 22 8
          | 11 => cyclicMergeWitness18OfNat 21 11
          | 14 => cyclicMergeWitness18OfNat 14 14
          | 16 => cyclicMergeWitness18OfNat 18 16
          | 17 => cyclicMergeWitness18OfNat 14 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 15 0
          | 3 => cyclicMergeWitness18OfNat 15 3
          | 6 => cyclicMergeWitness18OfNat 24 0
          | 9 => cyclicMergeWitness18OfNat 15 9
          | 12 => cyclicMergeWitness18OfNat 15 12
          | 15 => cyclicMergeWitness18OfNat 15 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 16 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 33 16
          | 1 => cyclicMergeWitness18OfNat 16 1
          | 2 => cyclicMergeWitness18OfNat 33 2
          | 4 => cyclicMergeWitness18OfNat 33 2
          | 10 => cyclicMergeWitness18OfNat 33 10
          | 12 => cyclicMergeWitness18OfNat 33 10
          | 13 => cyclicMergeWitness18OfNat 16 13
          | 14 => cyclicMergeWitness18OfNat 33 14
          | 15 => cyclicMergeWitness18OfNat 16 15
          | 16 => cyclicMergeWitness18OfNat 16 16
          | 17 => cyclicMergeWitness18OfNat 16 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 17 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 30 16
          | 1 => cyclicMergeWitness18OfNat 17 1
          | 2 => cyclicMergeWitness18OfNat 26 2
          | 4 => cyclicMergeWitness18OfNat 30 2
          | 7 => cyclicMergeWitness18OfNat 25 7
          | 10 => cyclicMergeWitness18OfNat 17 10
          | 13 => cyclicMergeWitness18OfNat 17 13
          | 14 => cyclicMergeWitness18OfNat 26 14
          | 15 => cyclicMergeWitness18OfNat 33 15
          | 16 => cyclicMergeWitness18OfNat 17 16
          | 17 => cyclicMergeWitness18OfNat 17 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 18 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 33 15
          | 1 => cyclicMergeWitness18OfNat 28 1
          | 2 => cyclicMergeWitness18OfNat 18 2
          | 5 => cyclicMergeWitness18OfNat 18 5
          | 8 => cyclicMergeWitness18OfNat 27 8
          | 11 => cyclicMergeWitness18OfNat 31 11
          | 13 => cyclicMergeWitness18OfNat 28 13
          | 14 => cyclicMergeWitness18OfNat 18 14
          | 15 => cyclicMergeWitness18OfNat 31 15
          | 16 => cyclicMergeWitness18OfNat 18 16
          | 17 => cyclicMergeWitness18OfNat 18 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 19 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 33 15
          | 1 => cyclicMergeWitness18OfNat 19 1
          | 2 => cyclicMergeWitness18OfNat 19 2
          | 4 => cyclicMergeWitness18OfNat 33 1
          | 5 => cyclicMergeWitness18OfNat 28 5
          | 10 => cyclicMergeWitness18OfNat 26 10
          | 11 => cyclicMergeWitness18OfNat 33 11
          | 13 => cyclicMergeWitness18OfNat 19 13
          | 14 => cyclicMergeWitness18OfNat 19 14
          | 15 => cyclicMergeWitness18OfNat 33 15
          | 16 => cyclicMergeWitness18OfNat 19 16
          | 17 => cyclicMergeWitness18OfNat 19 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 20 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 25 17
          | 2 => cyclicMergeWitness18OfNat 20 2
          | 5 => cyclicMergeWitness18OfNat 32 5
          | 8 => cyclicMergeWitness18OfNat 20 8
          | 11 => cyclicMergeWitness18OfNat 20 11
          | 14 => cyclicMergeWitness18OfNat 20 14
          | 16 => cyclicMergeWitness18OfNat 30 16
          | 17 => cyclicMergeWitness18OfNat 20 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 21 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 30 15
          | 2 => cyclicMergeWitness18OfNat 21 2
          | 5 => cyclicMergeWitness18OfNat 21 5
          | 8 => cyclicMergeWitness18OfNat 32 8
          | 11 => cyclicMergeWitness18OfNat 21 11
          | 14 => cyclicMergeWitness18OfNat 21 14
          | 16 => cyclicMergeWitness18OfNat 31 16
          | 17 => cyclicMergeWitness18OfNat 21 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 22 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 31 15
          | 2 => cyclicMergeWitness18OfNat 22 2
          | 5 => cyclicMergeWitness18OfNat 22 5
          | 8 => cyclicMergeWitness18OfNat 22 8
          | 11 => cyclicMergeWitness18OfNat 32 11
          | 14 => cyclicMergeWitness18OfNat 22 14
          | 16 => cyclicMergeWitness18OfNat 27 16
          | 17 => cyclicMergeWitness18OfNat 22 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 23 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 33 17
          | 1 => cyclicMergeWitness18OfNat 33 1
          | 2 => cyclicMergeWitness18OfNat 23 2
          | 5 => cyclicMergeWitness18OfNat 31 5
          | 8 => cyclicMergeWitness18OfNat 30 8
          | 11 => cyclicMergeWitness18OfNat 23 11
          | 12 => cyclicMergeWitness18OfNat 33 11
          | 13 => cyclicMergeWitness18OfNat 33 13
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 23 16
          | 17 => cyclicMergeWitness18OfNat 23 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 24 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 24 0
          | 3 => cyclicMergeWitness18OfNat 24 0
          | 6 => cyclicMergeWitness18OfNat 24 0
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 12 => cyclicMergeWitness18OfNat 24 0
          | 15 => cyclicMergeWitness18OfNat 24 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 2 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 2 0
          | 1 => cyclicMergeWitness18OfNat 2 0
          | 2 => cyclicMergeWitness18OfNat 5 0
          | 17 => cyclicMergeWitness18OfNat 5 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 5 17
          | 1 => cyclicMergeWitness18OfNat 5 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 2 0
          | 1 => cyclicMergeWitness18OfNat 5 0
          | 2 => cyclicMergeWitness18OfNat 7 0
          | 16 => cyclicMergeWitness18OfNat 7 16
          | 17 => cyclicMergeWitness18OfNat 5 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 5 17
          | 1 => cyclicMergeWitness18OfNat 5 0
          | 2 => cyclicMergeWitness18OfNat 7 0
          | 17 => cyclicMergeWitness18OfNat 7 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 8 17
          | 1 => cyclicMergeWitness18OfNat 8 0
          | 15 => cyclicMergeWitness18OfNat 8 17
          | 16 => cyclicMergeWitness18OfNat 8 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 5 0
          | 1 => cyclicMergeWitness18OfNat 7 0
          | 2 => cyclicMergeWitness18OfNat 10 0
          | 15 => cyclicMergeWitness18OfNat 10 15
          | 16 => cyclicMergeWitness18OfNat 7 16
          | 17 => cyclicMergeWitness18OfNat 5 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 8 17
          | 1 => cyclicMergeWitness18OfNat 8 0
          | 2 => cyclicMergeWitness18OfNat 12 0
          | 3 => cyclicMergeWitness18OfNat 13 17
          | 4 => cyclicMergeWitness18OfNat 13 0
          | 15 => cyclicMergeWitness18OfNat 14 17
          | 16 => cyclicMergeWitness18OfNat 14 0
          | 17 => cyclicMergeWitness18OfNat 11 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 7 0
          | 1 => cyclicMergeWitness18OfNat 10 0
          | 2 => cyclicMergeWitness18OfNat 23 0
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 10 15
          | 16 => cyclicMergeWitness18OfNat 7 16
          | 17 => cyclicMergeWitness18OfNat 7 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 8 0
          | 1 => cyclicMergeWitness18OfNat 12 0
          | 2 => cyclicMergeWitness18OfNat 23 17
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 11 16
          | 17 => cyclicMergeWitness18OfNat 8 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 13 17
          | 1 => cyclicMergeWitness18OfNat 13 0
          | 2 => cyclicMergeWitness18OfNat 17 0
          | 3 => cyclicMergeWitness18OfNat 20 17
          | 4 => cyclicMergeWitness18OfNat 20 0
          | 12 => cyclicMergeWitness18OfNat 22 17
          | 13 => cyclicMergeWitness18OfNat 22 0
          | 14 => cyclicMergeWitness18OfNat 18 16
          | 15 => cyclicMergeWitness18OfNat 14 17
          | 16 => cyclicMergeWitness18OfNat 14 0
          | 17 => cyclicMergeWitness18OfNat 23 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 10 0
          | 1 => cyclicMergeWitness18OfNat 23 0
          | 2 => cyclicMergeWitness18OfNat 33 0
          | 13 => cyclicMergeWitness18OfNat 33 13
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 10 15
          | 16 => cyclicMergeWitness18OfNat 10 16
          | 17 => cyclicMergeWitness18OfNat 10 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 11 0
          | 1 => cyclicMergeWitness18OfNat 16 0
          | 2 => cyclicMergeWitness18OfNat 33 17
          | 3 => cyclicMergeWitness18OfNat 33 0
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 11 16
          | 17 => cyclicMergeWitness18OfNat 11 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 12 0
          | 1 => cyclicMergeWitness18OfNat 23 17
          | 2 => cyclicMergeWitness18OfNat 23 0
          | 13 => cyclicMergeWitness18OfNat 33 13
          | 14 => cyclicMergeWitness18OfNat 33 14
          | 15 => cyclicMergeWitness18OfNat 16 15
          | 16 => cyclicMergeWitness18OfNat 12 16
          | 17 => cyclicMergeWitness18OfNat 12 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 13 0
          | 1 => cyclicMergeWitness18OfNat 17 0
          | 2 => cyclicMergeWitness18OfNat 30 17
          | 3 => cyclicMergeWitness18OfNat 30 0
          | 11 => cyclicMergeWitness18OfNat 29 11
          | 12 => cyclicMergeWitness18OfNat 29 12
          | 13 => cyclicMergeWitness18OfNat 33 13
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 23 16
          | 17 => cyclicMergeWitness18OfNat 13 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 14 0
          | 1 => cyclicMergeWitness18OfNat 23 16
          | 2 => cyclicMergeWitness18OfNat 23 17
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 4 => cyclicMergeWitness18OfNat 33 0
          | 5 => cyclicMergeWitness18OfNat 29 17
          | 6 => cyclicMergeWitness18OfNat 29 0
          | 14 => cyclicMergeWitness18OfNat 31 14
          | 15 => cyclicMergeWitness18OfNat 31 15
          | 16 => cyclicMergeWitness18OfNat 18 16
          | 17 => cyclicMergeWitness18OfNat 14 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 20 17
          | 1 => cyclicMergeWitness18OfNat 20 0
          | 2 => cyclicMergeWitness18OfNat 25 0
          | 3 => cyclicMergeWitness18OfNat 32 17
          | 4 => cyclicMergeWitness18OfNat 32 0
          | 9 => cyclicMergeWitness18OfNat 32 17
          | 10 => cyclicMergeWitness18OfNat 32 0
          | 11 => cyclicMergeWitness18OfNat 27 16
          | 12 => cyclicMergeWitness18OfNat 22 17
          | 13 => cyclicMergeWitness18OfNat 22 0
          | 14 => cyclicMergeWitness18OfNat 31 16
          | 15 => cyclicMergeWitness18OfNat 21 17
          | 16 => cyclicMergeWitness18OfNat 21 0
          | 17 => cyclicMergeWitness18OfNat 30 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 3 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 3 0
          | 1 => cyclicMergeWitness18OfNat 5 17
          | 17 => cyclicMergeWitness18OfNat 5 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 3 0
          | 3 => cyclicMergeWitness18OfNat 6 0
          | 15 => cyclicMergeWitness18OfNat 6 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 5 17
          | 1 => cyclicMergeWitness18OfNat 7 17
          | 16 => cyclicMergeWitness18OfNat 7 16
          | 17 => cyclicMergeWitness18OfNat 5 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 3 0
          | 1 => cyclicMergeWitness18OfNat 7 17
          | 3 => cyclicMergeWitness18OfNat 9 0
          | 15 => cyclicMergeWitness18OfNat 9 15
          | 17 => cyclicMergeWitness18OfNat 7 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 6 0
          | 3 => cyclicMergeWitness18OfNat 9 0
          | 12 => cyclicMergeWitness18OfNat 9 15
          | 15 => cyclicMergeWitness18OfNat 6 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 7 17
          | 1 => cyclicMergeWitness18OfNat 10 17
          | 2 => cyclicMergeWitness18OfNat 14 2
          | 14 => cyclicMergeWitness18OfNat 13 14
          | 15 => cyclicMergeWitness18OfNat 10 15
          | 16 => cyclicMergeWitness18OfNat 7 16
          | 17 => cyclicMergeWitness18OfNat 5 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 6 0
          | 1 => cyclicMergeWitness18OfNat 12 17
          | 3 => cyclicMergeWitness18OfNat 9 0
          | 6 => cyclicMergeWitness18OfNat 15 0
          | 12 => cyclicMergeWitness18OfNat 15 12
          | 15 => cyclicMergeWitness18OfNat 9 15
          | 17 => cyclicMergeWitness18OfNat 11 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 10 17
          | 1 => cyclicMergeWitness18OfNat 23 17
          | 2 => cyclicMergeWitness18OfNat 18 2
          | 13 => cyclicMergeWitness18OfNat 17 13
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 10 15
          | 16 => cyclicMergeWitness18OfNat 7 16
          | 17 => cyclicMergeWitness18OfNat 7 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 12 17
          | 1 => cyclicMergeWitness18OfNat 23 16
          | 2 => cyclicMergeWitness18OfNat 14 2
          | 5 => cyclicMergeWitness18OfNat 22 5
          | 11 => cyclicMergeWitness18OfNat 20 11
          | 14 => cyclicMergeWitness18OfNat 13 14
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 11 16
          | 17 => cyclicMergeWitness18OfNat 8 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 9 0
          | 1 => cyclicMergeWitness18OfNat 17 17
          | 3 => cyclicMergeWitness18OfNat 15 0
          | 6 => cyclicMergeWitness18OfNat 24 0
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 12 => cyclicMergeWitness18OfNat 15 12
          | 14 => cyclicMergeWitness18OfNat 18 16
          | 15 => cyclicMergeWitness18OfNat 9 15
          | 16 => cyclicMergeWitness18OfNat 23 15
          | 17 => cyclicMergeWitness18OfNat 23 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 17
          | 1 => cyclicMergeWitness18OfNat 33 17
          | 2 => cyclicMergeWitness18OfNat 31 2
          | 12 => cyclicMergeWitness18OfNat 30 11
          | 13 => cyclicMergeWitness18OfNat 33 13
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 10 15
          | 16 => cyclicMergeWitness18OfNat 10 16
          | 17 => cyclicMergeWitness18OfNat 10 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 16 17
          | 1 => cyclicMergeWitness18OfNat 33 16
          | 2 => cyclicMergeWitness18OfNat 18 2
          | 5 => cyclicMergeWitness18OfNat 27 5
          | 11 => cyclicMergeWitness18OfNat 30 11
          | 13 => cyclicMergeWitness18OfNat 26 13
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 11 16
          | 17 => cyclicMergeWitness18OfNat 11 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 16
          | 1 => cyclicMergeWitness18OfNat 23 17
          | 2 => cyclicMergeWitness18OfNat 28 2
          | 4 => cyclicMergeWitness18OfNat 31 2
          | 10 => cyclicMergeWitness18OfNat 25 10
          | 13 => cyclicMergeWitness18OfNat 17 13
          | 14 => cyclicMergeWitness18OfNat 33 14
          | 15 => cyclicMergeWitness18OfNat 16 15
          | 16 => cyclicMergeWitness18OfNat 12 16
          | 17 => cyclicMergeWitness18OfNat 12 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 17 17
          | 1 => cyclicMergeWitness18OfNat 30 16
          | 2 => cyclicMergeWitness18OfNat 21 2
          | 5 => cyclicMergeWitness18OfNat 32 5
          | 8 => cyclicMergeWitness18OfNat 32 8
          | 11 => cyclicMergeWitness18OfNat 20 11
          | 13 => cyclicMergeWitness18OfNat 33 13
          | 14 => cyclicMergeWitness18OfNat 13 14
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 23 16
          | 17 => cyclicMergeWitness18OfNat 13 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 15
          | 1 => cyclicMergeWitness18OfNat 23 16
          | 2 => cyclicMergeWitness18OfNat 14 2
          | 3 => cyclicMergeWitness18OfNat 33 17
          | 5 => cyclicMergeWitness18OfNat 22 5
          | 8 => cyclicMergeWitness18OfNat 32 8
          | 11 => cyclicMergeWitness18OfNat 32 11
          | 14 => cyclicMergeWitness18OfNat 21 14
          | 15 => cyclicMergeWitness18OfNat 31 15
          | 16 => cyclicMergeWitness18OfNat 18 16
          | 17 => cyclicMergeWitness18OfNat 14 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 15 0
          | 1 => cyclicMergeWitness18OfNat 25 17
          | 3 => cyclicMergeWitness18OfNat 24 0
          | 6 => cyclicMergeWitness18OfNat 24 0
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 11 => cyclicMergeWitness18OfNat 27 16
          | 12 => cyclicMergeWitness18OfNat 15 12
          | 13 => cyclicMergeWitness18OfNat 31 15
          | 14 => cyclicMergeWitness18OfNat 31 16
          | 15 => cyclicMergeWitness18OfNat 15 15
          | 16 => cyclicMergeWitness18OfNat 30 15
          | 17 => cyclicMergeWitness18OfNat 30 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 4 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 6 0
          | 3 => cyclicMergeWitness18OfNat 6 3
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 4 0
          | 3 => cyclicMergeWitness18OfNat 4 0
          | 6 => cyclicMergeWitness18OfNat 6 3
          | 15 => cyclicMergeWitness18OfNat 6 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 8 17
          | 2 => cyclicMergeWitness18OfNat 8 2
          | 3 => cyclicMergeWitness18OfNat 8 2
          | 17 => cyclicMergeWitness18OfNat 8 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 6 0
          | 3 => cyclicMergeWitness18OfNat 6 3
          | 6 => cyclicMergeWitness18OfNat 9 3
          | 15 => cyclicMergeWitness18OfNat 9 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 4 0
          | 3 => cyclicMergeWitness18OfNat 6 3
          | 6 => cyclicMergeWitness18OfNat 9 3
          | 12 => cyclicMergeWitness18OfNat 9 15
          | 15 => cyclicMergeWitness18OfNat 6 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 11 17
          | 1 => cyclicMergeWitness18OfNat 12 1
          | 2 => cyclicMergeWitness18OfNat 8 2
          | 3 => cyclicMergeWitness18OfNat 11 2
          | 5 => cyclicMergeWitness18OfNat 14 5
          | 14 => cyclicMergeWitness18OfNat 13 14
          | 16 => cyclicMergeWitness18OfNat 12 16
          | 17 => cyclicMergeWitness18OfNat 8 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 6 0
          | 3 => cyclicMergeWitness18OfNat 6 3
          | 6 => cyclicMergeWitness18OfNat 9 3
          | 9 => cyclicMergeWitness18OfNat 15 3
          | 12 => cyclicMergeWitness18OfNat 15 12
          | 15 => cyclicMergeWitness18OfNat 9 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 17
          | 1 => cyclicMergeWitness18OfNat 12 1
          | 2 => cyclicMergeWitness18OfNat 11 2
          | 3 => cyclicMergeWitness18OfNat 23 2
          | 4 => cyclicMergeWitness18OfNat 23 2
          | 5 => cyclicMergeWitness18OfNat 18 5
          | 13 => cyclicMergeWitness18OfNat 17 13
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 23 14
          | 16 => cyclicMergeWitness18OfNat 12 16
          | 17 => cyclicMergeWitness18OfNat 11 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 19 17
          | 1 => cyclicMergeWitness18OfNat 19 1
          | 2 => cyclicMergeWitness18OfNat 8 2
          | 3 => cyclicMergeWitness18OfNat 19 2
          | 5 => cyclicMergeWitness18OfNat 14 5
          | 8 => cyclicMergeWitness18OfNat 22 8
          | 11 => cyclicMergeWitness18OfNat 20 11
          | 14 => cyclicMergeWitness18OfNat 13 14
          | 16 => cyclicMergeWitness18OfNat 19 16
          | 17 => cyclicMergeWitness18OfNat 8 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 9 0
          | 3 => cyclicMergeWitness18OfNat 9 3
          | 6 => cyclicMergeWitness18OfNat 15 3
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 12 => cyclicMergeWitness18OfNat 15 12
          | 15 => cyclicMergeWitness18OfNat 9 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 17
          | 1 => cyclicMergeWitness18OfNat 16 1
          | 2 => cyclicMergeWitness18OfNat 23 2
          | 3 => cyclicMergeWitness18OfNat 23 2
          | 4 => cyclicMergeWitness18OfNat 33 2
          | 5 => cyclicMergeWitness18OfNat 31 5
          | 12 => cyclicMergeWitness18OfNat 30 11
          | 13 => cyclicMergeWitness18OfNat 33 13
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 23 14
          | 16 => cyclicMergeWitness18OfNat 16 16
          | 17 => cyclicMergeWitness18OfNat 23 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 33 17
          | 1 => cyclicMergeWitness18OfNat 19 1
          | 2 => cyclicMergeWitness18OfNat 11 2
          | 3 => cyclicMergeWitness18OfNat 33 2
          | 4 => cyclicMergeWitness18OfNat 33 1
          | 5 => cyclicMergeWitness18OfNat 18 5
          | 8 => cyclicMergeWitness18OfNat 27 8
          | 11 => cyclicMergeWitness18OfNat 30 11
          | 13 => cyclicMergeWitness18OfNat 26 13
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 33 14
          | 16 => cyclicMergeWitness18OfNat 19 16
          | 17 => cyclicMergeWitness18OfNat 11 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 33 16
          | 1 => cyclicMergeWitness18OfNat 12 1
          | 2 => cyclicMergeWitness18OfNat 19 2
          | 3 => cyclicMergeWitness18OfNat 33 1
          | 4 => cyclicMergeWitness18OfNat 23 2
          | 5 => cyclicMergeWitness18OfNat 28 5
          | 7 => cyclicMergeWitness18OfNat 31 5
          | 10 => cyclicMergeWitness18OfNat 25 10
          | 13 => cyclicMergeWitness18OfNat 17 13
          | 14 => cyclicMergeWitness18OfNat 33 14
          | 15 => cyclicMergeWitness18OfNat 33 13
          | 16 => cyclicMergeWitness18OfNat 12 16
          | 17 => cyclicMergeWitness18OfNat 19 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 26 17
          | 1 => cyclicMergeWitness18OfNat 33 1
          | 2 => cyclicMergeWitness18OfNat 13 2
          | 3 => cyclicMergeWitness18OfNat 26 2
          | 5 => cyclicMergeWitness18OfNat 21 5
          | 8 => cyclicMergeWitness18OfNat 32 8
          | 11 => cyclicMergeWitness18OfNat 20 11
          | 14 => cyclicMergeWitness18OfNat 13 14
          | 16 => cyclicMergeWitness18OfNat 33 16
          | 17 => cyclicMergeWitness18OfNat 13 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 33 14
          | 1 => cyclicMergeWitness18OfNat 28 1
          | 2 => cyclicMergeWitness18OfNat 14 2
          | 3 => cyclicMergeWitness18OfNat 33 17
          | 5 => cyclicMergeWitness18OfNat 14 5
          | 8 => cyclicMergeWitness18OfNat 22 8
          | 11 => cyclicMergeWitness18OfNat 32 11
          | 14 => cyclicMergeWitness18OfNat 21 14
          | 16 => cyclicMergeWitness18OfNat 28 16
          | 17 => cyclicMergeWitness18OfNat 14 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 15 0
          | 3 => cyclicMergeWitness18OfNat 15 3
          | 6 => cyclicMergeWitness18OfNat 24 0
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 12 => cyclicMergeWitness18OfNat 15 12
          | 15 => cyclicMergeWitness18OfNat 15 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 5 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 5 0
          | 1 => cyclicMergeWitness18OfNat 5 0
          | 2 => cyclicMergeWitness18OfNat 5 0
          | 3 => cyclicMergeWitness18OfNat 7 0
          | 17 => cyclicMergeWitness18OfNat 7 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 7 17
          | 1 => cyclicMergeWitness18OfNat 5 0
          | 2 => cyclicMergeWitness18OfNat 7 0
          | 4 => cyclicMergeWitness18OfNat 8 0
          | 16 => cyclicMergeWitness18OfNat 8 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 5 0
          | 1 => cyclicMergeWitness18OfNat 5 0
          | 2 => cyclicMergeWitness18OfNat 7 0
          | 3 => cyclicMergeWitness18OfNat 10 0
          | 16 => cyclicMergeWitness18OfNat 10 16
          | 17 => cyclicMergeWitness18OfNat 7 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 7 17
          | 1 => cyclicMergeWitness18OfNat 5 0
          | 2 => cyclicMergeWitness18OfNat 7 0
          | 3 => cyclicMergeWitness18OfNat 10 0
          | 4 => cyclicMergeWitness18OfNat 13 0
          | 16 => cyclicMergeWitness18OfNat 14 0
          | 17 => cyclicMergeWitness18OfNat 10 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 11 17
          | 1 => cyclicMergeWitness18OfNat 8 0
          | 2 => cyclicMergeWitness18OfNat 12 0
          | 4 => cyclicMergeWitness18OfNat 13 0
          | 13 => cyclicMergeWitness18OfNat 14 0
          | 15 => cyclicMergeWitness18OfNat 11 17
          | 16 => cyclicMergeWitness18OfNat 8 0
          | 17 => cyclicMergeWitness18OfNat 12 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 5 0
          | 1 => cyclicMergeWitness18OfNat 7 0
          | 2 => cyclicMergeWitness18OfNat 10 0
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 10 16
          | 17 => cyclicMergeWitness18OfNat 7 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 11 17
          | 1 => cyclicMergeWitness18OfNat 8 0
          | 2 => cyclicMergeWitness18OfNat 12 0
          | 3 => cyclicMergeWitness18OfNat 23 17
          | 4 => cyclicMergeWitness18OfNat 13 0
          | 5 => cyclicMergeWitness18OfNat 17 0
          | 7 => cyclicMergeWitness18OfNat 20 0
          | 13 => cyclicMergeWitness18OfNat 22 0
          | 15 => cyclicMergeWitness18OfNat 18 17
          | 16 => cyclicMergeWitness18OfNat 14 0
          | 17 => cyclicMergeWitness18OfNat 23 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 7 0
          | 1 => cyclicMergeWitness18OfNat 10 0
          | 2 => cyclicMergeWitness18OfNat 23 0
          | 3 => cyclicMergeWitness18OfNat 33 0
          | 14 => cyclicMergeWitness18OfNat 33 14
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 10 16
          | 17 => cyclicMergeWitness18OfNat 7 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 8 0
          | 1 => cyclicMergeWitness18OfNat 12 0
          | 2 => cyclicMergeWitness18OfNat 23 17
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 4 => cyclicMergeWitness18OfNat 33 0
          | 6 => cyclicMergeWitness18OfNat 29 0
          | 12 => cyclicMergeWitness18OfNat 29 12
          | 14 => cyclicMergeWitness18OfNat 33 14
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 23 16
          | 17 => cyclicMergeWitness18OfNat 11 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 17
          | 1 => cyclicMergeWitness18OfNat 13 0
          | 2 => cyclicMergeWitness18OfNat 17 0
          | 3 => cyclicMergeWitness18OfNat 30 17
          | 4 => cyclicMergeWitness18OfNat 20 0
          | 5 => cyclicMergeWitness18OfNat 25 0
          | 7 => cyclicMergeWitness18OfNat 32 0
          | 10 => cyclicMergeWitness18OfNat 32 0
          | 12 => cyclicMergeWitness18OfNat 27 17
          | 13 => cyclicMergeWitness18OfNat 22 0
          | 14 => cyclicMergeWitness18OfNat 31 16
          | 15 => cyclicMergeWitness18OfNat 18 17
          | 16 => cyclicMergeWitness18OfNat 14 0
          | 17 => cyclicMergeWitness18OfNat 23 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 6 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 6 0
          | 1 => cyclicMergeWitness18OfNat 8 17
          | 3 => cyclicMergeWitness18OfNat 9 0
          | 15 => cyclicMergeWitness18OfNat 9 15
          | 17 => cyclicMergeWitness18OfNat 8 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 6 0
          | 3 => cyclicMergeWitness18OfNat 6 0
          | 6 => cyclicMergeWitness18OfNat 9 0
          | 12 => cyclicMergeWitness18OfNat 9 15
          | 15 => cyclicMergeWitness18OfNat 6 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 8 17
          | 1 => cyclicMergeWitness18OfNat 11 17
          | 2 => cyclicMergeWitness18OfNat 14 2
          | 3 => cyclicMergeWitness18OfNat 14 2
          | 14 => cyclicMergeWitness18OfNat 13 14
          | 15 => cyclicMergeWitness18OfNat 13 14
          | 16 => cyclicMergeWitness18OfNat 12 16
          | 17 => cyclicMergeWitness18OfNat 8 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 6 0
          | 1 => cyclicMergeWitness18OfNat 11 17
          | 3 => cyclicMergeWitness18OfNat 9 0
          | 6 => cyclicMergeWitness18OfNat 15 0
          | 12 => cyclicMergeWitness18OfNat 15 12
          | 15 => cyclicMergeWitness18OfNat 9 15
          | 17 => cyclicMergeWitness18OfNat 12 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 6 0
          | 3 => cyclicMergeWitness18OfNat 9 0
          | 6 => cyclicMergeWitness18OfNat 15 0
          | 9 => cyclicMergeWitness18OfNat 15 12
          | 12 => cyclicMergeWitness18OfNat 9 15
          | 15 => cyclicMergeWitness18OfNat 6 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 11 17
          | 1 => cyclicMergeWitness18OfNat 23 17
          | 2 => cyclicMergeWitness18OfNat 14 2
          | 3 => cyclicMergeWitness18OfNat 18 2
          | 5 => cyclicMergeWitness18OfNat 22 5
          | 11 => cyclicMergeWitness18OfNat 20 11
          | 13 => cyclicMergeWitness18OfNat 17 13
          | 14 => cyclicMergeWitness18OfNat 13 14
          | 15 => cyclicMergeWitness18OfNat 23 14
          | 16 => cyclicMergeWitness18OfNat 12 16
          | 17 => cyclicMergeWitness18OfNat 8 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 6 0
          | 1 => cyclicMergeWitness18OfNat 19 17
          | 3 => cyclicMergeWitness18OfNat 9 0
          | 6 => cyclicMergeWitness18OfNat 15 0
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 12 => cyclicMergeWitness18OfNat 15 12
          | 15 => cyclicMergeWitness18OfNat 9 15
          | 17 => cyclicMergeWitness18OfNat 19 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 17
          | 1 => cyclicMergeWitness18OfNat 23 17
          | 2 => cyclicMergeWitness18OfNat 18 2
          | 3 => cyclicMergeWitness18OfNat 31 2
          | 4 => cyclicMergeWitness18OfNat 31 2
          | 5 => cyclicMergeWitness18OfNat 27 5
          | 10 => cyclicMergeWitness18OfNat 25 10
          | 11 => cyclicMergeWitness18OfNat 30 11
          | 12 => cyclicMergeWitness18OfNat 30 11
          | 13 => cyclicMergeWitness18OfNat 17 13
          | 14 => cyclicMergeWitness18OfNat 23 14
          | 15 => cyclicMergeWitness18OfNat 23 14
          | 16 => cyclicMergeWitness18OfNat 12 16
          | 17 => cyclicMergeWitness18OfNat 11 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 19 17
          | 1 => cyclicMergeWitness18OfNat 33 16
          | 2 => cyclicMergeWitness18OfNat 14 2
          | 3 => cyclicMergeWitness18OfNat 28 2
          | 5 => cyclicMergeWitness18OfNat 22 5
          | 8 => cyclicMergeWitness18OfNat 32 8
          | 11 => cyclicMergeWitness18OfNat 20 11
          | 13 => cyclicMergeWitness18OfNat 26 13
          | 14 => cyclicMergeWitness18OfNat 13 14
          | 15 => cyclicMergeWitness18OfNat 33 14
          | 16 => cyclicMergeWitness18OfNat 19 16
          | 17 => cyclicMergeWitness18OfNat 8 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 9 0
          | 1 => cyclicMergeWitness18OfNat 26 17
          | 3 => cyclicMergeWitness18OfNat 15 0
          | 6 => cyclicMergeWitness18OfNat 24 0
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 12 => cyclicMergeWitness18OfNat 15 12
          | 14 => cyclicMergeWitness18OfNat 28 16
          | 15 => cyclicMergeWitness18OfNat 9 15
          | 16 => cyclicMergeWitness18OfNat 33 14
          | 17 => cyclicMergeWitness18OfNat 33 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 7 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 7 0
          | 1 => cyclicMergeWitness18OfNat 7 0
          | 2 => cyclicMergeWitness18OfNat 7 0
          | 3 => cyclicMergeWitness18OfNat 7 0
          | 4 => cyclicMergeWitness18OfNat 10 0
          | 17 => cyclicMergeWitness18OfNat 10 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 10 17
          | 1 => cyclicMergeWitness18OfNat 7 0
          | 2 => cyclicMergeWitness18OfNat 7 0
          | 3 => cyclicMergeWitness18OfNat 10 0
          | 4 => cyclicMergeWitness18OfNat 11 0
          | 5 => cyclicMergeWitness18OfNat 12 0
          | 16 => cyclicMergeWitness18OfNat 11 0
          | 17 => cyclicMergeWitness18OfNat 12 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 7 0
          | 1 => cyclicMergeWitness18OfNat 7 0
          | 2 => cyclicMergeWitness18OfNat 7 0
          | 3 => cyclicMergeWitness18OfNat 10 0
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 16 => cyclicMergeWitness18OfNat 23 16
          | 17 => cyclicMergeWitness18OfNat 10 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 10 17
          | 1 => cyclicMergeWitness18OfNat 7 0
          | 2 => cyclicMergeWitness18OfNat 7 0
          | 3 => cyclicMergeWitness18OfNat 10 0
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 5 => cyclicMergeWitness18OfNat 17 0
          | 16 => cyclicMergeWitness18OfNat 18 0
          | 17 => cyclicMergeWitness18OfNat 23 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 17
          | 1 => cyclicMergeWitness18OfNat 11 0
          | 2 => cyclicMergeWitness18OfNat 12 0
          | 3 => cyclicMergeWitness18OfNat 23 17
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 5 => cyclicMergeWitness18OfNat 17 0
          | 13 => cyclicMergeWitness18OfNat 18 0
          | 14 => cyclicMergeWitness18OfNat 23 16
          | 15 => cyclicMergeWitness18OfNat 23 17
          | 16 => cyclicMergeWitness18OfNat 11 0
          | 17 => cyclicMergeWitness18OfNat 12 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 7 0
          | 1 => cyclicMergeWitness18OfNat 7 0
          | 2 => cyclicMergeWitness18OfNat 10 0
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 4 => cyclicMergeWitness18OfNat 33 0
          | 15 => cyclicMergeWitness18OfNat 33 15
          | 16 => cyclicMergeWitness18OfNat 23 16
          | 17 => cyclicMergeWitness18OfNat 10 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 17
          | 1 => cyclicMergeWitness18OfNat 11 0
          | 2 => cyclicMergeWitness18OfNat 12 0
          | 3 => cyclicMergeWitness18OfNat 23 17
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 5 => cyclicMergeWitness18OfNat 17 0
          | 6 => cyclicMergeWitness18OfNat 30 17
          | 7 => cyclicMergeWitness18OfNat 30 0
          | 8 => cyclicMergeWitness18OfNat 25 0
          | 13 => cyclicMergeWitness18OfNat 27 0
          | 14 => cyclicMergeWitness18OfNat 31 16
          | 15 => cyclicMergeWitness18OfNat 31 17
          | 16 => cyclicMergeWitness18OfNat 18 0
          | 17 => cyclicMergeWitness18OfNat 23 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 8 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 8 0
          | 1 => cyclicMergeWitness18OfNat 8 0
          | 2 => cyclicMergeWitness18OfNat 8 0
          | 3 => cyclicMergeWitness18OfNat 11 0
          | 4 => cyclicMergeWitness18OfNat 13 0
          | 16 => cyclicMergeWitness18OfNat 14 0
          | 17 => cyclicMergeWitness18OfNat 12 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 12 17
          | 1 => cyclicMergeWitness18OfNat 8 0
          | 2 => cyclicMergeWitness18OfNat 11 0
          | 4 => cyclicMergeWitness18OfNat 8 0
          | 7 => cyclicMergeWitness18OfNat 13 0
          | 13 => cyclicMergeWitness18OfNat 14 0
          | 16 => cyclicMergeWitness18OfNat 8 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 8 0
          | 1 => cyclicMergeWitness18OfNat 8 0
          | 2 => cyclicMergeWitness18OfNat 11 0
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 23 15
          | 17 => cyclicMergeWitness18OfNat 12 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 12 17
          | 1 => cyclicMergeWitness18OfNat 8 0
          | 2 => cyclicMergeWitness18OfNat 11 0
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 4 => cyclicMergeWitness18OfNat 13 0
          | 7 => cyclicMergeWitness18OfNat 20 0
          | 13 => cyclicMergeWitness18OfNat 22 0
          | 16 => cyclicMergeWitness18OfNat 14 0
          | 17 => cyclicMergeWitness18OfNat 23 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 19 17
          | 1 => cyclicMergeWitness18OfNat 8 0
          | 2 => cyclicMergeWitness18OfNat 19 0
          | 4 => cyclicMergeWitness18OfNat 13 0
          | 7 => cyclicMergeWitness18OfNat 20 0
          | 10 => cyclicMergeWitness18OfNat 22 0
          | 13 => cyclicMergeWitness18OfNat 14 0
          | 15 => cyclicMergeWitness18OfNat 19 17
          | 16 => cyclicMergeWitness18OfNat 8 0
          | 17 => cyclicMergeWitness18OfNat 19 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 8 0
          | 1 => cyclicMergeWitness18OfNat 11 0
          | 2 => cyclicMergeWitness18OfNat 23 0
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 4 => cyclicMergeWitness18OfNat 33 0
          | 6 => cyclicMergeWitness18OfNat 29 0
          | 12 => cyclicMergeWitness18OfNat 29 12
          | 14 => cyclicMergeWitness18OfNat 33 14
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 23 15
          | 17 => cyclicMergeWitness18OfNat 12 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 19 17
          | 1 => cyclicMergeWitness18OfNat 8 0
          | 2 => cyclicMergeWitness18OfNat 19 0
          | 3 => cyclicMergeWitness18OfNat 33 17
          | 4 => cyclicMergeWitness18OfNat 13 0
          | 5 => cyclicMergeWitness18OfNat 26 0
          | 7 => cyclicMergeWitness18OfNat 20 0
          | 10 => cyclicMergeWitness18OfNat 32 0
          | 13 => cyclicMergeWitness18OfNat 22 0
          | 15 => cyclicMergeWitness18OfNat 28 17
          | 16 => cyclicMergeWitness18OfNat 14 0
          | 17 => cyclicMergeWitness18OfNat 33 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 9 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 9 0
          | 1 => cyclicMergeWitness18OfNat 13 17
          | 2 => cyclicMergeWitness18OfNat 14 2
          | 3 => cyclicMergeWitness18OfNat 9 0
          | 4 => cyclicMergeWitness18OfNat 14 2
          | 6 => cyclicMergeWitness18OfNat 15 0
          | 15 => cyclicMergeWitness18OfNat 15 15
          | 17 => cyclicMergeWitness18OfNat 13 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 9 0
          | 3 => cyclicMergeWitness18OfNat 9 0
          | 6 => cyclicMergeWitness18OfNat 9 0
          | 9 => cyclicMergeWitness18OfNat 15 0
          | 12 => cyclicMergeWitness18OfNat 15 15
          | 15 => cyclicMergeWitness18OfNat 9 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 13 17
          | 1 => cyclicMergeWitness18OfNat 23 17
          | 2 => cyclicMergeWitness18OfNat 14 2
          | 3 => cyclicMergeWitness18OfNat 14 2
          | 4 => cyclicMergeWitness18OfNat 18 2
          | 5 => cyclicMergeWitness18OfNat 22 5
          | 6 => cyclicMergeWitness18OfNat 22 5
          | 14 => cyclicMergeWitness18OfNat 20 14
          | 15 => cyclicMergeWitness18OfNat 20 14
          | 16 => cyclicMergeWitness18OfNat 17 16
          | 17 => cyclicMergeWitness18OfNat 13 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 9 0
          | 1 => cyclicMergeWitness18OfNat 23 17
          | 2 => cyclicMergeWitness18OfNat 23 17
          | 3 => cyclicMergeWitness18OfNat 9 0
          | 4 => cyclicMergeWitness18OfNat 18 2
          | 6 => cyclicMergeWitness18OfNat 15 0
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 12 => cyclicMergeWitness18OfNat 24 0
          | 15 => cyclicMergeWitness18OfNat 15 15
          | 17 => cyclicMergeWitness18OfNat 17 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 9 0
          | 3 => cyclicMergeWitness18OfNat 9 0
          | 6 => cyclicMergeWitness18OfNat 15 0
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 12 => cyclicMergeWitness18OfNat 15 15
          | 15 => cyclicMergeWitness18OfNat 9 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 17
          | 1 => cyclicMergeWitness18OfNat 23 17
          | 2 => cyclicMergeWitness18OfNat 14 2
          | 3 => cyclicMergeWitness18OfNat 18 2
          | 4 => cyclicMergeWitness18OfNat 31 2
          | 5 => cyclicMergeWitness18OfNat 22 5
          | 6 => cyclicMergeWitness18OfNat 27 5
          | 8 => cyclicMergeWitness18OfNat 32 8
          | 11 => cyclicMergeWitness18OfNat 32 11
          | 13 => cyclicMergeWitness18OfNat 25 13
          | 14 => cyclicMergeWitness18OfNat 20 14
          | 15 => cyclicMergeWitness18OfNat 30 14
          | 16 => cyclicMergeWitness18OfNat 17 16
          | 17 => cyclicMergeWitness18OfNat 13 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 9 0
          | 1 => cyclicMergeWitness18OfNat 33 17
          | 2 => cyclicMergeWitness18OfNat 33 16
          | 3 => cyclicMergeWitness18OfNat 9 0
          | 4 => cyclicMergeWitness18OfNat 28 2
          | 6 => cyclicMergeWitness18OfNat 15 0
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 12 => cyclicMergeWitness18OfNat 24 0
          | 15 => cyclicMergeWitness18OfNat 15 15
          | 17 => cyclicMergeWitness18OfNat 26 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 10 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 10 0
          | 1 => cyclicMergeWitness18OfNat 10 0
          | 2 => cyclicMergeWitness18OfNat 10 0
          | 3 => cyclicMergeWitness18OfNat 10 0
          | 4 => cyclicMergeWitness18OfNat 10 0
          | 5 => cyclicMergeWitness18OfNat 23 0
          | 17 => cyclicMergeWitness18OfNat 23 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 17
          | 1 => cyclicMergeWitness18OfNat 10 0
          | 2 => cyclicMergeWitness18OfNat 10 0
          | 3 => cyclicMergeWitness18OfNat 10 0
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 5 => cyclicMergeWitness18OfNat 16 0
          | 6 => cyclicMergeWitness18OfNat 23 17
          | 16 => cyclicMergeWitness18OfNat 23 0
          | 17 => cyclicMergeWitness18OfNat 16 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 10 0
          | 1 => cyclicMergeWitness18OfNat 10 0
          | 2 => cyclicMergeWitness18OfNat 10 0
          | 3 => cyclicMergeWitness18OfNat 10 0
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 5 => cyclicMergeWitness18OfNat 33 0
          | 16 => cyclicMergeWitness18OfNat 33 16
          | 17 => cyclicMergeWitness18OfNat 23 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 17
          | 1 => cyclicMergeWitness18OfNat 10 0
          | 2 => cyclicMergeWitness18OfNat 10 0
          | 3 => cyclicMergeWitness18OfNat 10 0
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 5 => cyclicMergeWitness18OfNat 33 0
          | 6 => cyclicMergeWitness18OfNat 30 17
          | 16 => cyclicMergeWitness18OfNat 31 0
          | 17 => cyclicMergeWitness18OfNat 33 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 17
          | 1 => cyclicMergeWitness18OfNat 23 0
          | 2 => cyclicMergeWitness18OfNat 16 0
          | 3 => cyclicMergeWitness18OfNat 23 17
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 5 => cyclicMergeWitness18OfNat 33 0
          | 6 => cyclicMergeWitness18OfNat 30 17
          | 13 => cyclicMergeWitness18OfNat 31 0
          | 14 => cyclicMergeWitness18OfNat 33 16
          | 15 => cyclicMergeWitness18OfNat 23 17
          | 16 => cyclicMergeWitness18OfNat 23 0
          | 17 => cyclicMergeWitness18OfNat 16 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 11 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 11 0
          | 1 => cyclicMergeWitness18OfNat 11 0
          | 2 => cyclicMergeWitness18OfNat 11 0
          | 3 => cyclicMergeWitness18OfNat 11 0
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 16 => cyclicMergeWitness18OfNat 18 0
          | 17 => cyclicMergeWitness18OfNat 16 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 16 17
          | 1 => cyclicMergeWitness18OfNat 11 0
          | 2 => cyclicMergeWitness18OfNat 11 0
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 4 => cyclicMergeWitness18OfNat 11 0
          | 5 => cyclicMergeWitness18OfNat 19 0
          | 7 => cyclicMergeWitness18OfNat 23 0
          | 13 => cyclicMergeWitness18OfNat 18 0
          | 16 => cyclicMergeWitness18OfNat 11 0
          | 17 => cyclicMergeWitness18OfNat 19 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 11 0
          | 1 => cyclicMergeWitness18OfNat 11 0
          | 2 => cyclicMergeWitness18OfNat 11 0
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 15 => cyclicMergeWitness18OfNat 33 15
          | 16 => cyclicMergeWitness18OfNat 33 15
          | 17 => cyclicMergeWitness18OfNat 16 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 16 17
          | 1 => cyclicMergeWitness18OfNat 11 0
          | 2 => cyclicMergeWitness18OfNat 11 0
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 5 => cyclicMergeWitness18OfNat 26 0
          | 7 => cyclicMergeWitness18OfNat 30 0
          | 13 => cyclicMergeWitness18OfNat 27 0
          | 16 => cyclicMergeWitness18OfNat 18 0
          | 17 => cyclicMergeWitness18OfNat 33 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 33 17
          | 1 => cyclicMergeWitness18OfNat 11 0
          | 2 => cyclicMergeWitness18OfNat 19 0
          | 3 => cyclicMergeWitness18OfNat 33 17
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 5 => cyclicMergeWitness18OfNat 26 0
          | 7 => cyclicMergeWitness18OfNat 30 0
          | 10 => cyclicMergeWitness18OfNat 27 0
          | 13 => cyclicMergeWitness18OfNat 18 0
          | 14 => cyclicMergeWitness18OfNat 33 15
          | 15 => cyclicMergeWitness18OfNat 33 17
          | 16 => cyclicMergeWitness18OfNat 11 0
          | 17 => cyclicMergeWitness18OfNat 19 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 12 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 12 0
          | 1 => cyclicMergeWitness18OfNat 12 0
          | 2 => cyclicMergeWitness18OfNat 12 0
          | 3 => cyclicMergeWitness18OfNat 12 0
          | 4 => cyclicMergeWitness18OfNat 16 0
          | 5 => cyclicMergeWitness18OfNat 17 0
          | 17 => cyclicMergeWitness18OfNat 23 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 16
          | 1 => cyclicMergeWitness18OfNat 12 0
          | 2 => cyclicMergeWitness18OfNat 12 0
          | 3 => cyclicMergeWitness18OfNat 16 0
          | 4 => cyclicMergeWitness18OfNat 19 0
          | 5 => cyclicMergeWitness18OfNat 12 0
          | 8 => cyclicMergeWitness18OfNat 17 0
          | 14 => cyclicMergeWitness18OfNat 23 16
          | 16 => cyclicMergeWitness18OfNat 19 0
          | 17 => cyclicMergeWitness18OfNat 12 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 12 0
          | 1 => cyclicMergeWitness18OfNat 12 0
          | 2 => cyclicMergeWitness18OfNat 12 0
          | 3 => cyclicMergeWitness18OfNat 16 0
          | 4 => cyclicMergeWitness18OfNat 33 0
          | 5 => cyclicMergeWitness18OfNat 33 0
          | 16 => cyclicMergeWitness18OfNat 23 16
          | 17 => cyclicMergeWitness18OfNat 23 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 16
          | 1 => cyclicMergeWitness18OfNat 12 0
          | 2 => cyclicMergeWitness18OfNat 12 0
          | 3 => cyclicMergeWitness18OfNat 16 0
          | 4 => cyclicMergeWitness18OfNat 33 0
          | 5 => cyclicMergeWitness18OfNat 17 0
          | 8 => cyclicMergeWitness18OfNat 25 0
          | 14 => cyclicMergeWitness18OfNat 31 16
          | 16 => cyclicMergeWitness18OfNat 28 0
          | 17 => cyclicMergeWitness18OfNat 23 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 33 16
          | 1 => cyclicMergeWitness18OfNat 19 0
          | 2 => cyclicMergeWitness18OfNat 12 0
          | 3 => cyclicMergeWitness18OfNat 33 16
          | 4 => cyclicMergeWitness18OfNat 33 0
          | 5 => cyclicMergeWitness18OfNat 17 0
          | 8 => cyclicMergeWitness18OfNat 25 0
          | 11 => cyclicMergeWitness18OfNat 31 16
          | 13 => cyclicMergeWitness18OfNat 28 0
          | 14 => cyclicMergeWitness18OfNat 23 16
          | 15 => cyclicMergeWitness18OfNat 33 16
          | 16 => cyclicMergeWitness18OfNat 19 0
          | 17 => cyclicMergeWitness18OfNat 12 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 13 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 13 0
          | 1 => cyclicMergeWitness18OfNat 13 0
          | 2 => cyclicMergeWitness18OfNat 13 0
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 4 => cyclicMergeWitness18OfNat 13 0
          | 5 => cyclicMergeWitness18OfNat 23 0
          | 7 => cyclicMergeWitness18OfNat 20 0
          | 16 => cyclicMergeWitness18OfNat 21 0
          | 17 => cyclicMergeWitness18OfNat 17 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 17 17
          | 1 => cyclicMergeWitness18OfNat 13 0
          | 2 => cyclicMergeWitness18OfNat 23 0
          | 4 => cyclicMergeWitness18OfNat 13 0
          | 7 => cyclicMergeWitness18OfNat 13 0
          | 10 => cyclicMergeWitness18OfNat 20 0
          | 13 => cyclicMergeWitness18OfNat 21 0
          | 16 => cyclicMergeWitness18OfNat 13 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 13 0
          | 1 => cyclicMergeWitness18OfNat 13 0
          | 2 => cyclicMergeWitness18OfNat 23 0
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 5 => cyclicMergeWitness18OfNat 33 0
          | 6 => cyclicMergeWitness18OfNat 29 0
          | 7 => cyclicMergeWitness18OfNat 29 0
          | 15 => cyclicMergeWitness18OfNat 30 15
          | 16 => cyclicMergeWitness18OfNat 30 15
          | 17 => cyclicMergeWitness18OfNat 17 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 17 17
          | 1 => cyclicMergeWitness18OfNat 13 0
          | 2 => cyclicMergeWitness18OfNat 23 0
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 4 => cyclicMergeWitness18OfNat 13 0
          | 5 => cyclicMergeWitness18OfNat 33 0
          | 7 => cyclicMergeWitness18OfNat 20 0
          | 10 => cyclicMergeWitness18OfNat 32 0
          | 13 => cyclicMergeWitness18OfNat 32 0
          | 16 => cyclicMergeWitness18OfNat 21 0
          | 17 => cyclicMergeWitness18OfNat 30 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 26 17
          | 1 => cyclicMergeWitness18OfNat 13 0
          | 2 => cyclicMergeWitness18OfNat 33 0
          | 4 => cyclicMergeWitness18OfNat 13 0
          | 7 => cyclicMergeWitness18OfNat 20 0
          | 10 => cyclicMergeWitness18OfNat 32 0
          | 13 => cyclicMergeWitness18OfNat 21 0
          | 15 => cyclicMergeWitness18OfNat 26 17
          | 16 => cyclicMergeWitness18OfNat 13 0
          | 17 => cyclicMergeWitness18OfNat 33 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 14 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 14 0
          | 1 => cyclicMergeWitness18OfNat 14 0
          | 2 => cyclicMergeWitness18OfNat 14 0
          | 3 => cyclicMergeWitness18OfNat 18 0
          | 4 => cyclicMergeWitness18OfNat 21 0
          | 13 => cyclicMergeWitness18OfNat 22 0
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 14 0
          | 17 => cyclicMergeWitness18OfNat 23 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 15
          | 1 => cyclicMergeWitness18OfNat 14 0
          | 2 => cyclicMergeWitness18OfNat 18 0
          | 4 => cyclicMergeWitness18OfNat 14 0
          | 7 => cyclicMergeWitness18OfNat 21 0
          | 10 => cyclicMergeWitness18OfNat 22 0
          | 13 => cyclicMergeWitness18OfNat 14 0
          | 16 => cyclicMergeWitness18OfNat 14 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 14 0
          | 1 => cyclicMergeWitness18OfNat 14 0
          | 2 => cyclicMergeWitness18OfNat 18 0
          | 3 => cyclicMergeWitness18OfNat 31 0
          | 4 => cyclicMergeWitness18OfNat 31 0
          | 12 => cyclicMergeWitness18OfNat 29 12
          | 13 => cyclicMergeWitness18OfNat 29 12
          | 14 => cyclicMergeWitness18OfNat 33 14
          | 15 => cyclicMergeWitness18OfNat 23 15
          | 16 => cyclicMergeWitness18OfNat 23 15
          | 17 => cyclicMergeWitness18OfNat 23 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 15
          | 1 => cyclicMergeWitness18OfNat 14 0
          | 2 => cyclicMergeWitness18OfNat 18 0
          | 3 => cyclicMergeWitness18OfNat 31 0
          | 4 => cyclicMergeWitness18OfNat 21 0
          | 7 => cyclicMergeWitness18OfNat 32 0
          | 10 => cyclicMergeWitness18OfNat 32 0
          | 13 => cyclicMergeWitness18OfNat 22 0
          | 15 => cyclicMergeWitness18OfNat 33 14
          | 16 => cyclicMergeWitness18OfNat 14 0
          | 17 => cyclicMergeWitness18OfNat 23 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 33 14
          | 1 => cyclicMergeWitness18OfNat 14 0
          | 2 => cyclicMergeWitness18OfNat 28 0
          | 4 => cyclicMergeWitness18OfNat 21 0
          | 7 => cyclicMergeWitness18OfNat 32 0
          | 10 => cyclicMergeWitness18OfNat 22 0
          | 13 => cyclicMergeWitness18OfNat 14 0
          | 15 => cyclicMergeWitness18OfNat 33 14
          | 16 => cyclicMergeWitness18OfNat 14 0
          | 17 => cyclicMergeWitness18OfNat 28 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 15 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 15 0
          | 1 => cyclicMergeWitness18OfNat 20 17
          | 2 => cyclicMergeWitness18OfNat 21 2
          | 3 => cyclicMergeWitness18OfNat 15 0
          | 4 => cyclicMergeWitness18OfNat 21 2
          | 5 => cyclicMergeWitness18OfNat 22 5
          | 6 => cyclicMergeWitness18OfNat 15 0
          | 7 => cyclicMergeWitness18OfNat 22 5
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 15 => cyclicMergeWitness18OfNat 24 0
          | 17 => cyclicMergeWitness18OfNat 20 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 15 0
          | 3 => cyclicMergeWitness18OfNat 15 0
          | 6 => cyclicMergeWitness18OfNat 15 0
          | 9 => cyclicMergeWitness18OfNat 15 0
          | 12 => cyclicMergeWitness18OfNat 24 0
          | 15 => cyclicMergeWitness18OfNat 15 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 20 17
          | 1 => cyclicMergeWitness18OfNat 30 17
          | 2 => cyclicMergeWitness18OfNat 21 2
          | 3 => cyclicMergeWitness18OfNat 21 2
          | 4 => cyclicMergeWitness18OfNat 31 2
          | 5 => cyclicMergeWitness18OfNat 22 5
          | 6 => cyclicMergeWitness18OfNat 22 5
          | 7 => cyclicMergeWitness18OfNat 27 5
          | 8 => cyclicMergeWitness18OfNat 32 8
          | 9 => cyclicMergeWitness18OfNat 32 8
          | 14 => cyclicMergeWitness18OfNat 32 14
          | 15 => cyclicMergeWitness18OfNat 32 14
          | 16 => cyclicMergeWitness18OfNat 25 16
          | 17 => cyclicMergeWitness18OfNat 20 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 15 0
          | 1 => cyclicMergeWitness18OfNat 30 17
          | 2 => cyclicMergeWitness18OfNat 30 17
          | 3 => cyclicMergeWitness18OfNat 15 0
          | 4 => cyclicMergeWitness18OfNat 31 2
          | 5 => cyclicMergeWitness18OfNat 31 2
          | 6 => cyclicMergeWitness18OfNat 15 0
          | 7 => cyclicMergeWitness18OfNat 27 5
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 12 => cyclicMergeWitness18OfNat 24 0
          | 15 => cyclicMergeWitness18OfNat 24 0
          | 17 => cyclicMergeWitness18OfNat 25 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 15 0
          | 3 => cyclicMergeWitness18OfNat 15 0
          | 6 => cyclicMergeWitness18OfNat 15 0
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 12 => cyclicMergeWitness18OfNat 24 0
          | 15 => cyclicMergeWitness18OfNat 15 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 16 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 16 0
          | 1 => cyclicMergeWitness18OfNat 16 0
          | 2 => cyclicMergeWitness18OfNat 16 0
          | 3 => cyclicMergeWitness18OfNat 16 0
          | 4 => cyclicMergeWitness18OfNat 16 0
          | 5 => cyclicMergeWitness18OfNat 33 0
          | 17 => cyclicMergeWitness18OfNat 33 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 33 16
          | 1 => cyclicMergeWitness18OfNat 16 0
          | 2 => cyclicMergeWitness18OfNat 16 0
          | 3 => cyclicMergeWitness18OfNat 16 0
          | 4 => cyclicMergeWitness18OfNat 33 0
          | 5 => cyclicMergeWitness18OfNat 16 0
          | 6 => cyclicMergeWitness18OfNat 33 16
          | 8 => cyclicMergeWitness18OfNat 33 0
          | 14 => cyclicMergeWitness18OfNat 33 16
          | 16 => cyclicMergeWitness18OfNat 33 0
          | 17 => cyclicMergeWitness18OfNat 16 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 17 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 17 0
          | 1 => cyclicMergeWitness18OfNat 17 0
          | 2 => cyclicMergeWitness18OfNat 17 0
          | 3 => cyclicMergeWitness18OfNat 17 0
          | 4 => cyclicMergeWitness18OfNat 33 0
          | 5 => cyclicMergeWitness18OfNat 17 0
          | 6 => cyclicMergeWitness18OfNat 33 0
          | 8 => cyclicMergeWitness18OfNat 25 0
          | 17 => cyclicMergeWitness18OfNat 30 16
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 30 16
          | 1 => cyclicMergeWitness18OfNat 17 0
          | 2 => cyclicMergeWitness18OfNat 17 0
          | 3 => cyclicMergeWitness18OfNat 33 0
          | 4 => cyclicMergeWitness18OfNat 26 0
          | 5 => cyclicMergeWitness18OfNat 17 0
          | 8 => cyclicMergeWitness18OfNat 17 0
          | 11 => cyclicMergeWitness18OfNat 25 0
          | 14 => cyclicMergeWitness18OfNat 30 16
          | 16 => cyclicMergeWitness18OfNat 26 0
          | 17 => cyclicMergeWitness18OfNat 17 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 18 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 18 0
          | 1 => cyclicMergeWitness18OfNat 18 0
          | 2 => cyclicMergeWitness18OfNat 18 0
          | 3 => cyclicMergeWitness18OfNat 18 0
          | 4 => cyclicMergeWitness18OfNat 31 0
          | 13 => cyclicMergeWitness18OfNat 27 0
          | 15 => cyclicMergeWitness18OfNat 33 15
          | 16 => cyclicMergeWitness18OfNat 18 0
          | 17 => cyclicMergeWitness18OfNat 33 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 33 15
          | 1 => cyclicMergeWitness18OfNat 18 0
          | 2 => cyclicMergeWitness18OfNat 18 0
          | 3 => cyclicMergeWitness18OfNat 31 0
          | 4 => cyclicMergeWitness18OfNat 18 0
          | 5 => cyclicMergeWitness18OfNat 28 0
          | 7 => cyclicMergeWitness18OfNat 31 0
          | 10 => cyclicMergeWitness18OfNat 27 0
          | 13 => cyclicMergeWitness18OfNat 18 0
          | 16 => cyclicMergeWitness18OfNat 18 0
          | 17 => cyclicMergeWitness18OfNat 28 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 19 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 19 0
          | 1 => cyclicMergeWitness18OfNat 19 0
          | 2 => cyclicMergeWitness18OfNat 19 0
          | 3 => cyclicMergeWitness18OfNat 19 0
          | 4 => cyclicMergeWitness18OfNat 33 0
          | 5 => cyclicMergeWitness18OfNat 26 0
          | 16 => cyclicMergeWitness18OfNat 28 0
          | 17 => cyclicMergeWitness18OfNat 33 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 33 15
          | 1 => cyclicMergeWitness18OfNat 19 0
          | 2 => cyclicMergeWitness18OfNat 19 0
          | 3 => cyclicMergeWitness18OfNat 33 0
          | 4 => cyclicMergeWitness18OfNat 19 0
          | 5 => cyclicMergeWitness18OfNat 19 0
          | 7 => cyclicMergeWitness18OfNat 33 0
          | 8 => cyclicMergeWitness18OfNat 26 0
          | 13 => cyclicMergeWitness18OfNat 28 0
          | 14 => cyclicMergeWitness18OfNat 33 15
          | 16 => cyclicMergeWitness18OfNat 19 0
          | 17 => cyclicMergeWitness18OfNat 19 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 20 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 20 0
          | 1 => cyclicMergeWitness18OfNat 20 0
          | 2 => cyclicMergeWitness18OfNat 20 0
          | 3 => cyclicMergeWitness18OfNat 30 0
          | 4 => cyclicMergeWitness18OfNat 20 0
          | 5 => cyclicMergeWitness18OfNat 30 0
          | 6 => cyclicMergeWitness18OfNat 29 0
          | 7 => cyclicMergeWitness18OfNat 20 0
          | 8 => cyclicMergeWitness18OfNat 29 0
          | 10 => cyclicMergeWitness18OfNat 32 0
          | 16 => cyclicMergeWitness18OfNat 32 0
          | 17 => cyclicMergeWitness18OfNat 25 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 25 17
          | 1 => cyclicMergeWitness18OfNat 20 0
          | 2 => cyclicMergeWitness18OfNat 30 0
          | 4 => cyclicMergeWitness18OfNat 20 0
          | 7 => cyclicMergeWitness18OfNat 20 0
          | 10 => cyclicMergeWitness18OfNat 20 0
          | 13 => cyclicMergeWitness18OfNat 32 0
          | 16 => cyclicMergeWitness18OfNat 20 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 21 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 21 0
          | 1 => cyclicMergeWitness18OfNat 21 0
          | 2 => cyclicMergeWitness18OfNat 21 0
          | 3 => cyclicMergeWitness18OfNat 31 0
          | 4 => cyclicMergeWitness18OfNat 21 0
          | 5 => cyclicMergeWitness18OfNat 31 0
          | 7 => cyclicMergeWitness18OfNat 32 0
          | 13 => cyclicMergeWitness18OfNat 32 0
          | 15 => cyclicMergeWitness18OfNat 30 15
          | 16 => cyclicMergeWitness18OfNat 21 0
          | 17 => cyclicMergeWitness18OfNat 30 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 30 15
          | 1 => cyclicMergeWitness18OfNat 21 0
          | 2 => cyclicMergeWitness18OfNat 31 0
          | 4 => cyclicMergeWitness18OfNat 21 0
          | 7 => cyclicMergeWitness18OfNat 21 0
          | 10 => cyclicMergeWitness18OfNat 32 0
          | 13 => cyclicMergeWitness18OfNat 21 0
          | 16 => cyclicMergeWitness18OfNat 21 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 22 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 22 0
          | 1 => cyclicMergeWitness18OfNat 22 0
          | 2 => cyclicMergeWitness18OfNat 22 0
          | 3 => cyclicMergeWitness18OfNat 27 0
          | 4 => cyclicMergeWitness18OfNat 32 0
          | 10 => cyclicMergeWitness18OfNat 32 0
          | 12 => cyclicMergeWitness18OfNat 29 12
          | 13 => cyclicMergeWitness18OfNat 22 0
          | 14 => cyclicMergeWitness18OfNat 29 12
          | 15 => cyclicMergeWitness18OfNat 31 15
          | 16 => cyclicMergeWitness18OfNat 22 0
          | 17 => cyclicMergeWitness18OfNat 31 15
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 31 15
          | 1 => cyclicMergeWitness18OfNat 22 0
          | 2 => cyclicMergeWitness18OfNat 27 0
          | 4 => cyclicMergeWitness18OfNat 22 0
          | 7 => cyclicMergeWitness18OfNat 32 0
          | 10 => cyclicMergeWitness18OfNat 22 0
          | 13 => cyclicMergeWitness18OfNat 22 0
          | 16 => cyclicMergeWitness18OfNat 22 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 23 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 23 0
          | 1 => cyclicMergeWitness18OfNat 23 0
          | 2 => cyclicMergeWitness18OfNat 23 0
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 5 => cyclicMergeWitness18OfNat 23 0
          | 6 => cyclicMergeWitness18OfNat 33 0
          | 7 => cyclicMergeWitness18OfNat 30 0
          | 16 => cyclicMergeWitness18OfNat 31 0
          | 17 => cyclicMergeWitness18OfNat 33 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 33 17
          | 1 => cyclicMergeWitness18OfNat 23 0
          | 2 => cyclicMergeWitness18OfNat 23 0
          | 3 => cyclicMergeWitness18OfNat 23 0
          | 4 => cyclicMergeWitness18OfNat 23 0
          | 5 => cyclicMergeWitness18OfNat 33 0
          | 6 => cyclicMergeWitness18OfNat 33 17
          | 7 => cyclicMergeWitness18OfNat 23 0
          | 10 => cyclicMergeWitness18OfNat 30 0
          | 13 => cyclicMergeWitness18OfNat 31 0
          | 16 => cyclicMergeWitness18OfNat 23 0
          | 17 => cyclicMergeWitness18OfNat 33 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | 24 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 24 0
          | 1 => cyclicMergeWitness18OfNat 32 17
          | 2 => cyclicMergeWitness18OfNat 32 2
          | 3 => cyclicMergeWitness18OfNat 24 0
          | 4 => cyclicMergeWitness18OfNat 32 2
          | 5 => cyclicMergeWitness18OfNat 32 5
          | 6 => cyclicMergeWitness18OfNat 24 0
          | 7 => cyclicMergeWitness18OfNat 32 5
          | 8 => cyclicMergeWitness18OfNat 32 8
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 10 => cyclicMergeWitness18OfNat 32 8
          | 11 => cyclicMergeWitness18OfNat 32 11
          | 12 => cyclicMergeWitness18OfNat 24 0
          | 13 => cyclicMergeWitness18OfNat 32 11
          | 14 => cyclicMergeWitness18OfNat 32 14
          | 15 => cyclicMergeWitness18OfNat 24 0
          | 16 => cyclicMergeWitness18OfNat 32 14
          | 17 => cyclicMergeWitness18OfNat 32 17
          | _ => cyclicMergeWitness18OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness18OfNat 24 0
          | 3 => cyclicMergeWitness18OfNat 24 0
          | 6 => cyclicMergeWitness18OfNat 24 0
          | 9 => cyclicMergeWitness18OfNat 24 0
          | 12 => cyclicMergeWitness18OfNat 24 0
          | 15 => cyclicMergeWitness18OfNat 24 0
          | _ => cyclicMergeWitness18OfNat 0 0
      | _ => cyclicMergeWitness18OfNat 0 0
  | _ => cyclicMergeWitness18OfNat 0 0

end PetersenZeroForcing
