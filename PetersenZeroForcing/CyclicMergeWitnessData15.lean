import PetersenZeroForcing.CyclicCertificateData15

namespace PetersenZeroForcing

/-- Transparent witness constructor.  The generating search is not trusted:
`checkedWithWitnessB` re-checks every supplied witness in the original
`rotateSet` and containment semantics. -/
def cyclicMergeWitness15OfNat (c q : Nat) :
    CyclicCertificate.MergeWitness 15 cyclicCertificate15 where
  target := ⟨c % 27, by
    change c % 27 < 27
    exact Nat.mod_lt c (by decide)⟩
  shift := (q : ZMod 15)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
def cyclicMergeWitness15
    (a b : Fin cyclicCertificate15.shapeCount) (t : ZMod 15) :
    CyclicCertificate.MergeWitness 15 cyclicCertificate15 :=
  match a.val with
  | 0 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 0 0
          | 1 => cyclicMergeWitness15OfNat 2 0
          | 14 => cyclicMergeWitness15OfNat 2 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 3 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 2 0
          | 1 => cyclicMergeWitness15OfNat 5 0
          | 13 => cyclicMergeWitness15OfNat 5 13
          | 14 => cyclicMergeWitness15OfNat 2 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 3 0
          | 1 => cyclicMergeWitness15OfNat 5 0
          | 14 => cyclicMergeWitness15OfNat 5 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 6 0
          | 12 => cyclicMergeWitness15OfNat 6 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 5 0
          | 1 => cyclicMergeWitness15OfNat 7 0
          | 12 => cyclicMergeWitness15OfNat 7 12
          | 13 => cyclicMergeWitness15OfNat 5 13
          | 14 => cyclicMergeWitness15OfNat 5 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 6 0
          | 1 => cyclicMergeWitness15OfNat 8 0
          | 3 => cyclicMergeWitness15OfNat 9 0
          | 12 => cyclicMergeWitness15OfNat 9 12
          | 14 => cyclicMergeWitness15OfNat 8 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 7 0
          | 1 => cyclicMergeWitness15OfNat 10 0
          | 11 => cyclicMergeWitness15OfNat 10 11
          | 12 => cyclicMergeWitness15OfNat 7 12
          | 13 => cyclicMergeWitness15OfNat 7 13
          | 14 => cyclicMergeWitness15OfNat 7 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 8 0
          | 1 => cyclicMergeWitness15OfNat 12 0
          | 2 => cyclicMergeWitness15OfNat 14 2
          | 11 => cyclicMergeWitness15OfNat 13 11
          | 12 => cyclicMergeWitness15OfNat 11 12
          | 13 => cyclicMergeWitness15OfNat 8 13
          | 14 => cyclicMergeWitness15OfNat 8 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 9 0
          | 1 => cyclicMergeWitness15OfNat 13 0
          | 3 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 11 => cyclicMergeWitness15OfNat 14 13
          | 12 => cyclicMergeWitness15OfNat 9 12
          | 13 => cyclicMergeWitness15OfNat 14 0
          | 14 => cyclicMergeWitness15OfNat 13 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 10 0
          | 1 => cyclicMergeWitness15OfNat 20 0
          | 10 => cyclicMergeWitness15OfNat 20 10
          | 11 => cyclicMergeWitness15OfNat 10 11
          | 12 => cyclicMergeWitness15OfNat 10 12
          | 13 => cyclicMergeWitness15OfNat 10 13
          | 14 => cyclicMergeWitness15OfNat 10 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 11 0
          | 1 => cyclicMergeWitness15OfNat 16 0
          | 2 => cyclicMergeWitness15OfNat 18 2
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 11 12
          | 13 => cyclicMergeWitness15OfNat 11 13
          | 14 => cyclicMergeWitness15OfNat 11 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 12 0
          | 1 => cyclicMergeWitness15OfNat 20 14
          | 10 => cyclicMergeWitness15OfNat 17 10
          | 11 => cyclicMergeWitness15OfNat 16 11
          | 12 => cyclicMergeWitness15OfNat 12 12
          | 13 => cyclicMergeWitness15OfNat 12 13
          | 14 => cyclicMergeWitness15OfNat 12 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 13 0
          | 1 => cyclicMergeWitness15OfNat 17 0
          | 2 => cyclicMergeWitness15OfNat 21 2
          | 8 => cyclicMergeWitness15OfNat 21 8
          | 10 => cyclicMergeWitness15OfNat 20 10
          | 11 => cyclicMergeWitness15OfNat 13 11
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 13 13
          | 14 => cyclicMergeWitness15OfNat 13 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 14 0
          | 1 => cyclicMergeWitness15OfNat 20 13
          | 2 => cyclicMergeWitness15OfNat 14 2
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 5 => cyclicMergeWitness15OfNat 21 5
          | 11 => cyclicMergeWitness15OfNat 21 11
          | 12 => cyclicMergeWitness15OfNat 18 12
          | 13 => cyclicMergeWitness15OfNat 14 13
          | 14 => cyclicMergeWitness15OfNat 14 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 15 0
          | 1 => cyclicMergeWitness15OfNat 21 0
          | 2 => cyclicMergeWitness15OfNat 21 13
          | 3 => cyclicMergeWitness15OfNat 15 0
          | 4 => cyclicMergeWitness15OfNat 21 0
          | 5 => cyclicMergeWitness15OfNat 21 13
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 7 => cyclicMergeWitness15OfNat 21 0
          | 8 => cyclicMergeWitness15OfNat 21 13
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 10 => cyclicMergeWitness15OfNat 21 0
          | 11 => cyclicMergeWitness15OfNat 21 13
          | 12 => cyclicMergeWitness15OfNat 15 0
          | 13 => cyclicMergeWitness15OfNat 21 0
          | 14 => cyclicMergeWitness15OfNat 21 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 16 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 16 0
          | 1 => cyclicMergeWitness15OfNat 25 14
          | 10 => cyclicMergeWitness15OfNat 25 10
          | 11 => cyclicMergeWitness15OfNat 16 11
          | 12 => cyclicMergeWitness15OfNat 16 12
          | 13 => cyclicMergeWitness15OfNat 16 13
          | 14 => cyclicMergeWitness15OfNat 16 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 17 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 17 0
          | 1 => cyclicMergeWitness15OfNat 26 14
          | 7 => cyclicMergeWitness15OfNat 26 5
          | 9 => cyclicMergeWitness15OfNat 25 9
          | 10 => cyclicMergeWitness15OfNat 17 10
          | 11 => cyclicMergeWitness15OfNat 25 11
          | 12 => cyclicMergeWitness15OfNat 17 12
          | 13 => cyclicMergeWitness15OfNat 17 13
          | 14 => cyclicMergeWitness15OfNat 17 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 18 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 18 0
          | 1 => cyclicMergeWitness15OfNat 25 13
          | 2 => cyclicMergeWitness15OfNat 18 2
          | 3 => cyclicMergeWitness15OfNat 25 0
          | 5 => cyclicMergeWitness15OfNat 26 5
          | 11 => cyclicMergeWitness15OfNat 26 11
          | 12 => cyclicMergeWitness15OfNat 18 12
          | 13 => cyclicMergeWitness15OfNat 18 13
          | 14 => cyclicMergeWitness15OfNat 18 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 19 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 19 0
          | 1 => cyclicMergeWitness15OfNat 25 13
          | 2 => cyclicMergeWitness15OfNat 23 2
          | 10 => cyclicMergeWitness15OfNat 22 10
          | 11 => cyclicMergeWitness15OfNat 25 11
          | 12 => cyclicMergeWitness15OfNat 19 12
          | 13 => cyclicMergeWitness15OfNat 19 13
          | 14 => cyclicMergeWitness15OfNat 19 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 20 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 0
          | 1 => cyclicMergeWitness15OfNat 25 0
          | 2 => cyclicMergeWitness15OfNat 26 2
          | 8 => cyclicMergeWitness15OfNat 26 8
          | 9 => cyclicMergeWitness15OfNat 25 9
          | 10 => cyclicMergeWitness15OfNat 20 10
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 20 13
          | 14 => cyclicMergeWitness15OfNat 20 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 21 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 21 0
          | 1 => cyclicMergeWitness15OfNat 26 13
          | 2 => cyclicMergeWitness15OfNat 21 2
          | 3 => cyclicMergeWitness15OfNat 26 0
          | 4 => cyclicMergeWitness15OfNat 24 13
          | 5 => cyclicMergeWitness15OfNat 21 5
          | 6 => cyclicMergeWitness15OfNat 24 0
          | 7 => cyclicMergeWitness15OfNat 24 7
          | 8 => cyclicMergeWitness15OfNat 21 8
          | 9 => cyclicMergeWitness15OfNat 24 9
          | 10 => cyclicMergeWitness15OfNat 26 10
          | 11 => cyclicMergeWitness15OfNat 21 11
          | 12 => cyclicMergeWitness15OfNat 26 12
          | 13 => cyclicMergeWitness15OfNat 21 13
          | 14 => cyclicMergeWitness15OfNat 21 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 1 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 3 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 1 0
          | 3 => cyclicMergeWitness15OfNat 4 0
          | 12 => cyclicMergeWitness15OfNat 4 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 5 14
          | 14 => cyclicMergeWitness15OfNat 5 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 3 0
          | 3 => cyclicMergeWitness15OfNat 6 3
          | 12 => cyclicMergeWitness15OfNat 6 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 4 0
          | 3 => cyclicMergeWitness15OfNat 6 3
          | 9 => cyclicMergeWitness15OfNat 6 12
          | 12 => cyclicMergeWitness15OfNat 4 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 7 14
          | 2 => cyclicMergeWitness15OfNat 8 2
          | 11 => cyclicMergeWitness15OfNat 8 11
          | 13 => cyclicMergeWitness15OfNat 7 13
          | 14 => cyclicMergeWitness15OfNat 5 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 6 0
          | 3 => cyclicMergeWitness15OfNat 6 3
          | 6 => cyclicMergeWitness15OfNat 9 3
          | 9 => cyclicMergeWitness15OfNat 9 9
          | 12 => cyclicMergeWitness15OfNat 6 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 10 14
          | 1 => cyclicMergeWitness15OfNat 12 1
          | 2 => cyclicMergeWitness15OfNat 11 2
          | 10 => cyclicMergeWitness15OfNat 12 10
          | 11 => cyclicMergeWitness15OfNat 11 11
          | 12 => cyclicMergeWitness15OfNat 10 12
          | 13 => cyclicMergeWitness15OfNat 7 13
          | 14 => cyclicMergeWitness15OfNat 7 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 12 14
          | 2 => cyclicMergeWitness15OfNat 8 2
          | 5 => cyclicMergeWitness15OfNat 14 5
          | 8 => cyclicMergeWitness15OfNat 13 8
          | 11 => cyclicMergeWitness15OfNat 8 11
          | 13 => cyclicMergeWitness15OfNat 11 13
          | 14 => cyclicMergeWitness15OfNat 8 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 9 0
          | 3 => cyclicMergeWitness15OfNat 9 3
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 9 9
          | 12 => cyclicMergeWitness15OfNat 9 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 14
          | 1 => cyclicMergeWitness15OfNat 16 1
          | 2 => cyclicMergeWitness15OfNat 20 2
          | 9 => cyclicMergeWitness15OfNat 20 8
          | 10 => cyclicMergeWitness15OfNat 16 10
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 10 12
          | 13 => cyclicMergeWitness15OfNat 10 13
          | 14 => cyclicMergeWitness15OfNat 10 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 16 14
          | 1 => cyclicMergeWitness15OfNat 19 1
          | 2 => cyclicMergeWitness15OfNat 11 2
          | 5 => cyclicMergeWitness15OfNat 18 5
          | 8 => cyclicMergeWitness15OfNat 20 8
          | 10 => cyclicMergeWitness15OfNat 19 10
          | 11 => cyclicMergeWitness15OfNat 11 11
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 11 13
          | 14 => cyclicMergeWitness15OfNat 11 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 13
          | 1 => cyclicMergeWitness15OfNat 12 1
          | 2 => cyclicMergeWitness15OfNat 19 2
          | 4 => cyclicMergeWitness15OfNat 20 2
          | 7 => cyclicMergeWitness15OfNat 17 7
          | 10 => cyclicMergeWitness15OfNat 12 10
          | 11 => cyclicMergeWitness15OfNat 19 11
          | 12 => cyclicMergeWitness15OfNat 16 12
          | 13 => cyclicMergeWitness15OfNat 12 13
          | 14 => cyclicMergeWitness15OfNat 12 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 17 14
          | 2 => cyclicMergeWitness15OfNat 13 2
          | 5 => cyclicMergeWitness15OfNat 21 5
          | 8 => cyclicMergeWitness15OfNat 13 8
          | 11 => cyclicMergeWitness15OfNat 13 11
          | 13 => cyclicMergeWitness15OfNat 20 13
          | 14 => cyclicMergeWitness15OfNat 13 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 12
          | 2 => cyclicMergeWitness15OfNat 14 2
          | 5 => cyclicMergeWitness15OfNat 14 5
          | 8 => cyclicMergeWitness15OfNat 21 8
          | 11 => cyclicMergeWitness15OfNat 14 11
          | 13 => cyclicMergeWitness15OfNat 18 13
          | 14 => cyclicMergeWitness15OfNat 14 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 15 0
          | 3 => cyclicMergeWitness15OfNat 15 0
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 12 => cyclicMergeWitness15OfNat 15 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 16 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 25 13
          | 1 => cyclicMergeWitness15OfNat 16 1
          | 2 => cyclicMergeWitness15OfNat 25 2
          | 4 => cyclicMergeWitness15OfNat 25 2
          | 7 => cyclicMergeWitness15OfNat 25 7
          | 9 => cyclicMergeWitness15OfNat 25 7
          | 10 => cyclicMergeWitness15OfNat 16 10
          | 11 => cyclicMergeWitness15OfNat 25 11
          | 12 => cyclicMergeWitness15OfNat 16 12
          | 13 => cyclicMergeWitness15OfNat 16 13
          | 14 => cyclicMergeWitness15OfNat 16 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 17 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 26 13
          | 1 => cyclicMergeWitness15OfNat 17 1
          | 2 => cyclicMergeWitness15OfNat 22 2
          | 4 => cyclicMergeWitness15OfNat 26 2
          | 7 => cyclicMergeWitness15OfNat 17 7
          | 10 => cyclicMergeWitness15OfNat 17 10
          | 11 => cyclicMergeWitness15OfNat 22 11
          | 12 => cyclicMergeWitness15OfNat 25 12
          | 13 => cyclicMergeWitness15OfNat 17 13
          | 14 => cyclicMergeWitness15OfNat 17 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 18 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 25 12
          | 1 => cyclicMergeWitness15OfNat 23 1
          | 2 => cyclicMergeWitness15OfNat 18 2
          | 5 => cyclicMergeWitness15OfNat 18 5
          | 8 => cyclicMergeWitness15OfNat 26 8
          | 10 => cyclicMergeWitness15OfNat 23 10
          | 11 => cyclicMergeWitness15OfNat 18 11
          | 12 => cyclicMergeWitness15OfNat 26 12
          | 13 => cyclicMergeWitness15OfNat 18 13
          | 14 => cyclicMergeWitness15OfNat 18 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 19 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 25 12
          | 1 => cyclicMergeWitness15OfNat 19 1
          | 2 => cyclicMergeWitness15OfNat 19 2
          | 4 => cyclicMergeWitness15OfNat 25 1
          | 5 => cyclicMergeWitness15OfNat 23 5
          | 7 => cyclicMergeWitness15OfNat 22 7
          | 8 => cyclicMergeWitness15OfNat 25 8
          | 10 => cyclicMergeWitness15OfNat 19 10
          | 11 => cyclicMergeWitness15OfNat 19 11
          | 12 => cyclicMergeWitness15OfNat 25 12
          | 13 => cyclicMergeWitness15OfNat 19 13
          | 14 => cyclicMergeWitness15OfNat 19 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 20 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 25 14
          | 1 => cyclicMergeWitness15OfNat 25 1
          | 2 => cyclicMergeWitness15OfNat 20 2
          | 5 => cyclicMergeWitness15OfNat 26 5
          | 8 => cyclicMergeWitness15OfNat 20 8
          | 9 => cyclicMergeWitness15OfNat 25 8
          | 10 => cyclicMergeWitness15OfNat 25 10
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 20 13
          | 14 => cyclicMergeWitness15OfNat 20 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 21 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 26 12
          | 2 => cyclicMergeWitness15OfNat 21 2
          | 5 => cyclicMergeWitness15OfNat 21 5
          | 8 => cyclicMergeWitness15OfNat 21 8
          | 11 => cyclicMergeWitness15OfNat 21 11
          | 13 => cyclicMergeWitness15OfNat 26 13
          | 14 => cyclicMergeWitness15OfNat 21 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 2 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 2 0
          | 1 => cyclicMergeWitness15OfNat 2 0
          | 2 => cyclicMergeWitness15OfNat 5 0
          | 14 => cyclicMergeWitness15OfNat 5 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 5 14
          | 1 => cyclicMergeWitness15OfNat 5 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 2 0
          | 1 => cyclicMergeWitness15OfNat 5 0
          | 2 => cyclicMergeWitness15OfNat 7 0
          | 13 => cyclicMergeWitness15OfNat 7 13
          | 14 => cyclicMergeWitness15OfNat 5 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 5 14
          | 1 => cyclicMergeWitness15OfNat 5 0
          | 2 => cyclicMergeWitness15OfNat 7 0
          | 14 => cyclicMergeWitness15OfNat 7 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 8 14
          | 1 => cyclicMergeWitness15OfNat 8 0
          | 12 => cyclicMergeWitness15OfNat 8 14
          | 13 => cyclicMergeWitness15OfNat 8 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 5 0
          | 1 => cyclicMergeWitness15OfNat 7 0
          | 2 => cyclicMergeWitness15OfNat 10 0
          | 12 => cyclicMergeWitness15OfNat 10 12
          | 13 => cyclicMergeWitness15OfNat 7 13
          | 14 => cyclicMergeWitness15OfNat 5 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 8 14
          | 1 => cyclicMergeWitness15OfNat 8 0
          | 2 => cyclicMergeWitness15OfNat 12 0
          | 3 => cyclicMergeWitness15OfNat 13 14
          | 4 => cyclicMergeWitness15OfNat 13 0
          | 12 => cyclicMergeWitness15OfNat 14 14
          | 13 => cyclicMergeWitness15OfNat 14 0
          | 14 => cyclicMergeWitness15OfNat 11 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 7 0
          | 1 => cyclicMergeWitness15OfNat 10 0
          | 2 => cyclicMergeWitness15OfNat 20 0
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 10 12
          | 13 => cyclicMergeWitness15OfNat 7 13
          | 14 => cyclicMergeWitness15OfNat 7 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 8 0
          | 1 => cyclicMergeWitness15OfNat 12 0
          | 2 => cyclicMergeWitness15OfNat 20 14
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 11 13
          | 14 => cyclicMergeWitness15OfNat 8 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 13 14
          | 1 => cyclicMergeWitness15OfNat 13 0
          | 2 => cyclicMergeWitness15OfNat 17 0
          | 3 => cyclicMergeWitness15OfNat 21 14
          | 4 => cyclicMergeWitness15OfNat 21 0
          | 9 => cyclicMergeWitness15OfNat 21 14
          | 10 => cyclicMergeWitness15OfNat 21 0
          | 11 => cyclicMergeWitness15OfNat 18 13
          | 12 => cyclicMergeWitness15OfNat 14 14
          | 13 => cyclicMergeWitness15OfNat 14 0
          | 14 => cyclicMergeWitness15OfNat 20 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 10 0
          | 1 => cyclicMergeWitness15OfNat 20 0
          | 2 => cyclicMergeWitness15OfNat 25 0
          | 10 => cyclicMergeWitness15OfNat 25 10
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 10 12
          | 13 => cyclicMergeWitness15OfNat 10 13
          | 14 => cyclicMergeWitness15OfNat 10 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 11 0
          | 1 => cyclicMergeWitness15OfNat 16 0
          | 2 => cyclicMergeWitness15OfNat 25 14
          | 3 => cyclicMergeWitness15OfNat 25 0
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 11 13
          | 14 => cyclicMergeWitness15OfNat 11 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 12 0
          | 1 => cyclicMergeWitness15OfNat 20 14
          | 2 => cyclicMergeWitness15OfNat 20 0
          | 10 => cyclicMergeWitness15OfNat 25 10
          | 11 => cyclicMergeWitness15OfNat 25 11
          | 12 => cyclicMergeWitness15OfNat 16 12
          | 13 => cyclicMergeWitness15OfNat 12 13
          | 14 => cyclicMergeWitness15OfNat 12 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 13 0
          | 1 => cyclicMergeWitness15OfNat 17 0
          | 2 => cyclicMergeWitness15OfNat 26 14
          | 3 => cyclicMergeWitness15OfNat 26 0
          | 8 => cyclicMergeWitness15OfNat 24 8
          | 9 => cyclicMergeWitness15OfNat 24 9
          | 10 => cyclicMergeWitness15OfNat 25 10
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 20 13
          | 14 => cyclicMergeWitness15OfNat 13 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 14 0
          | 1 => cyclicMergeWitness15OfNat 20 13
          | 2 => cyclicMergeWitness15OfNat 20 14
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 4 => cyclicMergeWitness15OfNat 25 0
          | 5 => cyclicMergeWitness15OfNat 24 14
          | 6 => cyclicMergeWitness15OfNat 24 0
          | 11 => cyclicMergeWitness15OfNat 26 11
          | 12 => cyclicMergeWitness15OfNat 26 12
          | 13 => cyclicMergeWitness15OfNat 18 13
          | 14 => cyclicMergeWitness15OfNat 14 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 21 14
          | 1 => cyclicMergeWitness15OfNat 21 0
          | 2 => cyclicMergeWitness15OfNat 26 13
          | 3 => cyclicMergeWitness15OfNat 21 14
          | 4 => cyclicMergeWitness15OfNat 21 0
          | 5 => cyclicMergeWitness15OfNat 26 13
          | 6 => cyclicMergeWitness15OfNat 21 14
          | 7 => cyclicMergeWitness15OfNat 21 0
          | 8 => cyclicMergeWitness15OfNat 26 13
          | 9 => cyclicMergeWitness15OfNat 21 14
          | 10 => cyclicMergeWitness15OfNat 21 0
          | 11 => cyclicMergeWitness15OfNat 26 13
          | 12 => cyclicMergeWitness15OfNat 21 14
          | 13 => cyclicMergeWitness15OfNat 21 0
          | 14 => cyclicMergeWitness15OfNat 26 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 3 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 3 0
          | 1 => cyclicMergeWitness15OfNat 5 14
          | 14 => cyclicMergeWitness15OfNat 5 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 3 0
          | 3 => cyclicMergeWitness15OfNat 6 0
          | 12 => cyclicMergeWitness15OfNat 6 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 5 14
          | 1 => cyclicMergeWitness15OfNat 7 14
          | 13 => cyclicMergeWitness15OfNat 7 13
          | 14 => cyclicMergeWitness15OfNat 5 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 3 0
          | 1 => cyclicMergeWitness15OfNat 7 14
          | 3 => cyclicMergeWitness15OfNat 9 0
          | 12 => cyclicMergeWitness15OfNat 9 12
          | 14 => cyclicMergeWitness15OfNat 7 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 6 0
          | 3 => cyclicMergeWitness15OfNat 9 0
          | 9 => cyclicMergeWitness15OfNat 9 12
          | 12 => cyclicMergeWitness15OfNat 6 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 7 14
          | 1 => cyclicMergeWitness15OfNat 10 14
          | 2 => cyclicMergeWitness15OfNat 14 2
          | 11 => cyclicMergeWitness15OfNat 13 11
          | 12 => cyclicMergeWitness15OfNat 10 12
          | 13 => cyclicMergeWitness15OfNat 7 13
          | 14 => cyclicMergeWitness15OfNat 5 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 6 0
          | 1 => cyclicMergeWitness15OfNat 12 14
          | 3 => cyclicMergeWitness15OfNat 9 0
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 12 => cyclicMergeWitness15OfNat 9 12
          | 14 => cyclicMergeWitness15OfNat 11 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 10 14
          | 1 => cyclicMergeWitness15OfNat 20 14
          | 2 => cyclicMergeWitness15OfNat 18 2
          | 10 => cyclicMergeWitness15OfNat 17 10
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 10 12
          | 13 => cyclicMergeWitness15OfNat 7 13
          | 14 => cyclicMergeWitness15OfNat 7 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 12 14
          | 1 => cyclicMergeWitness15OfNat 20 13
          | 2 => cyclicMergeWitness15OfNat 14 2
          | 5 => cyclicMergeWitness15OfNat 21 5
          | 8 => cyclicMergeWitness15OfNat 21 8
          | 11 => cyclicMergeWitness15OfNat 13 11
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 11 13
          | 14 => cyclicMergeWitness15OfNat 8 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 9 0
          | 1 => cyclicMergeWitness15OfNat 17 14
          | 3 => cyclicMergeWitness15OfNat 15 0
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 11 => cyclicMergeWitness15OfNat 18 13
          | 12 => cyclicMergeWitness15OfNat 9 12
          | 13 => cyclicMergeWitness15OfNat 20 12
          | 14 => cyclicMergeWitness15OfNat 20 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 14
          | 1 => cyclicMergeWitness15OfNat 25 14
          | 2 => cyclicMergeWitness15OfNat 26 2
          | 9 => cyclicMergeWitness15OfNat 26 8
          | 10 => cyclicMergeWitness15OfNat 25 10
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 10 12
          | 13 => cyclicMergeWitness15OfNat 10 13
          | 14 => cyclicMergeWitness15OfNat 10 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 16 14
          | 1 => cyclicMergeWitness15OfNat 25 13
          | 2 => cyclicMergeWitness15OfNat 18 2
          | 5 => cyclicMergeWitness15OfNat 26 5
          | 8 => cyclicMergeWitness15OfNat 26 8
          | 10 => cyclicMergeWitness15OfNat 22 10
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 11 13
          | 14 => cyclicMergeWitness15OfNat 11 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 13
          | 1 => cyclicMergeWitness15OfNat 20 14
          | 2 => cyclicMergeWitness15OfNat 23 2
          | 4 => cyclicMergeWitness15OfNat 26 2
          | 7 => cyclicMergeWitness15OfNat 26 5
          | 10 => cyclicMergeWitness15OfNat 17 10
          | 11 => cyclicMergeWitness15OfNat 25 11
          | 12 => cyclicMergeWitness15OfNat 16 12
          | 13 => cyclicMergeWitness15OfNat 12 13
          | 14 => cyclicMergeWitness15OfNat 12 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 17 14
          | 1 => cyclicMergeWitness15OfNat 26 13
          | 2 => cyclicMergeWitness15OfNat 21 2
          | 5 => cyclicMergeWitness15OfNat 21 5
          | 8 => cyclicMergeWitness15OfNat 21 8
          | 10 => cyclicMergeWitness15OfNat 25 10
          | 11 => cyclicMergeWitness15OfNat 13 11
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 20 13
          | 14 => cyclicMergeWitness15OfNat 13 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 12
          | 1 => cyclicMergeWitness15OfNat 20 13
          | 2 => cyclicMergeWitness15OfNat 14 2
          | 3 => cyclicMergeWitness15OfNat 25 14
          | 5 => cyclicMergeWitness15OfNat 21 5
          | 8 => cyclicMergeWitness15OfNat 21 8
          | 11 => cyclicMergeWitness15OfNat 21 11
          | 12 => cyclicMergeWitness15OfNat 26 12
          | 13 => cyclicMergeWitness15OfNat 18 13
          | 14 => cyclicMergeWitness15OfNat 14 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 15 0
          | 1 => cyclicMergeWitness15OfNat 26 12
          | 2 => cyclicMergeWitness15OfNat 26 13
          | 3 => cyclicMergeWitness15OfNat 15 0
          | 4 => cyclicMergeWitness15OfNat 26 12
          | 5 => cyclicMergeWitness15OfNat 26 13
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 7 => cyclicMergeWitness15OfNat 26 12
          | 8 => cyclicMergeWitness15OfNat 26 13
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 10 => cyclicMergeWitness15OfNat 26 12
          | 11 => cyclicMergeWitness15OfNat 26 13
          | 12 => cyclicMergeWitness15OfNat 15 0
          | 13 => cyclicMergeWitness15OfNat 26 12
          | 14 => cyclicMergeWitness15OfNat 26 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 4 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 6 0
          | 3 => cyclicMergeWitness15OfNat 6 3
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 4 0
          | 3 => cyclicMergeWitness15OfNat 4 0
          | 6 => cyclicMergeWitness15OfNat 6 3
          | 12 => cyclicMergeWitness15OfNat 6 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 8 14
          | 2 => cyclicMergeWitness15OfNat 8 2
          | 3 => cyclicMergeWitness15OfNat 8 2
          | 14 => cyclicMergeWitness15OfNat 8 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 6 0
          | 3 => cyclicMergeWitness15OfNat 6 3
          | 6 => cyclicMergeWitness15OfNat 9 3
          | 12 => cyclicMergeWitness15OfNat 9 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 4 0
          | 3 => cyclicMergeWitness15OfNat 6 3
          | 6 => cyclicMergeWitness15OfNat 9 3
          | 9 => cyclicMergeWitness15OfNat 9 12
          | 12 => cyclicMergeWitness15OfNat 6 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 11 14
          | 1 => cyclicMergeWitness15OfNat 12 1
          | 2 => cyclicMergeWitness15OfNat 8 2
          | 3 => cyclicMergeWitness15OfNat 11 2
          | 5 => cyclicMergeWitness15OfNat 14 5
          | 11 => cyclicMergeWitness15OfNat 13 11
          | 13 => cyclicMergeWitness15OfNat 12 13
          | 14 => cyclicMergeWitness15OfNat 8 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 6 0
          | 3 => cyclicMergeWitness15OfNat 6 3
          | 6 => cyclicMergeWitness15OfNat 9 3
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 12 => cyclicMergeWitness15OfNat 9 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 14
          | 1 => cyclicMergeWitness15OfNat 12 1
          | 2 => cyclicMergeWitness15OfNat 11 2
          | 3 => cyclicMergeWitness15OfNat 20 2
          | 4 => cyclicMergeWitness15OfNat 20 2
          | 5 => cyclicMergeWitness15OfNat 18 5
          | 10 => cyclicMergeWitness15OfNat 17 10
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 20 11
          | 13 => cyclicMergeWitness15OfNat 12 13
          | 14 => cyclicMergeWitness15OfNat 11 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 19 14
          | 1 => cyclicMergeWitness15OfNat 19 1
          | 2 => cyclicMergeWitness15OfNat 8 2
          | 3 => cyclicMergeWitness15OfNat 19 2
          | 5 => cyclicMergeWitness15OfNat 14 5
          | 8 => cyclicMergeWitness15OfNat 21 8
          | 11 => cyclicMergeWitness15OfNat 13 11
          | 13 => cyclicMergeWitness15OfNat 19 13
          | 14 => cyclicMergeWitness15OfNat 8 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 9 0
          | 3 => cyclicMergeWitness15OfNat 9 3
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 12 => cyclicMergeWitness15OfNat 9 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 10 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 14
          | 1 => cyclicMergeWitness15OfNat 16 1
          | 2 => cyclicMergeWitness15OfNat 20 2
          | 3 => cyclicMergeWitness15OfNat 20 2
          | 4 => cyclicMergeWitness15OfNat 25 2
          | 5 => cyclicMergeWitness15OfNat 26 5
          | 9 => cyclicMergeWitness15OfNat 26 8
          | 10 => cyclicMergeWitness15OfNat 25 10
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 20 11
          | 13 => cyclicMergeWitness15OfNat 16 13
          | 14 => cyclicMergeWitness15OfNat 20 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 11 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 25 14
          | 1 => cyclicMergeWitness15OfNat 19 1
          | 2 => cyclicMergeWitness15OfNat 11 2
          | 3 => cyclicMergeWitness15OfNat 25 2
          | 4 => cyclicMergeWitness15OfNat 25 1
          | 5 => cyclicMergeWitness15OfNat 18 5
          | 8 => cyclicMergeWitness15OfNat 26 8
          | 10 => cyclicMergeWitness15OfNat 22 10
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 25 11
          | 13 => cyclicMergeWitness15OfNat 19 13
          | 14 => cyclicMergeWitness15OfNat 11 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 12 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 25 13
          | 1 => cyclicMergeWitness15OfNat 12 1
          | 2 => cyclicMergeWitness15OfNat 19 2
          | 3 => cyclicMergeWitness15OfNat 25 1
          | 4 => cyclicMergeWitness15OfNat 20 2
          | 5 => cyclicMergeWitness15OfNat 23 5
          | 7 => cyclicMergeWitness15OfNat 26 5
          | 10 => cyclicMergeWitness15OfNat 17 10
          | 11 => cyclicMergeWitness15OfNat 25 11
          | 12 => cyclicMergeWitness15OfNat 25 10
          | 13 => cyclicMergeWitness15OfNat 12 13
          | 14 => cyclicMergeWitness15OfNat 19 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 13 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 22 14
          | 1 => cyclicMergeWitness15OfNat 25 1
          | 2 => cyclicMergeWitness15OfNat 13 2
          | 3 => cyclicMergeWitness15OfNat 22 2
          | 5 => cyclicMergeWitness15OfNat 21 5
          | 8 => cyclicMergeWitness15OfNat 21 8
          | 11 => cyclicMergeWitness15OfNat 13 11
          | 13 => cyclicMergeWitness15OfNat 25 13
          | 14 => cyclicMergeWitness15OfNat 13 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 14 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 25 11
          | 1 => cyclicMergeWitness15OfNat 23 1
          | 2 => cyclicMergeWitness15OfNat 14 2
          | 3 => cyclicMergeWitness15OfNat 25 14
          | 5 => cyclicMergeWitness15OfNat 14 5
          | 8 => cyclicMergeWitness15OfNat 21 8
          | 11 => cyclicMergeWitness15OfNat 21 11
          | 13 => cyclicMergeWitness15OfNat 23 13
          | 14 => cyclicMergeWitness15OfNat 14 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 15 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 15 0
          | 3 => cyclicMergeWitness15OfNat 15 0
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 12 => cyclicMergeWitness15OfNat 15 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 5 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 5 0
          | 1 => cyclicMergeWitness15OfNat 5 0
          | 2 => cyclicMergeWitness15OfNat 5 0
          | 3 => cyclicMergeWitness15OfNat 7 0
          | 14 => cyclicMergeWitness15OfNat 7 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 7 14
          | 1 => cyclicMergeWitness15OfNat 5 0
          | 2 => cyclicMergeWitness15OfNat 7 0
          | 4 => cyclicMergeWitness15OfNat 8 0
          | 13 => cyclicMergeWitness15OfNat 8 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 5 0
          | 1 => cyclicMergeWitness15OfNat 5 0
          | 2 => cyclicMergeWitness15OfNat 7 0
          | 3 => cyclicMergeWitness15OfNat 10 0
          | 13 => cyclicMergeWitness15OfNat 10 13
          | 14 => cyclicMergeWitness15OfNat 7 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 7 14
          | 1 => cyclicMergeWitness15OfNat 5 0
          | 2 => cyclicMergeWitness15OfNat 7 0
          | 3 => cyclicMergeWitness15OfNat 10 0
          | 4 => cyclicMergeWitness15OfNat 13 0
          | 13 => cyclicMergeWitness15OfNat 14 0
          | 14 => cyclicMergeWitness15OfNat 10 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 11 14
          | 1 => cyclicMergeWitness15OfNat 8 0
          | 2 => cyclicMergeWitness15OfNat 12 0
          | 4 => cyclicMergeWitness15OfNat 13 0
          | 10 => cyclicMergeWitness15OfNat 14 0
          | 12 => cyclicMergeWitness15OfNat 11 14
          | 13 => cyclicMergeWitness15OfNat 8 0
          | 14 => cyclicMergeWitness15OfNat 12 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 5 0
          | 1 => cyclicMergeWitness15OfNat 7 0
          | 2 => cyclicMergeWitness15OfNat 10 0
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 10 13
          | 14 => cyclicMergeWitness15OfNat 7 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 11 14
          | 1 => cyclicMergeWitness15OfNat 8 0
          | 2 => cyclicMergeWitness15OfNat 12 0
          | 3 => cyclicMergeWitness15OfNat 20 14
          | 4 => cyclicMergeWitness15OfNat 13 0
          | 5 => cyclicMergeWitness15OfNat 17 0
          | 7 => cyclicMergeWitness15OfNat 21 0
          | 10 => cyclicMergeWitness15OfNat 21 0
          | 12 => cyclicMergeWitness15OfNat 18 14
          | 13 => cyclicMergeWitness15OfNat 14 0
          | 14 => cyclicMergeWitness15OfNat 20 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 7 0
          | 1 => cyclicMergeWitness15OfNat 10 0
          | 2 => cyclicMergeWitness15OfNat 20 0
          | 3 => cyclicMergeWitness15OfNat 25 0
          | 11 => cyclicMergeWitness15OfNat 25 11
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 10 13
          | 14 => cyclicMergeWitness15OfNat 7 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 8 0
          | 1 => cyclicMergeWitness15OfNat 12 0
          | 2 => cyclicMergeWitness15OfNat 20 14
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 4 => cyclicMergeWitness15OfNat 25 0
          | 6 => cyclicMergeWitness15OfNat 24 0
          | 9 => cyclicMergeWitness15OfNat 24 9
          | 11 => cyclicMergeWitness15OfNat 25 11
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 20 13
          | 14 => cyclicMergeWitness15OfNat 11 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 14
          | 1 => cyclicMergeWitness15OfNat 13 0
          | 2 => cyclicMergeWitness15OfNat 17 0
          | 3 => cyclicMergeWitness15OfNat 26 14
          | 4 => cyclicMergeWitness15OfNat 21 0
          | 5 => cyclicMergeWitness15OfNat 26 13
          | 7 => cyclicMergeWitness15OfNat 21 0
          | 9 => cyclicMergeWitness15OfNat 26 14
          | 10 => cyclicMergeWitness15OfNat 21 0
          | 11 => cyclicMergeWitness15OfNat 26 13
          | 12 => cyclicMergeWitness15OfNat 18 14
          | 13 => cyclicMergeWitness15OfNat 14 0
          | 14 => cyclicMergeWitness15OfNat 20 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 6 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 6 0
          | 1 => cyclicMergeWitness15OfNat 8 14
          | 3 => cyclicMergeWitness15OfNat 9 0
          | 12 => cyclicMergeWitness15OfNat 9 12
          | 14 => cyclicMergeWitness15OfNat 8 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 6 0
          | 3 => cyclicMergeWitness15OfNat 6 0
          | 6 => cyclicMergeWitness15OfNat 9 0
          | 9 => cyclicMergeWitness15OfNat 9 12
          | 12 => cyclicMergeWitness15OfNat 6 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 8 14
          | 1 => cyclicMergeWitness15OfNat 11 14
          | 2 => cyclicMergeWitness15OfNat 14 2
          | 3 => cyclicMergeWitness15OfNat 14 2
          | 11 => cyclicMergeWitness15OfNat 13 11
          | 12 => cyclicMergeWitness15OfNat 13 11
          | 13 => cyclicMergeWitness15OfNat 12 13
          | 14 => cyclicMergeWitness15OfNat 8 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 6 0
          | 1 => cyclicMergeWitness15OfNat 11 14
          | 3 => cyclicMergeWitness15OfNat 9 0
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 12 => cyclicMergeWitness15OfNat 9 12
          | 14 => cyclicMergeWitness15OfNat 12 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 6 0
          | 3 => cyclicMergeWitness15OfNat 9 0
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 9 12
          | 12 => cyclicMergeWitness15OfNat 6 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 11 14
          | 1 => cyclicMergeWitness15OfNat 20 14
          | 2 => cyclicMergeWitness15OfNat 14 2
          | 3 => cyclicMergeWitness15OfNat 18 2
          | 5 => cyclicMergeWitness15OfNat 21 5
          | 8 => cyclicMergeWitness15OfNat 21 8
          | 10 => cyclicMergeWitness15OfNat 17 10
          | 11 => cyclicMergeWitness15OfNat 13 11
          | 12 => cyclicMergeWitness15OfNat 20 11
          | 13 => cyclicMergeWitness15OfNat 12 13
          | 14 => cyclicMergeWitness15OfNat 8 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 6 0
          | 1 => cyclicMergeWitness15OfNat 19 14
          | 3 => cyclicMergeWitness15OfNat 9 0
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 12 => cyclicMergeWitness15OfNat 9 12
          | 14 => cyclicMergeWitness15OfNat 19 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 7 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 14
          | 1 => cyclicMergeWitness15OfNat 20 14
          | 2 => cyclicMergeWitness15OfNat 18 2
          | 3 => cyclicMergeWitness15OfNat 26 2
          | 4 => cyclicMergeWitness15OfNat 26 2
          | 5 => cyclicMergeWitness15OfNat 26 5
          | 7 => cyclicMergeWitness15OfNat 26 5
          | 8 => cyclicMergeWitness15OfNat 26 8
          | 9 => cyclicMergeWitness15OfNat 26 8
          | 10 => cyclicMergeWitness15OfNat 17 10
          | 11 => cyclicMergeWitness15OfNat 20 11
          | 12 => cyclicMergeWitness15OfNat 20 11
          | 13 => cyclicMergeWitness15OfNat 12 13
          | 14 => cyclicMergeWitness15OfNat 11 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 8 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 19 14
          | 1 => cyclicMergeWitness15OfNat 25 13
          | 2 => cyclicMergeWitness15OfNat 14 2
          | 3 => cyclicMergeWitness15OfNat 23 2
          | 5 => cyclicMergeWitness15OfNat 21 5
          | 8 => cyclicMergeWitness15OfNat 21 8
          | 10 => cyclicMergeWitness15OfNat 22 10
          | 11 => cyclicMergeWitness15OfNat 13 11
          | 12 => cyclicMergeWitness15OfNat 25 11
          | 13 => cyclicMergeWitness15OfNat 19 13
          | 14 => cyclicMergeWitness15OfNat 8 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 9 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 9 0
          | 1 => cyclicMergeWitness15OfNat 22 14
          | 3 => cyclicMergeWitness15OfNat 15 0
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 11 => cyclicMergeWitness15OfNat 23 13
          | 12 => cyclicMergeWitness15OfNat 9 12
          | 13 => cyclicMergeWitness15OfNat 25 11
          | 14 => cyclicMergeWitness15OfNat 25 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 7 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 7 0
          | 1 => cyclicMergeWitness15OfNat 7 0
          | 2 => cyclicMergeWitness15OfNat 7 0
          | 3 => cyclicMergeWitness15OfNat 7 0
          | 4 => cyclicMergeWitness15OfNat 10 0
          | 14 => cyclicMergeWitness15OfNat 10 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 10 14
          | 1 => cyclicMergeWitness15OfNat 7 0
          | 2 => cyclicMergeWitness15OfNat 7 0
          | 3 => cyclicMergeWitness15OfNat 10 0
          | 4 => cyclicMergeWitness15OfNat 11 0
          | 5 => cyclicMergeWitness15OfNat 12 0
          | 13 => cyclicMergeWitness15OfNat 11 0
          | 14 => cyclicMergeWitness15OfNat 12 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 7 0
          | 1 => cyclicMergeWitness15OfNat 7 0
          | 2 => cyclicMergeWitness15OfNat 7 0
          | 3 => cyclicMergeWitness15OfNat 10 0
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 13 => cyclicMergeWitness15OfNat 20 13
          | 14 => cyclicMergeWitness15OfNat 10 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 10 14
          | 1 => cyclicMergeWitness15OfNat 7 0
          | 2 => cyclicMergeWitness15OfNat 7 0
          | 3 => cyclicMergeWitness15OfNat 10 0
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 5 => cyclicMergeWitness15OfNat 17 0
          | 13 => cyclicMergeWitness15OfNat 18 0
          | 14 => cyclicMergeWitness15OfNat 20 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 14
          | 1 => cyclicMergeWitness15OfNat 11 0
          | 2 => cyclicMergeWitness15OfNat 12 0
          | 3 => cyclicMergeWitness15OfNat 20 14
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 5 => cyclicMergeWitness15OfNat 17 0
          | 10 => cyclicMergeWitness15OfNat 18 0
          | 11 => cyclicMergeWitness15OfNat 20 13
          | 12 => cyclicMergeWitness15OfNat 20 14
          | 13 => cyclicMergeWitness15OfNat 11 0
          | 14 => cyclicMergeWitness15OfNat 12 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 7 0
          | 1 => cyclicMergeWitness15OfNat 7 0
          | 2 => cyclicMergeWitness15OfNat 10 0
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 4 => cyclicMergeWitness15OfNat 25 0
          | 12 => cyclicMergeWitness15OfNat 25 12
          | 13 => cyclicMergeWitness15OfNat 20 13
          | 14 => cyclicMergeWitness15OfNat 10 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 14
          | 1 => cyclicMergeWitness15OfNat 11 0
          | 2 => cyclicMergeWitness15OfNat 12 0
          | 3 => cyclicMergeWitness15OfNat 20 14
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 5 => cyclicMergeWitness15OfNat 17 0
          | 6 => cyclicMergeWitness15OfNat 26 14
          | 7 => cyclicMergeWitness15OfNat 26 0
          | 8 => cyclicMergeWitness15OfNat 26 13
          | 10 => cyclicMergeWitness15OfNat 26 0
          | 11 => cyclicMergeWitness15OfNat 26 13
          | 12 => cyclicMergeWitness15OfNat 26 14
          | 13 => cyclicMergeWitness15OfNat 18 0
          | 14 => cyclicMergeWitness15OfNat 20 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 8 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 8 0
          | 1 => cyclicMergeWitness15OfNat 8 0
          | 2 => cyclicMergeWitness15OfNat 8 0
          | 3 => cyclicMergeWitness15OfNat 11 0
          | 4 => cyclicMergeWitness15OfNat 13 0
          | 13 => cyclicMergeWitness15OfNat 14 0
          | 14 => cyclicMergeWitness15OfNat 12 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 12 14
          | 1 => cyclicMergeWitness15OfNat 8 0
          | 2 => cyclicMergeWitness15OfNat 11 0
          | 4 => cyclicMergeWitness15OfNat 8 0
          | 7 => cyclicMergeWitness15OfNat 13 0
          | 10 => cyclicMergeWitness15OfNat 14 0
          | 13 => cyclicMergeWitness15OfNat 8 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 8 0
          | 1 => cyclicMergeWitness15OfNat 8 0
          | 2 => cyclicMergeWitness15OfNat 11 0
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 20 12
          | 14 => cyclicMergeWitness15OfNat 12 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 12 14
          | 1 => cyclicMergeWitness15OfNat 8 0
          | 2 => cyclicMergeWitness15OfNat 11 0
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 4 => cyclicMergeWitness15OfNat 13 0
          | 7 => cyclicMergeWitness15OfNat 21 0
          | 10 => cyclicMergeWitness15OfNat 21 0
          | 13 => cyclicMergeWitness15OfNat 14 0
          | 14 => cyclicMergeWitness15OfNat 20 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 19 14
          | 1 => cyclicMergeWitness15OfNat 8 0
          | 2 => cyclicMergeWitness15OfNat 19 0
          | 4 => cyclicMergeWitness15OfNat 13 0
          | 7 => cyclicMergeWitness15OfNat 21 0
          | 10 => cyclicMergeWitness15OfNat 14 0
          | 12 => cyclicMergeWitness15OfNat 19 14
          | 13 => cyclicMergeWitness15OfNat 8 0
          | 14 => cyclicMergeWitness15OfNat 19 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 8 0
          | 1 => cyclicMergeWitness15OfNat 11 0
          | 2 => cyclicMergeWitness15OfNat 20 0
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 4 => cyclicMergeWitness15OfNat 25 0
          | 6 => cyclicMergeWitness15OfNat 24 0
          | 9 => cyclicMergeWitness15OfNat 24 9
          | 11 => cyclicMergeWitness15OfNat 25 11
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 20 12
          | 14 => cyclicMergeWitness15OfNat 12 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 19 14
          | 1 => cyclicMergeWitness15OfNat 8 0
          | 2 => cyclicMergeWitness15OfNat 19 0
          | 3 => cyclicMergeWitness15OfNat 25 14
          | 4 => cyclicMergeWitness15OfNat 13 0
          | 5 => cyclicMergeWitness15OfNat 22 0
          | 7 => cyclicMergeWitness15OfNat 21 0
          | 10 => cyclicMergeWitness15OfNat 21 0
          | 12 => cyclicMergeWitness15OfNat 23 14
          | 13 => cyclicMergeWitness15OfNat 14 0
          | 14 => cyclicMergeWitness15OfNat 25 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 9 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 9 0
          | 1 => cyclicMergeWitness15OfNat 13 14
          | 2 => cyclicMergeWitness15OfNat 14 2
          | 3 => cyclicMergeWitness15OfNat 9 0
          | 4 => cyclicMergeWitness15OfNat 14 2
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 12 => cyclicMergeWitness15OfNat 15 0
          | 14 => cyclicMergeWitness15OfNat 13 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 9 0
          | 3 => cyclicMergeWitness15OfNat 9 0
          | 6 => cyclicMergeWitness15OfNat 9 0
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 12 => cyclicMergeWitness15OfNat 9 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 13 14
          | 1 => cyclicMergeWitness15OfNat 20 14
          | 2 => cyclicMergeWitness15OfNat 14 2
          | 3 => cyclicMergeWitness15OfNat 14 2
          | 4 => cyclicMergeWitness15OfNat 18 2
          | 5 => cyclicMergeWitness15OfNat 21 5
          | 6 => cyclicMergeWitness15OfNat 21 5
          | 11 => cyclicMergeWitness15OfNat 21 11
          | 12 => cyclicMergeWitness15OfNat 21 11
          | 13 => cyclicMergeWitness15OfNat 17 13
          | 14 => cyclicMergeWitness15OfNat 13 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 9 0
          | 1 => cyclicMergeWitness15OfNat 20 14
          | 2 => cyclicMergeWitness15OfNat 20 14
          | 3 => cyclicMergeWitness15OfNat 9 0
          | 4 => cyclicMergeWitness15OfNat 18 2
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 12 => cyclicMergeWitness15OfNat 15 0
          | 14 => cyclicMergeWitness15OfNat 17 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 9 0
          | 3 => cyclicMergeWitness15OfNat 9 0
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 12 => cyclicMergeWitness15OfNat 9 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 5 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 14
          | 1 => cyclicMergeWitness15OfNat 20 14
          | 2 => cyclicMergeWitness15OfNat 14 2
          | 3 => cyclicMergeWitness15OfNat 18 2
          | 4 => cyclicMergeWitness15OfNat 26 2
          | 5 => cyclicMergeWitness15OfNat 21 5
          | 6 => cyclicMergeWitness15OfNat 26 5
          | 8 => cyclicMergeWitness15OfNat 21 8
          | 10 => cyclicMergeWitness15OfNat 26 8
          | 11 => cyclicMergeWitness15OfNat 21 11
          | 12 => cyclicMergeWitness15OfNat 26 11
          | 13 => cyclicMergeWitness15OfNat 17 13
          | 14 => cyclicMergeWitness15OfNat 13 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 6 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 9 0
          | 1 => cyclicMergeWitness15OfNat 25 14
          | 2 => cyclicMergeWitness15OfNat 25 13
          | 3 => cyclicMergeWitness15OfNat 9 0
          | 4 => cyclicMergeWitness15OfNat 23 2
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 12 => cyclicMergeWitness15OfNat 15 0
          | 14 => cyclicMergeWitness15OfNat 22 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 10 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 10 0
          | 1 => cyclicMergeWitness15OfNat 10 0
          | 2 => cyclicMergeWitness15OfNat 10 0
          | 3 => cyclicMergeWitness15OfNat 10 0
          | 4 => cyclicMergeWitness15OfNat 10 0
          | 5 => cyclicMergeWitness15OfNat 20 0
          | 14 => cyclicMergeWitness15OfNat 20 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 14
          | 1 => cyclicMergeWitness15OfNat 10 0
          | 2 => cyclicMergeWitness15OfNat 10 0
          | 3 => cyclicMergeWitness15OfNat 10 0
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 5 => cyclicMergeWitness15OfNat 16 0
          | 6 => cyclicMergeWitness15OfNat 20 14
          | 13 => cyclicMergeWitness15OfNat 20 0
          | 14 => cyclicMergeWitness15OfNat 16 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 10 0
          | 1 => cyclicMergeWitness15OfNat 10 0
          | 2 => cyclicMergeWitness15OfNat 10 0
          | 3 => cyclicMergeWitness15OfNat 10 0
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 5 => cyclicMergeWitness15OfNat 25 0
          | 13 => cyclicMergeWitness15OfNat 25 13
          | 14 => cyclicMergeWitness15OfNat 20 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 14
          | 1 => cyclicMergeWitness15OfNat 10 0
          | 2 => cyclicMergeWitness15OfNat 10 0
          | 3 => cyclicMergeWitness15OfNat 10 0
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 5 => cyclicMergeWitness15OfNat 25 0
          | 6 => cyclicMergeWitness15OfNat 26 14
          | 13 => cyclicMergeWitness15OfNat 26 0
          | 14 => cyclicMergeWitness15OfNat 25 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 14
          | 1 => cyclicMergeWitness15OfNat 20 0
          | 2 => cyclicMergeWitness15OfNat 16 0
          | 3 => cyclicMergeWitness15OfNat 20 14
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 5 => cyclicMergeWitness15OfNat 25 0
          | 6 => cyclicMergeWitness15OfNat 26 14
          | 10 => cyclicMergeWitness15OfNat 26 0
          | 11 => cyclicMergeWitness15OfNat 25 13
          | 12 => cyclicMergeWitness15OfNat 20 14
          | 13 => cyclicMergeWitness15OfNat 20 0
          | 14 => cyclicMergeWitness15OfNat 16 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 11 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 11 0
          | 1 => cyclicMergeWitness15OfNat 11 0
          | 2 => cyclicMergeWitness15OfNat 11 0
          | 3 => cyclicMergeWitness15OfNat 11 0
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 13 => cyclicMergeWitness15OfNat 18 0
          | 14 => cyclicMergeWitness15OfNat 16 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 16 14
          | 1 => cyclicMergeWitness15OfNat 11 0
          | 2 => cyclicMergeWitness15OfNat 11 0
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 4 => cyclicMergeWitness15OfNat 11 0
          | 5 => cyclicMergeWitness15OfNat 19 0
          | 7 => cyclicMergeWitness15OfNat 20 0
          | 10 => cyclicMergeWitness15OfNat 18 0
          | 13 => cyclicMergeWitness15OfNat 11 0
          | 14 => cyclicMergeWitness15OfNat 19 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 11 0
          | 1 => cyclicMergeWitness15OfNat 11 0
          | 2 => cyclicMergeWitness15OfNat 11 0
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 12 => cyclicMergeWitness15OfNat 25 12
          | 13 => cyclicMergeWitness15OfNat 25 12
          | 14 => cyclicMergeWitness15OfNat 16 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 16 14
          | 1 => cyclicMergeWitness15OfNat 11 0
          | 2 => cyclicMergeWitness15OfNat 11 0
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 5 => cyclicMergeWitness15OfNat 22 0
          | 7 => cyclicMergeWitness15OfNat 26 0
          | 10 => cyclicMergeWitness15OfNat 26 0
          | 13 => cyclicMergeWitness15OfNat 18 0
          | 14 => cyclicMergeWitness15OfNat 25 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 25 14
          | 1 => cyclicMergeWitness15OfNat 11 0
          | 2 => cyclicMergeWitness15OfNat 19 0
          | 3 => cyclicMergeWitness15OfNat 25 14
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 5 => cyclicMergeWitness15OfNat 22 0
          | 7 => cyclicMergeWitness15OfNat 26 0
          | 10 => cyclicMergeWitness15OfNat 18 0
          | 11 => cyclicMergeWitness15OfNat 25 12
          | 12 => cyclicMergeWitness15OfNat 25 14
          | 13 => cyclicMergeWitness15OfNat 11 0
          | 14 => cyclicMergeWitness15OfNat 19 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 12 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 12 0
          | 1 => cyclicMergeWitness15OfNat 12 0
          | 2 => cyclicMergeWitness15OfNat 12 0
          | 3 => cyclicMergeWitness15OfNat 12 0
          | 4 => cyclicMergeWitness15OfNat 16 0
          | 5 => cyclicMergeWitness15OfNat 17 0
          | 14 => cyclicMergeWitness15OfNat 20 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 13
          | 1 => cyclicMergeWitness15OfNat 12 0
          | 2 => cyclicMergeWitness15OfNat 12 0
          | 3 => cyclicMergeWitness15OfNat 16 0
          | 4 => cyclicMergeWitness15OfNat 19 0
          | 5 => cyclicMergeWitness15OfNat 12 0
          | 8 => cyclicMergeWitness15OfNat 17 0
          | 11 => cyclicMergeWitness15OfNat 20 13
          | 13 => cyclicMergeWitness15OfNat 19 0
          | 14 => cyclicMergeWitness15OfNat 12 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 12 0
          | 1 => cyclicMergeWitness15OfNat 12 0
          | 2 => cyclicMergeWitness15OfNat 12 0
          | 3 => cyclicMergeWitness15OfNat 16 0
          | 4 => cyclicMergeWitness15OfNat 25 0
          | 5 => cyclicMergeWitness15OfNat 25 0
          | 13 => cyclicMergeWitness15OfNat 20 13
          | 14 => cyclicMergeWitness15OfNat 20 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 13
          | 1 => cyclicMergeWitness15OfNat 12 0
          | 2 => cyclicMergeWitness15OfNat 12 0
          | 3 => cyclicMergeWitness15OfNat 16 0
          | 4 => cyclicMergeWitness15OfNat 25 0
          | 5 => cyclicMergeWitness15OfNat 17 0
          | 8 => cyclicMergeWitness15OfNat 26 13
          | 11 => cyclicMergeWitness15OfNat 26 13
          | 13 => cyclicMergeWitness15OfNat 23 0
          | 14 => cyclicMergeWitness15OfNat 20 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 25 13
          | 1 => cyclicMergeWitness15OfNat 19 0
          | 2 => cyclicMergeWitness15OfNat 12 0
          | 3 => cyclicMergeWitness15OfNat 25 13
          | 4 => cyclicMergeWitness15OfNat 25 0
          | 5 => cyclicMergeWitness15OfNat 17 0
          | 8 => cyclicMergeWitness15OfNat 26 13
          | 10 => cyclicMergeWitness15OfNat 23 0
          | 11 => cyclicMergeWitness15OfNat 20 13
          | 12 => cyclicMergeWitness15OfNat 25 13
          | 13 => cyclicMergeWitness15OfNat 19 0
          | 14 => cyclicMergeWitness15OfNat 12 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 13 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 13 0
          | 1 => cyclicMergeWitness15OfNat 13 0
          | 2 => cyclicMergeWitness15OfNat 13 0
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 4 => cyclicMergeWitness15OfNat 13 0
          | 5 => cyclicMergeWitness15OfNat 20 0
          | 7 => cyclicMergeWitness15OfNat 21 0
          | 13 => cyclicMergeWitness15OfNat 21 0
          | 14 => cyclicMergeWitness15OfNat 17 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 17 14
          | 1 => cyclicMergeWitness15OfNat 13 0
          | 2 => cyclicMergeWitness15OfNat 20 0
          | 4 => cyclicMergeWitness15OfNat 13 0
          | 7 => cyclicMergeWitness15OfNat 13 0
          | 10 => cyclicMergeWitness15OfNat 21 0
          | 13 => cyclicMergeWitness15OfNat 13 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 13 0
          | 1 => cyclicMergeWitness15OfNat 13 0
          | 2 => cyclicMergeWitness15OfNat 20 0
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 5 => cyclicMergeWitness15OfNat 25 0
          | 6 => cyclicMergeWitness15OfNat 24 0
          | 7 => cyclicMergeWitness15OfNat 24 0
          | 12 => cyclicMergeWitness15OfNat 26 12
          | 13 => cyclicMergeWitness15OfNat 26 12
          | 14 => cyclicMergeWitness15OfNat 17 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 17 14
          | 1 => cyclicMergeWitness15OfNat 13 0
          | 2 => cyclicMergeWitness15OfNat 20 0
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 4 => cyclicMergeWitness15OfNat 13 0
          | 5 => cyclicMergeWitness15OfNat 25 0
          | 7 => cyclicMergeWitness15OfNat 21 0
          | 10 => cyclicMergeWitness15OfNat 21 0
          | 13 => cyclicMergeWitness15OfNat 21 0
          | 14 => cyclicMergeWitness15OfNat 26 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 22 14
          | 1 => cyclicMergeWitness15OfNat 13 0
          | 2 => cyclicMergeWitness15OfNat 25 0
          | 4 => cyclicMergeWitness15OfNat 13 0
          | 7 => cyclicMergeWitness15OfNat 21 0
          | 10 => cyclicMergeWitness15OfNat 21 0
          | 12 => cyclicMergeWitness15OfNat 22 14
          | 13 => cyclicMergeWitness15OfNat 13 0
          | 14 => cyclicMergeWitness15OfNat 25 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 14 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 14 0
          | 1 => cyclicMergeWitness15OfNat 14 0
          | 2 => cyclicMergeWitness15OfNat 14 0
          | 3 => cyclicMergeWitness15OfNat 18 0
          | 4 => cyclicMergeWitness15OfNat 21 0
          | 10 => cyclicMergeWitness15OfNat 21 0
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 14 0
          | 14 => cyclicMergeWitness15OfNat 20 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 12
          | 1 => cyclicMergeWitness15OfNat 14 0
          | 2 => cyclicMergeWitness15OfNat 18 0
          | 4 => cyclicMergeWitness15OfNat 14 0
          | 7 => cyclicMergeWitness15OfNat 21 0
          | 10 => cyclicMergeWitness15OfNat 14 0
          | 13 => cyclicMergeWitness15OfNat 14 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 14 0
          | 1 => cyclicMergeWitness15OfNat 14 0
          | 2 => cyclicMergeWitness15OfNat 18 0
          | 3 => cyclicMergeWitness15OfNat 26 0
          | 4 => cyclicMergeWitness15OfNat 26 0
          | 9 => cyclicMergeWitness15OfNat 24 9
          | 10 => cyclicMergeWitness15OfNat 24 9
          | 11 => cyclicMergeWitness15OfNat 25 11
          | 12 => cyclicMergeWitness15OfNat 20 12
          | 13 => cyclicMergeWitness15OfNat 20 12
          | 14 => cyclicMergeWitness15OfNat 20 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 12
          | 1 => cyclicMergeWitness15OfNat 14 0
          | 2 => cyclicMergeWitness15OfNat 18 0
          | 3 => cyclicMergeWitness15OfNat 26 0
          | 4 => cyclicMergeWitness15OfNat 21 0
          | 7 => cyclicMergeWitness15OfNat 21 0
          | 10 => cyclicMergeWitness15OfNat 21 0
          | 12 => cyclicMergeWitness15OfNat 25 11
          | 13 => cyclicMergeWitness15OfNat 14 0
          | 14 => cyclicMergeWitness15OfNat 20 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 25 11
          | 1 => cyclicMergeWitness15OfNat 14 0
          | 2 => cyclicMergeWitness15OfNat 23 0
          | 4 => cyclicMergeWitness15OfNat 21 0
          | 7 => cyclicMergeWitness15OfNat 21 0
          | 10 => cyclicMergeWitness15OfNat 14 0
          | 12 => cyclicMergeWitness15OfNat 25 11
          | 13 => cyclicMergeWitness15OfNat 14 0
          | 14 => cyclicMergeWitness15OfNat 23 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 15 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 15 0
          | 1 => cyclicMergeWitness15OfNat 21 14
          | 2 => cyclicMergeWitness15OfNat 21 2
          | 3 => cyclicMergeWitness15OfNat 15 0
          | 4 => cyclicMergeWitness15OfNat 21 2
          | 5 => cyclicMergeWitness15OfNat 21 5
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 7 => cyclicMergeWitness15OfNat 21 5
          | 8 => cyclicMergeWitness15OfNat 21 8
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 10 => cyclicMergeWitness15OfNat 21 8
          | 11 => cyclicMergeWitness15OfNat 21 11
          | 12 => cyclicMergeWitness15OfNat 15 0
          | 13 => cyclicMergeWitness15OfNat 21 11
          | 14 => cyclicMergeWitness15OfNat 21 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 15 0
          | 3 => cyclicMergeWitness15OfNat 15 0
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 12 => cyclicMergeWitness15OfNat 15 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | 2 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 21 14
          | 1 => cyclicMergeWitness15OfNat 26 14
          | 2 => cyclicMergeWitness15OfNat 21 2
          | 3 => cyclicMergeWitness15OfNat 21 2
          | 4 => cyclicMergeWitness15OfNat 26 2
          | 5 => cyclicMergeWitness15OfNat 21 5
          | 6 => cyclicMergeWitness15OfNat 21 5
          | 7 => cyclicMergeWitness15OfNat 26 5
          | 8 => cyclicMergeWitness15OfNat 21 8
          | 9 => cyclicMergeWitness15OfNat 21 8
          | 10 => cyclicMergeWitness15OfNat 26 8
          | 11 => cyclicMergeWitness15OfNat 21 11
          | 12 => cyclicMergeWitness15OfNat 21 11
          | 13 => cyclicMergeWitness15OfNat 26 11
          | 14 => cyclicMergeWitness15OfNat 21 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 3 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 15 0
          | 1 => cyclicMergeWitness15OfNat 26 14
          | 2 => cyclicMergeWitness15OfNat 26 14
          | 3 => cyclicMergeWitness15OfNat 15 0
          | 4 => cyclicMergeWitness15OfNat 26 2
          | 5 => cyclicMergeWitness15OfNat 26 2
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 7 => cyclicMergeWitness15OfNat 26 5
          | 8 => cyclicMergeWitness15OfNat 26 5
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 10 => cyclicMergeWitness15OfNat 26 8
          | 11 => cyclicMergeWitness15OfNat 26 8
          | 12 => cyclicMergeWitness15OfNat 15 0
          | 13 => cyclicMergeWitness15OfNat 26 11
          | 14 => cyclicMergeWitness15OfNat 26 11
          | _ => cyclicMergeWitness15OfNat 0 0
      | 4 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 15 0
          | 3 => cyclicMergeWitness15OfNat 15 0
          | 6 => cyclicMergeWitness15OfNat 15 0
          | 9 => cyclicMergeWitness15OfNat 15 0
          | 12 => cyclicMergeWitness15OfNat 15 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 16 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 16 0
          | 1 => cyclicMergeWitness15OfNat 16 0
          | 2 => cyclicMergeWitness15OfNat 16 0
          | 3 => cyclicMergeWitness15OfNat 16 0
          | 4 => cyclicMergeWitness15OfNat 16 0
          | 5 => cyclicMergeWitness15OfNat 25 0
          | 14 => cyclicMergeWitness15OfNat 25 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 25 13
          | 1 => cyclicMergeWitness15OfNat 16 0
          | 2 => cyclicMergeWitness15OfNat 16 0
          | 3 => cyclicMergeWitness15OfNat 16 0
          | 4 => cyclicMergeWitness15OfNat 25 0
          | 5 => cyclicMergeWitness15OfNat 16 0
          | 6 => cyclicMergeWitness15OfNat 25 13
          | 8 => cyclicMergeWitness15OfNat 25 0
          | 11 => cyclicMergeWitness15OfNat 25 13
          | 13 => cyclicMergeWitness15OfNat 25 0
          | 14 => cyclicMergeWitness15OfNat 16 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 17 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 17 0
          | 1 => cyclicMergeWitness15OfNat 17 0
          | 2 => cyclicMergeWitness15OfNat 17 0
          | 3 => cyclicMergeWitness15OfNat 17 0
          | 4 => cyclicMergeWitness15OfNat 25 0
          | 5 => cyclicMergeWitness15OfNat 17 0
          | 6 => cyclicMergeWitness15OfNat 25 0
          | 8 => cyclicMergeWitness15OfNat 26 13
          | 14 => cyclicMergeWitness15OfNat 26 13
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 26 13
          | 1 => cyclicMergeWitness15OfNat 17 0
          | 2 => cyclicMergeWitness15OfNat 17 0
          | 3 => cyclicMergeWitness15OfNat 25 0
          | 4 => cyclicMergeWitness15OfNat 22 0
          | 5 => cyclicMergeWitness15OfNat 17 0
          | 8 => cyclicMergeWitness15OfNat 17 0
          | 11 => cyclicMergeWitness15OfNat 26 13
          | 13 => cyclicMergeWitness15OfNat 22 0
          | 14 => cyclicMergeWitness15OfNat 17 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 18 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 18 0
          | 1 => cyclicMergeWitness15OfNat 18 0
          | 2 => cyclicMergeWitness15OfNat 18 0
          | 3 => cyclicMergeWitness15OfNat 18 0
          | 4 => cyclicMergeWitness15OfNat 26 0
          | 10 => cyclicMergeWitness15OfNat 26 0
          | 12 => cyclicMergeWitness15OfNat 25 12
          | 13 => cyclicMergeWitness15OfNat 18 0
          | 14 => cyclicMergeWitness15OfNat 25 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 25 12
          | 1 => cyclicMergeWitness15OfNat 18 0
          | 2 => cyclicMergeWitness15OfNat 18 0
          | 3 => cyclicMergeWitness15OfNat 26 0
          | 4 => cyclicMergeWitness15OfNat 18 0
          | 5 => cyclicMergeWitness15OfNat 23 0
          | 7 => cyclicMergeWitness15OfNat 26 0
          | 10 => cyclicMergeWitness15OfNat 18 0
          | 13 => cyclicMergeWitness15OfNat 18 0
          | 14 => cyclicMergeWitness15OfNat 23 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 19 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 19 0
          | 1 => cyclicMergeWitness15OfNat 19 0
          | 2 => cyclicMergeWitness15OfNat 19 0
          | 3 => cyclicMergeWitness15OfNat 19 0
          | 4 => cyclicMergeWitness15OfNat 25 0
          | 5 => cyclicMergeWitness15OfNat 22 0
          | 13 => cyclicMergeWitness15OfNat 23 0
          | 14 => cyclicMergeWitness15OfNat 25 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 25 12
          | 1 => cyclicMergeWitness15OfNat 19 0
          | 2 => cyclicMergeWitness15OfNat 19 0
          | 3 => cyclicMergeWitness15OfNat 25 0
          | 4 => cyclicMergeWitness15OfNat 19 0
          | 5 => cyclicMergeWitness15OfNat 19 0
          | 7 => cyclicMergeWitness15OfNat 25 0
          | 8 => cyclicMergeWitness15OfNat 22 0
          | 10 => cyclicMergeWitness15OfNat 23 0
          | 11 => cyclicMergeWitness15OfNat 25 12
          | 13 => cyclicMergeWitness15OfNat 19 0
          | 14 => cyclicMergeWitness15OfNat 19 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 20 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 20 0
          | 1 => cyclicMergeWitness15OfNat 20 0
          | 2 => cyclicMergeWitness15OfNat 20 0
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 5 => cyclicMergeWitness15OfNat 20 0
          | 6 => cyclicMergeWitness15OfNat 25 0
          | 7 => cyclicMergeWitness15OfNat 26 0
          | 13 => cyclicMergeWitness15OfNat 26 0
          | 14 => cyclicMergeWitness15OfNat 25 14
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 25 14
          | 1 => cyclicMergeWitness15OfNat 20 0
          | 2 => cyclicMergeWitness15OfNat 20 0
          | 3 => cyclicMergeWitness15OfNat 20 0
          | 4 => cyclicMergeWitness15OfNat 20 0
          | 5 => cyclicMergeWitness15OfNat 25 0
          | 6 => cyclicMergeWitness15OfNat 25 14
          | 7 => cyclicMergeWitness15OfNat 20 0
          | 10 => cyclicMergeWitness15OfNat 26 0
          | 13 => cyclicMergeWitness15OfNat 20 0
          | 14 => cyclicMergeWitness15OfNat 25 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | 21 =>
      match b.val with
      | 0 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 21 0
          | 1 => cyclicMergeWitness15OfNat 21 0
          | 2 => cyclicMergeWitness15OfNat 21 0
          | 3 => cyclicMergeWitness15OfNat 26 0
          | 4 => cyclicMergeWitness15OfNat 21 0
          | 5 => cyclicMergeWitness15OfNat 26 0
          | 6 => cyclicMergeWitness15OfNat 24 0
          | 7 => cyclicMergeWitness15OfNat 21 0
          | 8 => cyclicMergeWitness15OfNat 24 0
          | 9 => cyclicMergeWitness15OfNat 24 9
          | 10 => cyclicMergeWitness15OfNat 21 0
          | 11 => cyclicMergeWitness15OfNat 24 9
          | 12 => cyclicMergeWitness15OfNat 26 12
          | 13 => cyclicMergeWitness15OfNat 21 0
          | 14 => cyclicMergeWitness15OfNat 26 12
          | _ => cyclicMergeWitness15OfNat 0 0
      | 1 =>
          match t.val with
          | 0 => cyclicMergeWitness15OfNat 26 12
          | 1 => cyclicMergeWitness15OfNat 21 0
          | 2 => cyclicMergeWitness15OfNat 26 0
          | 4 => cyclicMergeWitness15OfNat 21 0
          | 7 => cyclicMergeWitness15OfNat 21 0
          | 10 => cyclicMergeWitness15OfNat 21 0
          | 13 => cyclicMergeWitness15OfNat 21 0
          | _ => cyclicMergeWitness15OfNat 0 0
      | _ => cyclicMergeWitness15OfNat 0 0
  | _ => cyclicMergeWitness15OfNat 0 0

end PetersenZeroForcing
