import PetersenZeroForcing.CyclicCertificateData13

namespace PetersenZeroForcing

/-- Transparent witness constructor.  The generating search is not trusted:
`checkedWithWitnessB` re-checks every supplied witness in the original
`rotateSet` and containment semantics. -/
def cyclicMergeWitness13OfNat (c q : Nat) :
    CyclicCertificate.MergeWitness 13 cyclicCertificate13 where
  target := ⟨c % 32, by
    change c % 32 < 32
    exact Nat.mod_lt c (by decide)⟩
  shift := (q : ZMod 13)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
def cyclicMergeWitness13
    (a b : Fin cyclicCertificate13.shapeCount) (t : ZMod 13) :
    CyclicCertificate.MergeWitness 13 cyclicCertificate13 :=
  match a.val with
  | 0 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 0 0
          | 1 => cyclicMergeWitness13OfNat 2 0
          | 12 => cyclicMergeWitness13OfNat 2 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 3 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 2 0
          | 1 => cyclicMergeWitness13OfNat 5 0
          | 11 => cyclicMergeWitness13OfNat 5 11
          | 12 => cyclicMergeWitness13OfNat 2 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 3 0
          | 1 => cyclicMergeWitness13OfNat 5 0
          | 12 => cyclicMergeWitness13OfNat 5 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 6 0
          | 10 => cyclicMergeWitness13OfNat 6 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 5 0
          | 1 => cyclicMergeWitness13OfNat 7 0
          | 10 => cyclicMergeWitness13OfNat 7 10
          | 11 => cyclicMergeWitness13OfNat 5 11
          | 12 => cyclicMergeWitness13OfNat 5 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 6 0
          | 1 => cyclicMergeWitness13OfNat 8 0
          | 3 => cyclicMergeWitness13OfNat 9 0
          | 10 => cyclicMergeWitness13OfNat 9 10
          | 12 => cyclicMergeWitness13OfNat 8 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 7 0
          | 1 => cyclicMergeWitness13OfNat 10 0
          | 9 => cyclicMergeWitness13OfNat 10 9
          | 10 => cyclicMergeWitness13OfNat 7 10
          | 11 => cyclicMergeWitness13OfNat 7 11
          | 12 => cyclicMergeWitness13OfNat 7 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 8 0
          | 1 => cyclicMergeWitness13OfNat 12 0
          | 2 => cyclicMergeWitness13OfNat 14 2
          | 9 => cyclicMergeWitness13OfNat 13 9
          | 10 => cyclicMergeWitness13OfNat 11 10
          | 11 => cyclicMergeWitness13OfNat 8 11
          | 12 => cyclicMergeWitness13OfNat 8 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 9 0
          | 1 => cyclicMergeWitness13OfNat 13 0
          | 3 => cyclicMergeWitness13OfNat 15 0
          | 7 => cyclicMergeWitness13OfNat 15 7
          | 9 => cyclicMergeWitness13OfNat 14 11
          | 10 => cyclicMergeWitness13OfNat 9 10
          | 11 => cyclicMergeWitness13OfNat 14 0
          | 12 => cyclicMergeWitness13OfNat 13 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 10 0
          | 1 => cyclicMergeWitness13OfNat 24 0
          | 8 => cyclicMergeWitness13OfNat 24 8
          | 9 => cyclicMergeWitness13OfNat 10 9
          | 10 => cyclicMergeWitness13OfNat 10 10
          | 11 => cyclicMergeWitness13OfNat 10 11
          | 12 => cyclicMergeWitness13OfNat 10 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 11 0
          | 1 => cyclicMergeWitness13OfNat 16 0
          | 2 => cyclicMergeWitness13OfNat 18 2
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 11 10
          | 11 => cyclicMergeWitness13OfNat 11 11
          | 12 => cyclicMergeWitness13OfNat 11 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 12 0
          | 1 => cyclicMergeWitness13OfNat 24 12
          | 8 => cyclicMergeWitness13OfNat 17 8
          | 9 => cyclicMergeWitness13OfNat 16 9
          | 10 => cyclicMergeWitness13OfNat 12 10
          | 11 => cyclicMergeWitness13OfNat 12 11
          | 12 => cyclicMergeWitness13OfNat 12 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 13 0
          | 1 => cyclicMergeWitness13OfNat 17 0
          | 2 => cyclicMergeWitness13OfNat 21 2
          | 6 => cyclicMergeWitness13OfNat 20 6
          | 8 => cyclicMergeWitness13OfNat 24 8
          | 9 => cyclicMergeWitness13OfNat 13 9
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 13 11
          | 12 => cyclicMergeWitness13OfNat 13 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 14 0
          | 1 => cyclicMergeWitness13OfNat 24 11
          | 2 => cyclicMergeWitness13OfNat 14 2
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 5 => cyclicMergeWitness13OfNat 22 5
          | 9 => cyclicMergeWitness13OfNat 21 9
          | 10 => cyclicMergeWitness13OfNat 18 10
          | 11 => cyclicMergeWitness13OfNat 14 11
          | 12 => cyclicMergeWitness13OfNat 14 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 15 0
          | 1 => cyclicMergeWitness13OfNat 20 0
          | 3 => cyclicMergeWitness13OfNat 23 0
          | 4 => cyclicMergeWitness13OfNat 23 4
          | 6 => cyclicMergeWitness13OfNat 22 11
          | 7 => cyclicMergeWitness13OfNat 15 7
          | 8 => cyclicMergeWitness13OfNat 22 0
          | 9 => cyclicMergeWitness13OfNat 21 11
          | 10 => cyclicMergeWitness13OfNat 15 10
          | 11 => cyclicMergeWitness13OfNat 21 0
          | 12 => cyclicMergeWitness13OfNat 20 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 16 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 16 0
          | 1 => cyclicMergeWitness13OfNat 31 12
          | 8 => cyclicMergeWitness13OfNat 31 8
          | 9 => cyclicMergeWitness13OfNat 16 9
          | 10 => cyclicMergeWitness13OfNat 16 10
          | 11 => cyclicMergeWitness13OfNat 16 11
          | 12 => cyclicMergeWitness13OfNat 16 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 17 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 17 0
          | 1 => cyclicMergeWitness13OfNat 28 12
          | 5 => cyclicMergeWitness13OfNat 30 5
          | 7 => cyclicMergeWitness13OfNat 31 7
          | 8 => cyclicMergeWitness13OfNat 17 8
          | 9 => cyclicMergeWitness13OfNat 31 9
          | 10 => cyclicMergeWitness13OfNat 17 10
          | 11 => cyclicMergeWitness13OfNat 17 11
          | 12 => cyclicMergeWitness13OfNat 17 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 18 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 18 0
          | 1 => cyclicMergeWitness13OfNat 31 11
          | 2 => cyclicMergeWitness13OfNat 18 2
          | 3 => cyclicMergeWitness13OfNat 31 0
          | 5 => cyclicMergeWitness13OfNat 30 5
          | 9 => cyclicMergeWitness13OfNat 29 9
          | 10 => cyclicMergeWitness13OfNat 18 10
          | 11 => cyclicMergeWitness13OfNat 18 11
          | 12 => cyclicMergeWitness13OfNat 18 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 19 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 19 0
          | 1 => cyclicMergeWitness13OfNat 31 11
          | 2 => cyclicMergeWitness13OfNat 30 2
          | 8 => cyclicMergeWitness13OfNat 30 8
          | 9 => cyclicMergeWitness13OfNat 31 9
          | 10 => cyclicMergeWitness13OfNat 19 10
          | 11 => cyclicMergeWitness13OfNat 19 11
          | 12 => cyclicMergeWitness13OfNat 19 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 20 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 20 0
          | 1 => cyclicMergeWitness13OfNat 30 0
          | 2 => cyclicMergeWitness13OfNat 26 2
          | 3 => cyclicMergeWitness13OfNat 30 2
          | 5 => cyclicMergeWitness13OfNat 25 5
          | 6 => cyclicMergeWitness13OfNat 20 6
          | 7 => cyclicMergeWitness13OfNat 25 7
          | 8 => cyclicMergeWitness13OfNat 28 8
          | 9 => cyclicMergeWitness13OfNat 20 9
          | 10 => cyclicMergeWitness13OfNat 28 10
          | 11 => cyclicMergeWitness13OfNat 20 11
          | 12 => cyclicMergeWitness13OfNat 20 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 21 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 21 0
          | 1 => cyclicMergeWitness13OfNat 28 11
          | 2 => cyclicMergeWitness13OfNat 21 2
          | 3 => cyclicMergeWitness13OfNat 28 0
          | 5 => cyclicMergeWitness13OfNat 27 5
          | 6 => cyclicMergeWitness13OfNat 26 6
          | 8 => cyclicMergeWitness13OfNat 29 8
          | 9 => cyclicMergeWitness13OfNat 21 9
          | 10 => cyclicMergeWitness13OfNat 29 10
          | 11 => cyclicMergeWitness13OfNat 21 11
          | 12 => cyclicMergeWitness13OfNat 21 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 22 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 22 0
          | 1 => cyclicMergeWitness13OfNat 29 11
          | 2 => cyclicMergeWitness13OfNat 22 2
          | 3 => cyclicMergeWitness13OfNat 29 0
          | 4 => cyclicMergeWitness13OfNat 25 11
          | 5 => cyclicMergeWitness13OfNat 22 5
          | 6 => cyclicMergeWitness13OfNat 25 0
          | 8 => cyclicMergeWitness13OfNat 30 8
          | 9 => cyclicMergeWitness13OfNat 27 9
          | 10 => cyclicMergeWitness13OfNat 30 10
          | 11 => cyclicMergeWitness13OfNat 22 11
          | 12 => cyclicMergeWitness13OfNat 22 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 23 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 23 0
          | 1 => cyclicMergeWitness13OfNat 30 12
          | 3 => cyclicMergeWitness13OfNat 30 11
          | 4 => cyclicMergeWitness13OfNat 23 4
          | 5 => cyclicMergeWitness13OfNat 30 0
          | 6 => cyclicMergeWitness13OfNat 27 11
          | 7 => cyclicMergeWitness13OfNat 23 7
          | 8 => cyclicMergeWitness13OfNat 27 0
          | 9 => cyclicMergeWitness13OfNat 26 11
          | 10 => cyclicMergeWitness13OfNat 23 10
          | 11 => cyclicMergeWitness13OfNat 26 0
          | 12 => cyclicMergeWitness13OfNat 30 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 24 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 0
          | 1 => cyclicMergeWitness13OfNat 31 0
          | 2 => cyclicMergeWitness13OfNat 29 2
          | 6 => cyclicMergeWitness13OfNat 28 6
          | 7 => cyclicMergeWitness13OfNat 31 7
          | 8 => cyclicMergeWitness13OfNat 24 8
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 24 11
          | 12 => cyclicMergeWitness13OfNat 24 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 1 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 3 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 1 0
          | 3 => cyclicMergeWitness13OfNat 4 0
          | 10 => cyclicMergeWitness13OfNat 4 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 5 12
          | 12 => cyclicMergeWitness13OfNat 5 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 3 0
          | 3 => cyclicMergeWitness13OfNat 6 3
          | 10 => cyclicMergeWitness13OfNat 6 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 4 0
          | 3 => cyclicMergeWitness13OfNat 6 3
          | 7 => cyclicMergeWitness13OfNat 6 10
          | 10 => cyclicMergeWitness13OfNat 4 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 7 12
          | 2 => cyclicMergeWitness13OfNat 8 2
          | 9 => cyclicMergeWitness13OfNat 8 9
          | 11 => cyclicMergeWitness13OfNat 7 11
          | 12 => cyclicMergeWitness13OfNat 5 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 6 0
          | 3 => cyclicMergeWitness13OfNat 6 3
          | 6 => cyclicMergeWitness13OfNat 9 3
          | 7 => cyclicMergeWitness13OfNat 9 7
          | 10 => cyclicMergeWitness13OfNat 6 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 10 12
          | 1 => cyclicMergeWitness13OfNat 12 1
          | 2 => cyclicMergeWitness13OfNat 11 2
          | 8 => cyclicMergeWitness13OfNat 12 8
          | 9 => cyclicMergeWitness13OfNat 11 9
          | 10 => cyclicMergeWitness13OfNat 10 10
          | 11 => cyclicMergeWitness13OfNat 7 11
          | 12 => cyclicMergeWitness13OfNat 7 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 12 12
          | 2 => cyclicMergeWitness13OfNat 8 2
          | 5 => cyclicMergeWitness13OfNat 14 5
          | 6 => cyclicMergeWitness13OfNat 13 6
          | 9 => cyclicMergeWitness13OfNat 8 9
          | 11 => cyclicMergeWitness13OfNat 11 11
          | 12 => cyclicMergeWitness13OfNat 8 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 9 0
          | 3 => cyclicMergeWitness13OfNat 9 3
          | 4 => cyclicMergeWitness13OfNat 15 4
          | 6 => cyclicMergeWitness13OfNat 15 3
          | 7 => cyclicMergeWitness13OfNat 9 7
          | 10 => cyclicMergeWitness13OfNat 9 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 12
          | 1 => cyclicMergeWitness13OfNat 16 1
          | 2 => cyclicMergeWitness13OfNat 24 2
          | 7 => cyclicMergeWitness13OfNat 24 6
          | 8 => cyclicMergeWitness13OfNat 16 8
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 10 10
          | 11 => cyclicMergeWitness13OfNat 10 11
          | 12 => cyclicMergeWitness13OfNat 10 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 16 12
          | 1 => cyclicMergeWitness13OfNat 19 1
          | 2 => cyclicMergeWitness13OfNat 11 2
          | 5 => cyclicMergeWitness13OfNat 18 5
          | 6 => cyclicMergeWitness13OfNat 24 6
          | 8 => cyclicMergeWitness13OfNat 19 8
          | 9 => cyclicMergeWitness13OfNat 11 9
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 11 11
          | 12 => cyclicMergeWitness13OfNat 11 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 11
          | 1 => cyclicMergeWitness13OfNat 12 1
          | 2 => cyclicMergeWitness13OfNat 19 2
          | 4 => cyclicMergeWitness13OfNat 24 2
          | 5 => cyclicMergeWitness13OfNat 17 5
          | 8 => cyclicMergeWitness13OfNat 12 8
          | 9 => cyclicMergeWitness13OfNat 19 9
          | 10 => cyclicMergeWitness13OfNat 16 10
          | 11 => cyclicMergeWitness13OfNat 12 11
          | 12 => cyclicMergeWitness13OfNat 12 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 17 12
          | 2 => cyclicMergeWitness13OfNat 13 2
          | 3 => cyclicMergeWitness13OfNat 20 3
          | 5 => cyclicMergeWitness13OfNat 21 5
          | 6 => cyclicMergeWitness13OfNat 13 6
          | 9 => cyclicMergeWitness13OfNat 13 9
          | 11 => cyclicMergeWitness13OfNat 24 11
          | 12 => cyclicMergeWitness13OfNat 13 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 10
          | 2 => cyclicMergeWitness13OfNat 14 2
          | 5 => cyclicMergeWitness13OfNat 14 5
          | 6 => cyclicMergeWitness13OfNat 21 6
          | 8 => cyclicMergeWitness13OfNat 22 8
          | 9 => cyclicMergeWitness13OfNat 14 9
          | 11 => cyclicMergeWitness13OfNat 18 11
          | 12 => cyclicMergeWitness13OfNat 14 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 15 0
          | 1 => cyclicMergeWitness13OfNat 23 1
          | 3 => cyclicMergeWitness13OfNat 15 3
          | 4 => cyclicMergeWitness13OfNat 15 4
          | 6 => cyclicMergeWitness13OfNat 23 3
          | 7 => cyclicMergeWitness13OfNat 15 7
          | 10 => cyclicMergeWitness13OfNat 15 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 16 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 31 11
          | 1 => cyclicMergeWitness13OfNat 16 1
          | 2 => cyclicMergeWitness13OfNat 31 2
          | 4 => cyclicMergeWitness13OfNat 31 2
          | 5 => cyclicMergeWitness13OfNat 31 5
          | 7 => cyclicMergeWitness13OfNat 31 5
          | 8 => cyclicMergeWitness13OfNat 16 8
          | 9 => cyclicMergeWitness13OfNat 31 9
          | 10 => cyclicMergeWitness13OfNat 16 10
          | 11 => cyclicMergeWitness13OfNat 16 11
          | 12 => cyclicMergeWitness13OfNat 16 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 17 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 28 11
          | 1 => cyclicMergeWitness13OfNat 17 1
          | 2 => cyclicMergeWitness13OfNat 30 2
          | 4 => cyclicMergeWitness13OfNat 28 2
          | 5 => cyclicMergeWitness13OfNat 17 5
          | 8 => cyclicMergeWitness13OfNat 17 8
          | 9 => cyclicMergeWitness13OfNat 30 9
          | 10 => cyclicMergeWitness13OfNat 31 10
          | 11 => cyclicMergeWitness13OfNat 17 11
          | 12 => cyclicMergeWitness13OfNat 17 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 18 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 31 10
          | 1 => cyclicMergeWitness13OfNat 30 1
          | 2 => cyclicMergeWitness13OfNat 18 2
          | 5 => cyclicMergeWitness13OfNat 18 5
          | 6 => cyclicMergeWitness13OfNat 29 6
          | 8 => cyclicMergeWitness13OfNat 30 8
          | 9 => cyclicMergeWitness13OfNat 18 9
          | 10 => cyclicMergeWitness13OfNat 29 10
          | 11 => cyclicMergeWitness13OfNat 18 11
          | 12 => cyclicMergeWitness13OfNat 18 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 19 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 31 10
          | 1 => cyclicMergeWitness13OfNat 19 1
          | 2 => cyclicMergeWitness13OfNat 19 2
          | 4 => cyclicMergeWitness13OfNat 31 1
          | 5 => cyclicMergeWitness13OfNat 30 5
          | 6 => cyclicMergeWitness13OfNat 31 6
          | 8 => cyclicMergeWitness13OfNat 19 8
          | 9 => cyclicMergeWitness13OfNat 19 9
          | 10 => cyclicMergeWitness13OfNat 31 10
          | 11 => cyclicMergeWitness13OfNat 19 11
          | 12 => cyclicMergeWitness13OfNat 19 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 20 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 30 12
          | 2 => cyclicMergeWitness13OfNat 20 2
          | 3 => cyclicMergeWitness13OfNat 20 3
          | 5 => cyclicMergeWitness13OfNat 26 5
          | 6 => cyclicMergeWitness13OfNat 20 6
          | 9 => cyclicMergeWitness13OfNat 20 9
          | 11 => cyclicMergeWitness13OfNat 28 11
          | 12 => cyclicMergeWitness13OfNat 20 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 21 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 28 10
          | 2 => cyclicMergeWitness13OfNat 21 2
          | 3 => cyclicMergeWitness13OfNat 26 3
          | 5 => cyclicMergeWitness13OfNat 21 5
          | 6 => cyclicMergeWitness13OfNat 21 6
          | 8 => cyclicMergeWitness13OfNat 27 8
          | 9 => cyclicMergeWitness13OfNat 21 9
          | 11 => cyclicMergeWitness13OfNat 29 11
          | 12 => cyclicMergeWitness13OfNat 21 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 22 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 29 10
          | 2 => cyclicMergeWitness13OfNat 22 2
          | 5 => cyclicMergeWitness13OfNat 22 5
          | 6 => cyclicMergeWitness13OfNat 27 6
          | 8 => cyclicMergeWitness13OfNat 22 8
          | 9 => cyclicMergeWitness13OfNat 22 9
          | 11 => cyclicMergeWitness13OfNat 30 11
          | 12 => cyclicMergeWitness13OfNat 22 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 23 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 23 0
          | 1 => cyclicMergeWitness13OfNat 23 1
          | 3 => cyclicMergeWitness13OfNat 23 3
          | 4 => cyclicMergeWitness13OfNat 23 4
          | 6 => cyclicMergeWitness13OfNat 30 1
          | 7 => cyclicMergeWitness13OfNat 23 7
          | 10 => cyclicMergeWitness13OfNat 23 10
          | 11 => cyclicMergeWitness13OfNat 30 9
          | _ => cyclicMergeWitness13OfNat 0 0
      | 24 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 31 12
          | 1 => cyclicMergeWitness13OfNat 31 1
          | 2 => cyclicMergeWitness13OfNat 24 2
          | 3 => cyclicMergeWitness13OfNat 28 3
          | 5 => cyclicMergeWitness13OfNat 29 5
          | 6 => cyclicMergeWitness13OfNat 24 6
          | 7 => cyclicMergeWitness13OfNat 31 6
          | 8 => cyclicMergeWitness13OfNat 31 8
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 24 11
          | 12 => cyclicMergeWitness13OfNat 24 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 2 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 2 0
          | 1 => cyclicMergeWitness13OfNat 2 0
          | 2 => cyclicMergeWitness13OfNat 5 0
          | 12 => cyclicMergeWitness13OfNat 5 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 5 12
          | 1 => cyclicMergeWitness13OfNat 5 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 2 0
          | 1 => cyclicMergeWitness13OfNat 5 0
          | 2 => cyclicMergeWitness13OfNat 7 0
          | 11 => cyclicMergeWitness13OfNat 7 11
          | 12 => cyclicMergeWitness13OfNat 5 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 5 12
          | 1 => cyclicMergeWitness13OfNat 5 0
          | 2 => cyclicMergeWitness13OfNat 7 0
          | 12 => cyclicMergeWitness13OfNat 7 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 8 12
          | 1 => cyclicMergeWitness13OfNat 8 0
          | 10 => cyclicMergeWitness13OfNat 8 12
          | 11 => cyclicMergeWitness13OfNat 8 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 5 0
          | 1 => cyclicMergeWitness13OfNat 7 0
          | 2 => cyclicMergeWitness13OfNat 10 0
          | 10 => cyclicMergeWitness13OfNat 10 10
          | 11 => cyclicMergeWitness13OfNat 7 11
          | 12 => cyclicMergeWitness13OfNat 5 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 8 12
          | 1 => cyclicMergeWitness13OfNat 8 0
          | 2 => cyclicMergeWitness13OfNat 12 0
          | 3 => cyclicMergeWitness13OfNat 13 12
          | 4 => cyclicMergeWitness13OfNat 13 0
          | 10 => cyclicMergeWitness13OfNat 14 12
          | 11 => cyclicMergeWitness13OfNat 14 0
          | 12 => cyclicMergeWitness13OfNat 11 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 7 0
          | 1 => cyclicMergeWitness13OfNat 10 0
          | 2 => cyclicMergeWitness13OfNat 24 0
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 10 10
          | 11 => cyclicMergeWitness13OfNat 7 11
          | 12 => cyclicMergeWitness13OfNat 7 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 8 0
          | 1 => cyclicMergeWitness13OfNat 12 0
          | 2 => cyclicMergeWitness13OfNat 24 12
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 11 11
          | 12 => cyclicMergeWitness13OfNat 8 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 13 12
          | 1 => cyclicMergeWitness13OfNat 13 0
          | 2 => cyclicMergeWitness13OfNat 17 0
          | 3 => cyclicMergeWitness13OfNat 20 12
          | 4 => cyclicMergeWitness13OfNat 20 0
          | 7 => cyclicMergeWitness13OfNat 22 12
          | 8 => cyclicMergeWitness13OfNat 22 0
          | 9 => cyclicMergeWitness13OfNat 18 11
          | 10 => cyclicMergeWitness13OfNat 14 12
          | 11 => cyclicMergeWitness13OfNat 14 0
          | 12 => cyclicMergeWitness13OfNat 24 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 10 0
          | 1 => cyclicMergeWitness13OfNat 24 0
          | 2 => cyclicMergeWitness13OfNat 31 0
          | 8 => cyclicMergeWitness13OfNat 31 8
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 10 10
          | 11 => cyclicMergeWitness13OfNat 10 11
          | 12 => cyclicMergeWitness13OfNat 10 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 11 0
          | 1 => cyclicMergeWitness13OfNat 16 0
          | 2 => cyclicMergeWitness13OfNat 31 12
          | 3 => cyclicMergeWitness13OfNat 31 0
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 11 11
          | 12 => cyclicMergeWitness13OfNat 11 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 12 0
          | 1 => cyclicMergeWitness13OfNat 24 12
          | 2 => cyclicMergeWitness13OfNat 24 0
          | 8 => cyclicMergeWitness13OfNat 31 8
          | 9 => cyclicMergeWitness13OfNat 31 9
          | 10 => cyclicMergeWitness13OfNat 16 10
          | 11 => cyclicMergeWitness13OfNat 12 11
          | 12 => cyclicMergeWitness13OfNat 12 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 13 0
          | 1 => cyclicMergeWitness13OfNat 17 0
          | 2 => cyclicMergeWitness13OfNat 28 12
          | 3 => cyclicMergeWitness13OfNat 28 0
          | 6 => cyclicMergeWitness13OfNat 25 6
          | 7 => cyclicMergeWitness13OfNat 25 7
          | 8 => cyclicMergeWitness13OfNat 31 8
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 24 11
          | 12 => cyclicMergeWitness13OfNat 13 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 14 0
          | 1 => cyclicMergeWitness13OfNat 24 11
          | 2 => cyclicMergeWitness13OfNat 24 12
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 4 => cyclicMergeWitness13OfNat 31 0
          | 5 => cyclicMergeWitness13OfNat 25 12
          | 6 => cyclicMergeWitness13OfNat 25 0
          | 9 => cyclicMergeWitness13OfNat 29 9
          | 10 => cyclicMergeWitness13OfNat 29 10
          | 11 => cyclicMergeWitness13OfNat 18 11
          | 12 => cyclicMergeWitness13OfNat 14 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 20 12
          | 1 => cyclicMergeWitness13OfNat 20 0
          | 2 => cyclicMergeWitness13OfNat 30 0
          | 3 => cyclicMergeWitness13OfNat 30 11
          | 4 => cyclicMergeWitness13OfNat 30 12
          | 5 => cyclicMergeWitness13OfNat 30 0
          | 6 => cyclicMergeWitness13OfNat 30 11
          | 7 => cyclicMergeWitness13OfNat 22 12
          | 8 => cyclicMergeWitness13OfNat 22 0
          | 9 => cyclicMergeWitness13OfNat 29 11
          | 10 => cyclicMergeWitness13OfNat 21 12
          | 11 => cyclicMergeWitness13OfNat 21 0
          | 12 => cyclicMergeWitness13OfNat 28 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 3 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 3 0
          | 1 => cyclicMergeWitness13OfNat 5 12
          | 12 => cyclicMergeWitness13OfNat 5 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 3 0
          | 3 => cyclicMergeWitness13OfNat 6 0
          | 10 => cyclicMergeWitness13OfNat 6 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 5 12
          | 1 => cyclicMergeWitness13OfNat 7 12
          | 11 => cyclicMergeWitness13OfNat 7 11
          | 12 => cyclicMergeWitness13OfNat 5 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 3 0
          | 1 => cyclicMergeWitness13OfNat 7 12
          | 3 => cyclicMergeWitness13OfNat 9 0
          | 10 => cyclicMergeWitness13OfNat 9 10
          | 12 => cyclicMergeWitness13OfNat 7 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 6 0
          | 3 => cyclicMergeWitness13OfNat 9 0
          | 7 => cyclicMergeWitness13OfNat 9 10
          | 10 => cyclicMergeWitness13OfNat 6 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 7 12
          | 1 => cyclicMergeWitness13OfNat 10 12
          | 2 => cyclicMergeWitness13OfNat 14 2
          | 9 => cyclicMergeWitness13OfNat 13 9
          | 10 => cyclicMergeWitness13OfNat 10 10
          | 11 => cyclicMergeWitness13OfNat 7 11
          | 12 => cyclicMergeWitness13OfNat 5 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 6 0
          | 1 => cyclicMergeWitness13OfNat 12 12
          | 3 => cyclicMergeWitness13OfNat 9 0
          | 6 => cyclicMergeWitness13OfNat 15 0
          | 7 => cyclicMergeWitness13OfNat 15 7
          | 10 => cyclicMergeWitness13OfNat 9 10
          | 12 => cyclicMergeWitness13OfNat 11 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 10 12
          | 1 => cyclicMergeWitness13OfNat 24 12
          | 2 => cyclicMergeWitness13OfNat 18 2
          | 8 => cyclicMergeWitness13OfNat 17 8
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 10 10
          | 11 => cyclicMergeWitness13OfNat 7 11
          | 12 => cyclicMergeWitness13OfNat 7 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 12 12
          | 1 => cyclicMergeWitness13OfNat 24 11
          | 2 => cyclicMergeWitness13OfNat 14 2
          | 5 => cyclicMergeWitness13OfNat 22 5
          | 6 => cyclicMergeWitness13OfNat 20 6
          | 9 => cyclicMergeWitness13OfNat 13 9
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 11 11
          | 12 => cyclicMergeWitness13OfNat 8 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 9 0
          | 1 => cyclicMergeWitness13OfNat 17 12
          | 3 => cyclicMergeWitness13OfNat 15 0
          | 4 => cyclicMergeWitness13OfNat 23 4
          | 6 => cyclicMergeWitness13OfNat 23 0
          | 7 => cyclicMergeWitness13OfNat 15 7
          | 9 => cyclicMergeWitness13OfNat 18 11
          | 10 => cyclicMergeWitness13OfNat 9 10
          | 11 => cyclicMergeWitness13OfNat 24 10
          | 12 => cyclicMergeWitness13OfNat 24 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 12
          | 1 => cyclicMergeWitness13OfNat 31 12
          | 2 => cyclicMergeWitness13OfNat 29 2
          | 7 => cyclicMergeWitness13OfNat 28 6
          | 8 => cyclicMergeWitness13OfNat 31 8
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 10 10
          | 11 => cyclicMergeWitness13OfNat 10 11
          | 12 => cyclicMergeWitness13OfNat 10 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 16 12
          | 1 => cyclicMergeWitness13OfNat 31 11
          | 2 => cyclicMergeWitness13OfNat 18 2
          | 5 => cyclicMergeWitness13OfNat 30 5
          | 6 => cyclicMergeWitness13OfNat 28 6
          | 8 => cyclicMergeWitness13OfNat 30 8
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 11 11
          | 12 => cyclicMergeWitness13OfNat 11 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 11
          | 1 => cyclicMergeWitness13OfNat 24 12
          | 2 => cyclicMergeWitness13OfNat 30 2
          | 4 => cyclicMergeWitness13OfNat 29 2
          | 5 => cyclicMergeWitness13OfNat 30 5
          | 8 => cyclicMergeWitness13OfNat 17 8
          | 9 => cyclicMergeWitness13OfNat 31 9
          | 10 => cyclicMergeWitness13OfNat 16 10
          | 11 => cyclicMergeWitness13OfNat 12 11
          | 12 => cyclicMergeWitness13OfNat 12 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 17 12
          | 1 => cyclicMergeWitness13OfNat 28 11
          | 2 => cyclicMergeWitness13OfNat 21 2
          | 3 => cyclicMergeWitness13OfNat 30 2
          | 5 => cyclicMergeWitness13OfNat 27 5
          | 6 => cyclicMergeWitness13OfNat 20 6
          | 8 => cyclicMergeWitness13OfNat 31 8
          | 9 => cyclicMergeWitness13OfNat 13 9
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 24 11
          | 12 => cyclicMergeWitness13OfNat 13 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 10
          | 1 => cyclicMergeWitness13OfNat 24 11
          | 2 => cyclicMergeWitness13OfNat 14 2
          | 3 => cyclicMergeWitness13OfNat 31 12
          | 5 => cyclicMergeWitness13OfNat 22 5
          | 6 => cyclicMergeWitness13OfNat 26 6
          | 8 => cyclicMergeWitness13OfNat 30 8
          | 9 => cyclicMergeWitness13OfNat 21 9
          | 10 => cyclicMergeWitness13OfNat 29 10
          | 11 => cyclicMergeWitness13OfNat 18 11
          | 12 => cyclicMergeWitness13OfNat 14 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 15 0
          | 1 => cyclicMergeWitness13OfNat 30 12
          | 3 => cyclicMergeWitness13OfNat 23 0
          | 4 => cyclicMergeWitness13OfNat 23 4
          | 6 => cyclicMergeWitness13OfNat 30 11
          | 7 => cyclicMergeWitness13OfNat 15 7
          | 8 => cyclicMergeWitness13OfNat 29 10
          | 9 => cyclicMergeWitness13OfNat 29 11
          | 10 => cyclicMergeWitness13OfNat 15 10
          | 11 => cyclicMergeWitness13OfNat 28 10
          | 12 => cyclicMergeWitness13OfNat 28 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 4 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 6 0
          | 3 => cyclicMergeWitness13OfNat 6 3
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 4 0
          | 3 => cyclicMergeWitness13OfNat 4 0
          | 6 => cyclicMergeWitness13OfNat 6 3
          | 10 => cyclicMergeWitness13OfNat 6 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 8 12
          | 2 => cyclicMergeWitness13OfNat 8 2
          | 3 => cyclicMergeWitness13OfNat 8 2
          | 12 => cyclicMergeWitness13OfNat 8 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 6 0
          | 3 => cyclicMergeWitness13OfNat 6 3
          | 6 => cyclicMergeWitness13OfNat 9 3
          | 10 => cyclicMergeWitness13OfNat 9 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 4 0
          | 3 => cyclicMergeWitness13OfNat 6 3
          | 6 => cyclicMergeWitness13OfNat 9 3
          | 7 => cyclicMergeWitness13OfNat 9 10
          | 10 => cyclicMergeWitness13OfNat 6 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 11 12
          | 1 => cyclicMergeWitness13OfNat 12 1
          | 2 => cyclicMergeWitness13OfNat 8 2
          | 3 => cyclicMergeWitness13OfNat 11 2
          | 5 => cyclicMergeWitness13OfNat 14 5
          | 9 => cyclicMergeWitness13OfNat 13 9
          | 11 => cyclicMergeWitness13OfNat 12 11
          | 12 => cyclicMergeWitness13OfNat 8 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 6 0
          | 3 => cyclicMergeWitness13OfNat 6 3
          | 6 => cyclicMergeWitness13OfNat 9 3
          | 7 => cyclicMergeWitness13OfNat 15 7
          | 9 => cyclicMergeWitness13OfNat 15 3
          | 10 => cyclicMergeWitness13OfNat 9 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 12
          | 1 => cyclicMergeWitness13OfNat 12 1
          | 2 => cyclicMergeWitness13OfNat 11 2
          | 3 => cyclicMergeWitness13OfNat 24 2
          | 4 => cyclicMergeWitness13OfNat 24 2
          | 5 => cyclicMergeWitness13OfNat 18 5
          | 8 => cyclicMergeWitness13OfNat 17 8
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 24 9
          | 11 => cyclicMergeWitness13OfNat 12 11
          | 12 => cyclicMergeWitness13OfNat 11 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 19 12
          | 1 => cyclicMergeWitness13OfNat 19 1
          | 2 => cyclicMergeWitness13OfNat 8 2
          | 3 => cyclicMergeWitness13OfNat 19 2
          | 5 => cyclicMergeWitness13OfNat 14 5
          | 6 => cyclicMergeWitness13OfNat 20 6
          | 8 => cyclicMergeWitness13OfNat 22 8
          | 9 => cyclicMergeWitness13OfNat 13 9
          | 11 => cyclicMergeWitness13OfNat 19 11
          | 12 => cyclicMergeWitness13OfNat 8 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 9 0
          | 3 => cyclicMergeWitness13OfNat 9 3
          | 4 => cyclicMergeWitness13OfNat 23 4
          | 6 => cyclicMergeWitness13OfNat 15 3
          | 7 => cyclicMergeWitness13OfNat 15 7
          | 9 => cyclicMergeWitness13OfNat 23 3
          | 10 => cyclicMergeWitness13OfNat 9 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 12
          | 1 => cyclicMergeWitness13OfNat 16 1
          | 2 => cyclicMergeWitness13OfNat 24 2
          | 3 => cyclicMergeWitness13OfNat 24 2
          | 4 => cyclicMergeWitness13OfNat 31 2
          | 5 => cyclicMergeWitness13OfNat 29 5
          | 7 => cyclicMergeWitness13OfNat 28 6
          | 8 => cyclicMergeWitness13OfNat 31 8
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 24 9
          | 11 => cyclicMergeWitness13OfNat 16 11
          | 12 => cyclicMergeWitness13OfNat 24 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 31 12
          | 1 => cyclicMergeWitness13OfNat 19 1
          | 2 => cyclicMergeWitness13OfNat 11 2
          | 3 => cyclicMergeWitness13OfNat 31 2
          | 4 => cyclicMergeWitness13OfNat 31 1
          | 5 => cyclicMergeWitness13OfNat 18 5
          | 6 => cyclicMergeWitness13OfNat 28 6
          | 8 => cyclicMergeWitness13OfNat 30 8
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 31 9
          | 11 => cyclicMergeWitness13OfNat 19 11
          | 12 => cyclicMergeWitness13OfNat 11 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 31 11
          | 1 => cyclicMergeWitness13OfNat 12 1
          | 2 => cyclicMergeWitness13OfNat 19 2
          | 3 => cyclicMergeWitness13OfNat 31 1
          | 4 => cyclicMergeWitness13OfNat 24 2
          | 5 => cyclicMergeWitness13OfNat 30 5
          | 7 => cyclicMergeWitness13OfNat 29 5
          | 8 => cyclicMergeWitness13OfNat 17 8
          | 9 => cyclicMergeWitness13OfNat 31 9
          | 10 => cyclicMergeWitness13OfNat 31 8
          | 11 => cyclicMergeWitness13OfNat 12 11
          | 12 => cyclicMergeWitness13OfNat 19 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 30 12
          | 1 => cyclicMergeWitness13OfNat 31 1
          | 2 => cyclicMergeWitness13OfNat 13 2
          | 3 => cyclicMergeWitness13OfNat 30 2
          | 5 => cyclicMergeWitness13OfNat 21 5
          | 6 => cyclicMergeWitness13OfNat 20 6
          | 8 => cyclicMergeWitness13OfNat 27 8
          | 9 => cyclicMergeWitness13OfNat 13 9
          | 11 => cyclicMergeWitness13OfNat 31 11
          | 12 => cyclicMergeWitness13OfNat 13 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 31 9
          | 1 => cyclicMergeWitness13OfNat 30 1
          | 2 => cyclicMergeWitness13OfNat 14 2
          | 3 => cyclicMergeWitness13OfNat 31 12
          | 5 => cyclicMergeWitness13OfNat 14 5
          | 6 => cyclicMergeWitness13OfNat 26 6
          | 8 => cyclicMergeWitness13OfNat 22 8
          | 9 => cyclicMergeWitness13OfNat 21 9
          | 11 => cyclicMergeWitness13OfNat 30 11
          | 12 => cyclicMergeWitness13OfNat 14 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 15 0
          | 1 => cyclicMergeWitness13OfNat 30 12
          | 3 => cyclicMergeWitness13OfNat 15 3
          | 4 => cyclicMergeWitness13OfNat 23 4
          | 6 => cyclicMergeWitness13OfNat 23 3
          | 7 => cyclicMergeWitness13OfNat 15 7
          | 9 => cyclicMergeWitness13OfNat 30 1
          | 10 => cyclicMergeWitness13OfNat 15 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 5 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 5 0
          | 1 => cyclicMergeWitness13OfNat 5 0
          | 2 => cyclicMergeWitness13OfNat 5 0
          | 3 => cyclicMergeWitness13OfNat 7 0
          | 12 => cyclicMergeWitness13OfNat 7 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 7 12
          | 1 => cyclicMergeWitness13OfNat 5 0
          | 2 => cyclicMergeWitness13OfNat 7 0
          | 4 => cyclicMergeWitness13OfNat 8 0
          | 11 => cyclicMergeWitness13OfNat 8 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 5 0
          | 1 => cyclicMergeWitness13OfNat 5 0
          | 2 => cyclicMergeWitness13OfNat 7 0
          | 3 => cyclicMergeWitness13OfNat 10 0
          | 11 => cyclicMergeWitness13OfNat 10 11
          | 12 => cyclicMergeWitness13OfNat 7 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 7 12
          | 1 => cyclicMergeWitness13OfNat 5 0
          | 2 => cyclicMergeWitness13OfNat 7 0
          | 3 => cyclicMergeWitness13OfNat 10 0
          | 4 => cyclicMergeWitness13OfNat 13 0
          | 11 => cyclicMergeWitness13OfNat 14 0
          | 12 => cyclicMergeWitness13OfNat 10 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 11 12
          | 1 => cyclicMergeWitness13OfNat 8 0
          | 2 => cyclicMergeWitness13OfNat 12 0
          | 4 => cyclicMergeWitness13OfNat 13 0
          | 8 => cyclicMergeWitness13OfNat 14 0
          | 10 => cyclicMergeWitness13OfNat 11 12
          | 11 => cyclicMergeWitness13OfNat 8 0
          | 12 => cyclicMergeWitness13OfNat 12 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 5 0
          | 1 => cyclicMergeWitness13OfNat 7 0
          | 2 => cyclicMergeWitness13OfNat 10 0
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 10 11
          | 12 => cyclicMergeWitness13OfNat 7 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 11 12
          | 1 => cyclicMergeWitness13OfNat 8 0
          | 2 => cyclicMergeWitness13OfNat 12 0
          | 3 => cyclicMergeWitness13OfNat 24 12
          | 4 => cyclicMergeWitness13OfNat 13 0
          | 5 => cyclicMergeWitness13OfNat 17 0
          | 7 => cyclicMergeWitness13OfNat 20 0
          | 8 => cyclicMergeWitness13OfNat 22 0
          | 10 => cyclicMergeWitness13OfNat 18 12
          | 11 => cyclicMergeWitness13OfNat 14 0
          | 12 => cyclicMergeWitness13OfNat 24 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 7 0
          | 1 => cyclicMergeWitness13OfNat 10 0
          | 2 => cyclicMergeWitness13OfNat 24 0
          | 3 => cyclicMergeWitness13OfNat 31 0
          | 9 => cyclicMergeWitness13OfNat 31 9
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 10 11
          | 12 => cyclicMergeWitness13OfNat 7 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 8 0
          | 1 => cyclicMergeWitness13OfNat 12 0
          | 2 => cyclicMergeWitness13OfNat 24 12
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 4 => cyclicMergeWitness13OfNat 31 0
          | 6 => cyclicMergeWitness13OfNat 25 0
          | 7 => cyclicMergeWitness13OfNat 25 7
          | 9 => cyclicMergeWitness13OfNat 31 9
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 24 11
          | 12 => cyclicMergeWitness13OfNat 11 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 12
          | 1 => cyclicMergeWitness13OfNat 13 0
          | 2 => cyclicMergeWitness13OfNat 17 0
          | 3 => cyclicMergeWitness13OfNat 28 12
          | 4 => cyclicMergeWitness13OfNat 20 0
          | 5 => cyclicMergeWitness13OfNat 30 0
          | 7 => cyclicMergeWitness13OfNat 30 12
          | 8 => cyclicMergeWitness13OfNat 22 0
          | 9 => cyclicMergeWitness13OfNat 29 11
          | 10 => cyclicMergeWitness13OfNat 18 12
          | 11 => cyclicMergeWitness13OfNat 14 0
          | 12 => cyclicMergeWitness13OfNat 24 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 6 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 6 0
          | 1 => cyclicMergeWitness13OfNat 8 12
          | 3 => cyclicMergeWitness13OfNat 9 0
          | 10 => cyclicMergeWitness13OfNat 9 10
          | 12 => cyclicMergeWitness13OfNat 8 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 6 0
          | 3 => cyclicMergeWitness13OfNat 6 0
          | 6 => cyclicMergeWitness13OfNat 9 0
          | 7 => cyclicMergeWitness13OfNat 9 10
          | 10 => cyclicMergeWitness13OfNat 6 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 8 12
          | 1 => cyclicMergeWitness13OfNat 11 12
          | 2 => cyclicMergeWitness13OfNat 14 2
          | 3 => cyclicMergeWitness13OfNat 14 2
          | 9 => cyclicMergeWitness13OfNat 13 9
          | 10 => cyclicMergeWitness13OfNat 13 9
          | 11 => cyclicMergeWitness13OfNat 12 11
          | 12 => cyclicMergeWitness13OfNat 8 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 6 0
          | 1 => cyclicMergeWitness13OfNat 11 12
          | 3 => cyclicMergeWitness13OfNat 9 0
          | 6 => cyclicMergeWitness13OfNat 15 0
          | 7 => cyclicMergeWitness13OfNat 15 7
          | 10 => cyclicMergeWitness13OfNat 9 10
          | 12 => cyclicMergeWitness13OfNat 12 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 6 0
          | 3 => cyclicMergeWitness13OfNat 9 0
          | 4 => cyclicMergeWitness13OfNat 15 7
          | 6 => cyclicMergeWitness13OfNat 15 0
          | 7 => cyclicMergeWitness13OfNat 9 10
          | 10 => cyclicMergeWitness13OfNat 6 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 11 12
          | 1 => cyclicMergeWitness13OfNat 24 12
          | 2 => cyclicMergeWitness13OfNat 14 2
          | 3 => cyclicMergeWitness13OfNat 18 2
          | 5 => cyclicMergeWitness13OfNat 22 5
          | 6 => cyclicMergeWitness13OfNat 20 6
          | 8 => cyclicMergeWitness13OfNat 17 8
          | 9 => cyclicMergeWitness13OfNat 13 9
          | 10 => cyclicMergeWitness13OfNat 24 9
          | 11 => cyclicMergeWitness13OfNat 12 11
          | 12 => cyclicMergeWitness13OfNat 8 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 6 0
          | 1 => cyclicMergeWitness13OfNat 19 12
          | 3 => cyclicMergeWitness13OfNat 9 0
          | 4 => cyclicMergeWitness13OfNat 23 4
          | 6 => cyclicMergeWitness13OfNat 15 0
          | 7 => cyclicMergeWitness13OfNat 15 7
          | 9 => cyclicMergeWitness13OfNat 23 0
          | 10 => cyclicMergeWitness13OfNat 9 10
          | 12 => cyclicMergeWitness13OfNat 19 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 12
          | 1 => cyclicMergeWitness13OfNat 24 12
          | 2 => cyclicMergeWitness13OfNat 18 2
          | 3 => cyclicMergeWitness13OfNat 29 2
          | 4 => cyclicMergeWitness13OfNat 29 2
          | 5 => cyclicMergeWitness13OfNat 30 5
          | 6 => cyclicMergeWitness13OfNat 28 6
          | 7 => cyclicMergeWitness13OfNat 28 6
          | 8 => cyclicMergeWitness13OfNat 17 8
          | 9 => cyclicMergeWitness13OfNat 24 9
          | 10 => cyclicMergeWitness13OfNat 24 9
          | 11 => cyclicMergeWitness13OfNat 12 11
          | 12 => cyclicMergeWitness13OfNat 11 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 19 12
          | 1 => cyclicMergeWitness13OfNat 31 11
          | 2 => cyclicMergeWitness13OfNat 14 2
          | 3 => cyclicMergeWitness13OfNat 30 2
          | 5 => cyclicMergeWitness13OfNat 22 5
          | 6 => cyclicMergeWitness13OfNat 20 6
          | 8 => cyclicMergeWitness13OfNat 30 8
          | 9 => cyclicMergeWitness13OfNat 13 9
          | 10 => cyclicMergeWitness13OfNat 31 9
          | 11 => cyclicMergeWitness13OfNat 19 11
          | 12 => cyclicMergeWitness13OfNat 8 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 9 0
          | 1 => cyclicMergeWitness13OfNat 30 12
          | 3 => cyclicMergeWitness13OfNat 15 0
          | 4 => cyclicMergeWitness13OfNat 23 4
          | 6 => cyclicMergeWitness13OfNat 23 0
          | 7 => cyclicMergeWitness13OfNat 15 7
          | 9 => cyclicMergeWitness13OfNat 30 11
          | 10 => cyclicMergeWitness13OfNat 9 10
          | 11 => cyclicMergeWitness13OfNat 31 9
          | 12 => cyclicMergeWitness13OfNat 31 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 7 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 7 0
          | 1 => cyclicMergeWitness13OfNat 7 0
          | 2 => cyclicMergeWitness13OfNat 7 0
          | 3 => cyclicMergeWitness13OfNat 7 0
          | 4 => cyclicMergeWitness13OfNat 10 0
          | 12 => cyclicMergeWitness13OfNat 10 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 10 12
          | 1 => cyclicMergeWitness13OfNat 7 0
          | 2 => cyclicMergeWitness13OfNat 7 0
          | 3 => cyclicMergeWitness13OfNat 10 0
          | 4 => cyclicMergeWitness13OfNat 11 0
          | 5 => cyclicMergeWitness13OfNat 12 0
          | 11 => cyclicMergeWitness13OfNat 11 0
          | 12 => cyclicMergeWitness13OfNat 12 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 7 0
          | 1 => cyclicMergeWitness13OfNat 7 0
          | 2 => cyclicMergeWitness13OfNat 7 0
          | 3 => cyclicMergeWitness13OfNat 10 0
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 11 => cyclicMergeWitness13OfNat 24 11
          | 12 => cyclicMergeWitness13OfNat 10 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 10 12
          | 1 => cyclicMergeWitness13OfNat 7 0
          | 2 => cyclicMergeWitness13OfNat 7 0
          | 3 => cyclicMergeWitness13OfNat 10 0
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 5 => cyclicMergeWitness13OfNat 17 0
          | 11 => cyclicMergeWitness13OfNat 18 0
          | 12 => cyclicMergeWitness13OfNat 24 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 12
          | 1 => cyclicMergeWitness13OfNat 11 0
          | 2 => cyclicMergeWitness13OfNat 12 0
          | 3 => cyclicMergeWitness13OfNat 24 12
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 5 => cyclicMergeWitness13OfNat 17 0
          | 8 => cyclicMergeWitness13OfNat 18 0
          | 9 => cyclicMergeWitness13OfNat 24 11
          | 10 => cyclicMergeWitness13OfNat 24 12
          | 11 => cyclicMergeWitness13OfNat 11 0
          | 12 => cyclicMergeWitness13OfNat 12 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 7 0
          | 1 => cyclicMergeWitness13OfNat 7 0
          | 2 => cyclicMergeWitness13OfNat 10 0
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 4 => cyclicMergeWitness13OfNat 31 0
          | 10 => cyclicMergeWitness13OfNat 31 10
          | 11 => cyclicMergeWitness13OfNat 24 11
          | 12 => cyclicMergeWitness13OfNat 10 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 12
          | 1 => cyclicMergeWitness13OfNat 11 0
          | 2 => cyclicMergeWitness13OfNat 12 0
          | 3 => cyclicMergeWitness13OfNat 24 12
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 5 => cyclicMergeWitness13OfNat 17 0
          | 6 => cyclicMergeWitness13OfNat 28 12
          | 7 => cyclicMergeWitness13OfNat 28 0
          | 8 => cyclicMergeWitness13OfNat 30 0
          | 9 => cyclicMergeWitness13OfNat 29 11
          | 10 => cyclicMergeWitness13OfNat 29 12
          | 11 => cyclicMergeWitness13OfNat 18 0
          | 12 => cyclicMergeWitness13OfNat 24 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 8 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 8 0
          | 1 => cyclicMergeWitness13OfNat 8 0
          | 2 => cyclicMergeWitness13OfNat 8 0
          | 3 => cyclicMergeWitness13OfNat 11 0
          | 4 => cyclicMergeWitness13OfNat 13 0
          | 11 => cyclicMergeWitness13OfNat 14 0
          | 12 => cyclicMergeWitness13OfNat 12 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 12 12
          | 1 => cyclicMergeWitness13OfNat 8 0
          | 2 => cyclicMergeWitness13OfNat 11 0
          | 4 => cyclicMergeWitness13OfNat 8 0
          | 7 => cyclicMergeWitness13OfNat 13 0
          | 8 => cyclicMergeWitness13OfNat 14 0
          | 11 => cyclicMergeWitness13OfNat 8 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 8 0
          | 1 => cyclicMergeWitness13OfNat 8 0
          | 2 => cyclicMergeWitness13OfNat 11 0
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 24 10
          | 12 => cyclicMergeWitness13OfNat 12 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 12 12
          | 1 => cyclicMergeWitness13OfNat 8 0
          | 2 => cyclicMergeWitness13OfNat 11 0
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 4 => cyclicMergeWitness13OfNat 13 0
          | 7 => cyclicMergeWitness13OfNat 20 0
          | 8 => cyclicMergeWitness13OfNat 22 0
          | 11 => cyclicMergeWitness13OfNat 14 0
          | 12 => cyclicMergeWitness13OfNat 24 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 19 12
          | 1 => cyclicMergeWitness13OfNat 8 0
          | 2 => cyclicMergeWitness13OfNat 19 0
          | 4 => cyclicMergeWitness13OfNat 13 0
          | 5 => cyclicMergeWitness13OfNat 22 0
          | 7 => cyclicMergeWitness13OfNat 20 0
          | 8 => cyclicMergeWitness13OfNat 14 0
          | 10 => cyclicMergeWitness13OfNat 19 12
          | 11 => cyclicMergeWitness13OfNat 8 0
          | 12 => cyclicMergeWitness13OfNat 19 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 8 0
          | 1 => cyclicMergeWitness13OfNat 11 0
          | 2 => cyclicMergeWitness13OfNat 24 0
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 4 => cyclicMergeWitness13OfNat 31 0
          | 6 => cyclicMergeWitness13OfNat 25 0
          | 7 => cyclicMergeWitness13OfNat 25 7
          | 9 => cyclicMergeWitness13OfNat 31 9
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 24 10
          | 12 => cyclicMergeWitness13OfNat 12 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 19 12
          | 1 => cyclicMergeWitness13OfNat 8 0
          | 2 => cyclicMergeWitness13OfNat 19 0
          | 3 => cyclicMergeWitness13OfNat 31 12
          | 4 => cyclicMergeWitness13OfNat 13 0
          | 5 => cyclicMergeWitness13OfNat 30 0
          | 7 => cyclicMergeWitness13OfNat 20 0
          | 8 => cyclicMergeWitness13OfNat 22 0
          | 10 => cyclicMergeWitness13OfNat 30 12
          | 11 => cyclicMergeWitness13OfNat 14 0
          | 12 => cyclicMergeWitness13OfNat 31 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 9 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 9 0
          | 1 => cyclicMergeWitness13OfNat 13 12
          | 2 => cyclicMergeWitness13OfNat 14 2
          | 3 => cyclicMergeWitness13OfNat 9 0
          | 4 => cyclicMergeWitness13OfNat 14 2
          | 6 => cyclicMergeWitness13OfNat 15 0
          | 10 => cyclicMergeWitness13OfNat 15 10
          | 12 => cyclicMergeWitness13OfNat 13 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 9 0
          | 3 => cyclicMergeWitness13OfNat 9 0
          | 6 => cyclicMergeWitness13OfNat 9 0
          | 7 => cyclicMergeWitness13OfNat 15 10
          | 9 => cyclicMergeWitness13OfNat 15 0
          | 10 => cyclicMergeWitness13OfNat 9 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 13 12
          | 1 => cyclicMergeWitness13OfNat 24 12
          | 2 => cyclicMergeWitness13OfNat 14 2
          | 3 => cyclicMergeWitness13OfNat 14 2
          | 4 => cyclicMergeWitness13OfNat 18 2
          | 5 => cyclicMergeWitness13OfNat 22 5
          | 6 => cyclicMergeWitness13OfNat 22 5
          | 9 => cyclicMergeWitness13OfNat 20 9
          | 10 => cyclicMergeWitness13OfNat 20 9
          | 11 => cyclicMergeWitness13OfNat 17 11
          | 12 => cyclicMergeWitness13OfNat 13 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 9 0
          | 1 => cyclicMergeWitness13OfNat 24 12
          | 2 => cyclicMergeWitness13OfNat 24 12
          | 3 => cyclicMergeWitness13OfNat 9 0
          | 4 => cyclicMergeWitness13OfNat 18 2
          | 6 => cyclicMergeWitness13OfNat 15 0
          | 7 => cyclicMergeWitness13OfNat 23 7
          | 9 => cyclicMergeWitness13OfNat 23 0
          | 10 => cyclicMergeWitness13OfNat 15 10
          | 12 => cyclicMergeWitness13OfNat 17 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 9 0
          | 3 => cyclicMergeWitness13OfNat 9 0
          | 4 => cyclicMergeWitness13OfNat 23 7
          | 6 => cyclicMergeWitness13OfNat 15 0
          | 7 => cyclicMergeWitness13OfNat 15 10
          | 9 => cyclicMergeWitness13OfNat 23 0
          | 10 => cyclicMergeWitness13OfNat 9 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 12
          | 1 => cyclicMergeWitness13OfNat 24 12
          | 2 => cyclicMergeWitness13OfNat 14 2
          | 3 => cyclicMergeWitness13OfNat 18 2
          | 4 => cyclicMergeWitness13OfNat 29 2
          | 5 => cyclicMergeWitness13OfNat 22 5
          | 6 => cyclicMergeWitness13OfNat 30 5
          | 8 => cyclicMergeWitness13OfNat 30 8
          | 9 => cyclicMergeWitness13OfNat 20 9
          | 10 => cyclicMergeWitness13OfNat 28 9
          | 11 => cyclicMergeWitness13OfNat 17 11
          | 12 => cyclicMergeWitness13OfNat 13 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 9 0
          | 1 => cyclicMergeWitness13OfNat 31 12
          | 2 => cyclicMergeWitness13OfNat 31 11
          | 3 => cyclicMergeWitness13OfNat 9 0
          | 4 => cyclicMergeWitness13OfNat 30 2
          | 6 => cyclicMergeWitness13OfNat 15 0
          | 7 => cyclicMergeWitness13OfNat 23 7
          | 9 => cyclicMergeWitness13OfNat 23 0
          | 10 => cyclicMergeWitness13OfNat 15 10
          | 12 => cyclicMergeWitness13OfNat 30 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 10 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 10 0
          | 1 => cyclicMergeWitness13OfNat 10 0
          | 2 => cyclicMergeWitness13OfNat 10 0
          | 3 => cyclicMergeWitness13OfNat 10 0
          | 4 => cyclicMergeWitness13OfNat 10 0
          | 5 => cyclicMergeWitness13OfNat 24 0
          | 12 => cyclicMergeWitness13OfNat 24 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 12
          | 1 => cyclicMergeWitness13OfNat 10 0
          | 2 => cyclicMergeWitness13OfNat 10 0
          | 3 => cyclicMergeWitness13OfNat 10 0
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 5 => cyclicMergeWitness13OfNat 16 0
          | 6 => cyclicMergeWitness13OfNat 24 12
          | 11 => cyclicMergeWitness13OfNat 24 0
          | 12 => cyclicMergeWitness13OfNat 16 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 10 0
          | 1 => cyclicMergeWitness13OfNat 10 0
          | 2 => cyclicMergeWitness13OfNat 10 0
          | 3 => cyclicMergeWitness13OfNat 10 0
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 5 => cyclicMergeWitness13OfNat 31 0
          | 11 => cyclicMergeWitness13OfNat 31 11
          | 12 => cyclicMergeWitness13OfNat 24 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 12
          | 1 => cyclicMergeWitness13OfNat 10 0
          | 2 => cyclicMergeWitness13OfNat 10 0
          | 3 => cyclicMergeWitness13OfNat 10 0
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 5 => cyclicMergeWitness13OfNat 31 0
          | 6 => cyclicMergeWitness13OfNat 28 12
          | 11 => cyclicMergeWitness13OfNat 29 0
          | 12 => cyclicMergeWitness13OfNat 31 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 12
          | 1 => cyclicMergeWitness13OfNat 24 0
          | 2 => cyclicMergeWitness13OfNat 16 0
          | 3 => cyclicMergeWitness13OfNat 24 12
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 5 => cyclicMergeWitness13OfNat 31 0
          | 6 => cyclicMergeWitness13OfNat 28 12
          | 8 => cyclicMergeWitness13OfNat 29 0
          | 9 => cyclicMergeWitness13OfNat 31 11
          | 10 => cyclicMergeWitness13OfNat 24 12
          | 11 => cyclicMergeWitness13OfNat 24 0
          | 12 => cyclicMergeWitness13OfNat 16 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 11 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 11 0
          | 1 => cyclicMergeWitness13OfNat 11 0
          | 2 => cyclicMergeWitness13OfNat 11 0
          | 3 => cyclicMergeWitness13OfNat 11 0
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 11 => cyclicMergeWitness13OfNat 18 0
          | 12 => cyclicMergeWitness13OfNat 16 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 16 12
          | 1 => cyclicMergeWitness13OfNat 11 0
          | 2 => cyclicMergeWitness13OfNat 11 0
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 4 => cyclicMergeWitness13OfNat 11 0
          | 5 => cyclicMergeWitness13OfNat 19 0
          | 7 => cyclicMergeWitness13OfNat 24 0
          | 8 => cyclicMergeWitness13OfNat 18 0
          | 11 => cyclicMergeWitness13OfNat 11 0
          | 12 => cyclicMergeWitness13OfNat 19 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 11 0
          | 1 => cyclicMergeWitness13OfNat 11 0
          | 2 => cyclicMergeWitness13OfNat 11 0
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 10 => cyclicMergeWitness13OfNat 31 10
          | 11 => cyclicMergeWitness13OfNat 31 10
          | 12 => cyclicMergeWitness13OfNat 16 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 16 12
          | 1 => cyclicMergeWitness13OfNat 11 0
          | 2 => cyclicMergeWitness13OfNat 11 0
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 5 => cyclicMergeWitness13OfNat 30 0
          | 7 => cyclicMergeWitness13OfNat 28 0
          | 8 => cyclicMergeWitness13OfNat 30 0
          | 11 => cyclicMergeWitness13OfNat 18 0
          | 12 => cyclicMergeWitness13OfNat 31 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 31 12
          | 1 => cyclicMergeWitness13OfNat 11 0
          | 2 => cyclicMergeWitness13OfNat 19 0
          | 3 => cyclicMergeWitness13OfNat 31 12
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 5 => cyclicMergeWitness13OfNat 30 0
          | 7 => cyclicMergeWitness13OfNat 28 0
          | 8 => cyclicMergeWitness13OfNat 18 0
          | 9 => cyclicMergeWitness13OfNat 31 10
          | 10 => cyclicMergeWitness13OfNat 31 12
          | 11 => cyclicMergeWitness13OfNat 11 0
          | 12 => cyclicMergeWitness13OfNat 19 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 12 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 12 0
          | 1 => cyclicMergeWitness13OfNat 12 0
          | 2 => cyclicMergeWitness13OfNat 12 0
          | 3 => cyclicMergeWitness13OfNat 12 0
          | 4 => cyclicMergeWitness13OfNat 16 0
          | 5 => cyclicMergeWitness13OfNat 17 0
          | 12 => cyclicMergeWitness13OfNat 24 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 11
          | 1 => cyclicMergeWitness13OfNat 12 0
          | 2 => cyclicMergeWitness13OfNat 12 0
          | 3 => cyclicMergeWitness13OfNat 16 0
          | 4 => cyclicMergeWitness13OfNat 19 0
          | 5 => cyclicMergeWitness13OfNat 12 0
          | 8 => cyclicMergeWitness13OfNat 17 0
          | 9 => cyclicMergeWitness13OfNat 24 11
          | 11 => cyclicMergeWitness13OfNat 19 0
          | 12 => cyclicMergeWitness13OfNat 12 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 12 0
          | 1 => cyclicMergeWitness13OfNat 12 0
          | 2 => cyclicMergeWitness13OfNat 12 0
          | 3 => cyclicMergeWitness13OfNat 16 0
          | 4 => cyclicMergeWitness13OfNat 31 0
          | 5 => cyclicMergeWitness13OfNat 31 0
          | 11 => cyclicMergeWitness13OfNat 24 11
          | 12 => cyclicMergeWitness13OfNat 24 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 11
          | 1 => cyclicMergeWitness13OfNat 12 0
          | 2 => cyclicMergeWitness13OfNat 12 0
          | 3 => cyclicMergeWitness13OfNat 16 0
          | 4 => cyclicMergeWitness13OfNat 31 0
          | 5 => cyclicMergeWitness13OfNat 17 0
          | 8 => cyclicMergeWitness13OfNat 30 0
          | 9 => cyclicMergeWitness13OfNat 29 11
          | 11 => cyclicMergeWitness13OfNat 30 0
          | 12 => cyclicMergeWitness13OfNat 24 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 31 11
          | 1 => cyclicMergeWitness13OfNat 19 0
          | 2 => cyclicMergeWitness13OfNat 12 0
          | 3 => cyclicMergeWitness13OfNat 31 11
          | 4 => cyclicMergeWitness13OfNat 31 0
          | 5 => cyclicMergeWitness13OfNat 17 0
          | 6 => cyclicMergeWitness13OfNat 29 11
          | 8 => cyclicMergeWitness13OfNat 30 0
          | 9 => cyclicMergeWitness13OfNat 24 11
          | 10 => cyclicMergeWitness13OfNat 31 11
          | 11 => cyclicMergeWitness13OfNat 19 0
          | 12 => cyclicMergeWitness13OfNat 12 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 13 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 13 0
          | 1 => cyclicMergeWitness13OfNat 13 0
          | 2 => cyclicMergeWitness13OfNat 13 0
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 4 => cyclicMergeWitness13OfNat 13 0
          | 5 => cyclicMergeWitness13OfNat 24 0
          | 7 => cyclicMergeWitness13OfNat 20 0
          | 11 => cyclicMergeWitness13OfNat 21 0
          | 12 => cyclicMergeWitness13OfNat 17 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 17 12
          | 1 => cyclicMergeWitness13OfNat 13 0
          | 2 => cyclicMergeWitness13OfNat 24 0
          | 4 => cyclicMergeWitness13OfNat 13 0
          | 7 => cyclicMergeWitness13OfNat 13 0
          | 8 => cyclicMergeWitness13OfNat 21 0
          | 10 => cyclicMergeWitness13OfNat 20 0
          | 11 => cyclicMergeWitness13OfNat 13 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 13 0
          | 1 => cyclicMergeWitness13OfNat 13 0
          | 2 => cyclicMergeWitness13OfNat 24 0
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 5 => cyclicMergeWitness13OfNat 31 0
          | 6 => cyclicMergeWitness13OfNat 25 0
          | 7 => cyclicMergeWitness13OfNat 25 0
          | 10 => cyclicMergeWitness13OfNat 28 10
          | 11 => cyclicMergeWitness13OfNat 28 10
          | 12 => cyclicMergeWitness13OfNat 17 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 17 12
          | 1 => cyclicMergeWitness13OfNat 13 0
          | 2 => cyclicMergeWitness13OfNat 24 0
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 4 => cyclicMergeWitness13OfNat 13 0
          | 5 => cyclicMergeWitness13OfNat 31 0
          | 7 => cyclicMergeWitness13OfNat 20 0
          | 8 => cyclicMergeWitness13OfNat 27 0
          | 10 => cyclicMergeWitness13OfNat 30 12
          | 11 => cyclicMergeWitness13OfNat 21 0
          | 12 => cyclicMergeWitness13OfNat 28 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 30 12
          | 1 => cyclicMergeWitness13OfNat 13 0
          | 2 => cyclicMergeWitness13OfNat 31 0
          | 4 => cyclicMergeWitness13OfNat 13 0
          | 5 => cyclicMergeWitness13OfNat 27 0
          | 7 => cyclicMergeWitness13OfNat 20 0
          | 8 => cyclicMergeWitness13OfNat 21 0
          | 10 => cyclicMergeWitness13OfNat 30 12
          | 11 => cyclicMergeWitness13OfNat 13 0
          | 12 => cyclicMergeWitness13OfNat 31 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 14 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 14 0
          | 1 => cyclicMergeWitness13OfNat 14 0
          | 2 => cyclicMergeWitness13OfNat 14 0
          | 3 => cyclicMergeWitness13OfNat 18 0
          | 4 => cyclicMergeWitness13OfNat 21 0
          | 8 => cyclicMergeWitness13OfNat 22 0
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 14 0
          | 12 => cyclicMergeWitness13OfNat 24 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 10
          | 1 => cyclicMergeWitness13OfNat 14 0
          | 2 => cyclicMergeWitness13OfNat 18 0
          | 4 => cyclicMergeWitness13OfNat 14 0
          | 5 => cyclicMergeWitness13OfNat 22 0
          | 7 => cyclicMergeWitness13OfNat 21 0
          | 8 => cyclicMergeWitness13OfNat 14 0
          | 11 => cyclicMergeWitness13OfNat 14 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 14 0
          | 1 => cyclicMergeWitness13OfNat 14 0
          | 2 => cyclicMergeWitness13OfNat 18 0
          | 3 => cyclicMergeWitness13OfNat 29 0
          | 4 => cyclicMergeWitness13OfNat 29 0
          | 7 => cyclicMergeWitness13OfNat 25 7
          | 8 => cyclicMergeWitness13OfNat 25 7
          | 9 => cyclicMergeWitness13OfNat 31 9
          | 10 => cyclicMergeWitness13OfNat 24 10
          | 11 => cyclicMergeWitness13OfNat 24 10
          | 12 => cyclicMergeWitness13OfNat 24 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 10
          | 1 => cyclicMergeWitness13OfNat 14 0
          | 2 => cyclicMergeWitness13OfNat 18 0
          | 3 => cyclicMergeWitness13OfNat 29 0
          | 4 => cyclicMergeWitness13OfNat 21 0
          | 5 => cyclicMergeWitness13OfNat 30 0
          | 7 => cyclicMergeWitness13OfNat 26 0
          | 8 => cyclicMergeWitness13OfNat 22 0
          | 10 => cyclicMergeWitness13OfNat 31 9
          | 11 => cyclicMergeWitness13OfNat 14 0
          | 12 => cyclicMergeWitness13OfNat 24 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 31 9
          | 1 => cyclicMergeWitness13OfNat 14 0
          | 2 => cyclicMergeWitness13OfNat 30 0
          | 4 => cyclicMergeWitness13OfNat 21 0
          | 5 => cyclicMergeWitness13OfNat 22 0
          | 7 => cyclicMergeWitness13OfNat 26 0
          | 8 => cyclicMergeWitness13OfNat 14 0
          | 10 => cyclicMergeWitness13OfNat 31 9
          | 11 => cyclicMergeWitness13OfNat 14 0
          | 12 => cyclicMergeWitness13OfNat 30 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 15 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 15 0
          | 1 => cyclicMergeWitness13OfNat 20 12
          | 2 => cyclicMergeWitness13OfNat 21 2
          | 3 => cyclicMergeWitness13OfNat 15 0
          | 4 => cyclicMergeWitness13OfNat 21 2
          | 5 => cyclicMergeWitness13OfNat 22 5
          | 6 => cyclicMergeWitness13OfNat 15 0
          | 7 => cyclicMergeWitness13OfNat 22 5
          | 9 => cyclicMergeWitness13OfNat 23 0
          | 10 => cyclicMergeWitness13OfNat 23 10
          | 12 => cyclicMergeWitness13OfNat 20 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 15 0
          | 3 => cyclicMergeWitness13OfNat 15 0
          | 6 => cyclicMergeWitness13OfNat 15 0
          | 7 => cyclicMergeWitness13OfNat 23 10
          | 9 => cyclicMergeWitness13OfNat 15 0
          | 10 => cyclicMergeWitness13OfNat 15 0
          | 12 => cyclicMergeWitness13OfNat 23 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 20 12
          | 1 => cyclicMergeWitness13OfNat 28 12
          | 2 => cyclicMergeWitness13OfNat 21 2
          | 3 => cyclicMergeWitness13OfNat 21 2
          | 4 => cyclicMergeWitness13OfNat 29 2
          | 5 => cyclicMergeWitness13OfNat 22 5
          | 6 => cyclicMergeWitness13OfNat 22 5
          | 7 => cyclicMergeWitness13OfNat 30 5
          | 8 => cyclicMergeWitness13OfNat 30 8
          | 9 => cyclicMergeWitness13OfNat 30 8
          | 10 => cyclicMergeWitness13OfNat 30 8
          | 11 => cyclicMergeWitness13OfNat 30 11
          | 12 => cyclicMergeWitness13OfNat 20 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 15 0
          | 1 => cyclicMergeWitness13OfNat 28 12
          | 2 => cyclicMergeWitness13OfNat 28 12
          | 3 => cyclicMergeWitness13OfNat 15 0
          | 4 => cyclicMergeWitness13OfNat 29 2
          | 5 => cyclicMergeWitness13OfNat 29 2
          | 6 => cyclicMergeWitness13OfNat 15 0
          | 7 => cyclicMergeWitness13OfNat 30 5
          | 9 => cyclicMergeWitness13OfNat 23 0
          | 10 => cyclicMergeWitness13OfNat 23 10
          | 12 => cyclicMergeWitness13OfNat 30 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 15 0
          | 3 => cyclicMergeWitness13OfNat 15 0
          | 4 => cyclicMergeWitness13OfNat 30 5
          | 6 => cyclicMergeWitness13OfNat 15 0
          | 7 => cyclicMergeWitness13OfNat 23 10
          | 9 => cyclicMergeWitness13OfNat 23 0
          | 10 => cyclicMergeWitness13OfNat 15 0
          | 12 => cyclicMergeWitness13OfNat 30 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 16 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 16 0
          | 1 => cyclicMergeWitness13OfNat 16 0
          | 2 => cyclicMergeWitness13OfNat 16 0
          | 3 => cyclicMergeWitness13OfNat 16 0
          | 4 => cyclicMergeWitness13OfNat 16 0
          | 5 => cyclicMergeWitness13OfNat 31 0
          | 12 => cyclicMergeWitness13OfNat 31 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 31 11
          | 1 => cyclicMergeWitness13OfNat 16 0
          | 2 => cyclicMergeWitness13OfNat 16 0
          | 3 => cyclicMergeWitness13OfNat 16 0
          | 4 => cyclicMergeWitness13OfNat 31 0
          | 5 => cyclicMergeWitness13OfNat 16 0
          | 6 => cyclicMergeWitness13OfNat 31 11
          | 8 => cyclicMergeWitness13OfNat 31 0
          | 9 => cyclicMergeWitness13OfNat 31 11
          | 11 => cyclicMergeWitness13OfNat 31 0
          | 12 => cyclicMergeWitness13OfNat 16 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 17 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 17 0
          | 1 => cyclicMergeWitness13OfNat 17 0
          | 2 => cyclicMergeWitness13OfNat 17 0
          | 3 => cyclicMergeWitness13OfNat 17 0
          | 4 => cyclicMergeWitness13OfNat 31 0
          | 5 => cyclicMergeWitness13OfNat 17 0
          | 6 => cyclicMergeWitness13OfNat 31 0
          | 8 => cyclicMergeWitness13OfNat 30 0
          | 12 => cyclicMergeWitness13OfNat 28 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 28 11
          | 1 => cyclicMergeWitness13OfNat 17 0
          | 2 => cyclicMergeWitness13OfNat 17 0
          | 3 => cyclicMergeWitness13OfNat 31 0
          | 4 => cyclicMergeWitness13OfNat 30 0
          | 5 => cyclicMergeWitness13OfNat 17 0
          | 8 => cyclicMergeWitness13OfNat 17 0
          | 9 => cyclicMergeWitness13OfNat 28 11
          | 11 => cyclicMergeWitness13OfNat 30 0
          | 12 => cyclicMergeWitness13OfNat 17 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 18 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 18 0
          | 1 => cyclicMergeWitness13OfNat 18 0
          | 2 => cyclicMergeWitness13OfNat 18 0
          | 3 => cyclicMergeWitness13OfNat 18 0
          | 4 => cyclicMergeWitness13OfNat 29 0
          | 8 => cyclicMergeWitness13OfNat 30 0
          | 10 => cyclicMergeWitness13OfNat 31 10
          | 11 => cyclicMergeWitness13OfNat 18 0
          | 12 => cyclicMergeWitness13OfNat 31 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 31 10
          | 1 => cyclicMergeWitness13OfNat 18 0
          | 2 => cyclicMergeWitness13OfNat 18 0
          | 3 => cyclicMergeWitness13OfNat 29 0
          | 4 => cyclicMergeWitness13OfNat 18 0
          | 5 => cyclicMergeWitness13OfNat 30 0
          | 7 => cyclicMergeWitness13OfNat 29 0
          | 8 => cyclicMergeWitness13OfNat 18 0
          | 11 => cyclicMergeWitness13OfNat 18 0
          | 12 => cyclicMergeWitness13OfNat 30 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 19 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 19 0
          | 1 => cyclicMergeWitness13OfNat 19 0
          | 2 => cyclicMergeWitness13OfNat 19 0
          | 3 => cyclicMergeWitness13OfNat 19 0
          | 4 => cyclicMergeWitness13OfNat 31 0
          | 5 => cyclicMergeWitness13OfNat 30 0
          | 11 => cyclicMergeWitness13OfNat 30 0
          | 12 => cyclicMergeWitness13OfNat 31 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 31 10
          | 1 => cyclicMergeWitness13OfNat 19 0
          | 2 => cyclicMergeWitness13OfNat 19 0
          | 3 => cyclicMergeWitness13OfNat 31 0
          | 4 => cyclicMergeWitness13OfNat 19 0
          | 5 => cyclicMergeWitness13OfNat 19 0
          | 7 => cyclicMergeWitness13OfNat 31 0
          | 8 => cyclicMergeWitness13OfNat 30 0
          | 9 => cyclicMergeWitness13OfNat 31 10
          | 11 => cyclicMergeWitness13OfNat 19 0
          | 12 => cyclicMergeWitness13OfNat 19 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 20 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 20 0
          | 1 => cyclicMergeWitness13OfNat 20 0
          | 2 => cyclicMergeWitness13OfNat 20 0
          | 3 => cyclicMergeWitness13OfNat 28 0
          | 4 => cyclicMergeWitness13OfNat 20 0
          | 5 => cyclicMergeWitness13OfNat 28 0
          | 6 => cyclicMergeWitness13OfNat 25 0
          | 7 => cyclicMergeWitness13OfNat 20 0
          | 8 => cyclicMergeWitness13OfNat 25 0
          | 10 => cyclicMergeWitness13OfNat 30 12
          | 11 => cyclicMergeWitness13OfNat 26 0
          | 12 => cyclicMergeWitness13OfNat 30 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 30 12
          | 1 => cyclicMergeWitness13OfNat 20 0
          | 2 => cyclicMergeWitness13OfNat 28 0
          | 4 => cyclicMergeWitness13OfNat 20 0
          | 7 => cyclicMergeWitness13OfNat 20 0
          | 8 => cyclicMergeWitness13OfNat 26 0
          | 10 => cyclicMergeWitness13OfNat 20 0
          | 11 => cyclicMergeWitness13OfNat 20 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 21 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 21 0
          | 1 => cyclicMergeWitness13OfNat 21 0
          | 2 => cyclicMergeWitness13OfNat 21 0
          | 3 => cyclicMergeWitness13OfNat 29 0
          | 4 => cyclicMergeWitness13OfNat 21 0
          | 5 => cyclicMergeWitness13OfNat 29 0
          | 7 => cyclicMergeWitness13OfNat 26 0
          | 8 => cyclicMergeWitness13OfNat 27 0
          | 10 => cyclicMergeWitness13OfNat 28 10
          | 11 => cyclicMergeWitness13OfNat 21 0
          | 12 => cyclicMergeWitness13OfNat 28 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 28 10
          | 1 => cyclicMergeWitness13OfNat 21 0
          | 2 => cyclicMergeWitness13OfNat 29 0
          | 4 => cyclicMergeWitness13OfNat 21 0
          | 5 => cyclicMergeWitness13OfNat 27 0
          | 7 => cyclicMergeWitness13OfNat 21 0
          | 8 => cyclicMergeWitness13OfNat 21 0
          | 10 => cyclicMergeWitness13OfNat 26 0
          | 11 => cyclicMergeWitness13OfNat 21 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 22 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 22 0
          | 1 => cyclicMergeWitness13OfNat 22 0
          | 2 => cyclicMergeWitness13OfNat 22 0
          | 3 => cyclicMergeWitness13OfNat 30 0
          | 4 => cyclicMergeWitness13OfNat 27 0
          | 5 => cyclicMergeWitness13OfNat 30 0
          | 7 => cyclicMergeWitness13OfNat 25 7
          | 8 => cyclicMergeWitness13OfNat 22 0
          | 9 => cyclicMergeWitness13OfNat 25 7
          | 10 => cyclicMergeWitness13OfNat 29 10
          | 11 => cyclicMergeWitness13OfNat 22 0
          | 12 => cyclicMergeWitness13OfNat 29 10
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 29 10
          | 1 => cyclicMergeWitness13OfNat 22 0
          | 2 => cyclicMergeWitness13OfNat 30 0
          | 4 => cyclicMergeWitness13OfNat 22 0
          | 5 => cyclicMergeWitness13OfNat 22 0
          | 7 => cyclicMergeWitness13OfNat 27 0
          | 8 => cyclicMergeWitness13OfNat 22 0
          | 11 => cyclicMergeWitness13OfNat 22 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 23 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 23 0
          | 1 => cyclicMergeWitness13OfNat 30 11
          | 2 => cyclicMergeWitness13OfNat 26 2
          | 3 => cyclicMergeWitness13OfNat 23 0
          | 4 => cyclicMergeWitness13OfNat 26 2
          | 5 => cyclicMergeWitness13OfNat 27 5
          | 6 => cyclicMergeWitness13OfNat 23 0
          | 7 => cyclicMergeWitness13OfNat 27 5
          | 8 => cyclicMergeWitness13OfNat 30 8
          | 9 => cyclicMergeWitness13OfNat 23 0
          | 10 => cyclicMergeWitness13OfNat 30 8
          | 12 => cyclicMergeWitness13OfNat 30 11
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 23 0
          | 2 => cyclicMergeWitness13OfNat 30 11
          | 3 => cyclicMergeWitness13OfNat 23 0
          | 6 => cyclicMergeWitness13OfNat 23 0
          | 7 => cyclicMergeWitness13OfNat 30 8
          | 9 => cyclicMergeWitness13OfNat 23 0
          | 10 => cyclicMergeWitness13OfNat 23 0
          | 12 => cyclicMergeWitness13OfNat 23 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | 24 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 24 0
          | 1 => cyclicMergeWitness13OfNat 24 0
          | 2 => cyclicMergeWitness13OfNat 24 0
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 5 => cyclicMergeWitness13OfNat 24 0
          | 6 => cyclicMergeWitness13OfNat 31 0
          | 7 => cyclicMergeWitness13OfNat 28 0
          | 11 => cyclicMergeWitness13OfNat 29 0
          | 12 => cyclicMergeWitness13OfNat 31 12
          | _ => cyclicMergeWitness13OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness13OfNat 31 12
          | 1 => cyclicMergeWitness13OfNat 24 0
          | 2 => cyclicMergeWitness13OfNat 24 0
          | 3 => cyclicMergeWitness13OfNat 24 0
          | 4 => cyclicMergeWitness13OfNat 24 0
          | 5 => cyclicMergeWitness13OfNat 31 0
          | 6 => cyclicMergeWitness13OfNat 31 12
          | 7 => cyclicMergeWitness13OfNat 24 0
          | 8 => cyclicMergeWitness13OfNat 29 0
          | 10 => cyclicMergeWitness13OfNat 28 0
          | 11 => cyclicMergeWitness13OfNat 24 0
          | 12 => cyclicMergeWitness13OfNat 31 0
          | _ => cyclicMergeWitness13OfNat 0 0
      | _ => cyclicMergeWitness13OfNat 0 0
  | _ => cyclicMergeWitness13OfNat 0 0

end PetersenZeroForcing
