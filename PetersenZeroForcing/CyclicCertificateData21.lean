import PetersenZeroForcing.CyclicCertificate

namespace PetersenZeroForcing

def cyclicShapes21 : List (CyclicShapeDatum 21) := [
  { weight := 1, vertices := [u 0].toFinset },
  { weight := 1, vertices := [v 0].toFinset },
  { weight := 2, vertices := [u 0, v 0].toFinset },
  { weight := 2, vertices := [u 0, u 1].toFinset },
  { weight := 2, vertices := [v 0, v 3].toFinset },
  { weight := 3, vertices := [u 0, u 1, v 1, u 2].toFinset },
  { weight := 3, vertices := [v 0, u 3, v 3, v 6].toFinset },
  { weight := 4, vertices := [u 0, u 1, v 1, u 2, v 2, u 3].toFinset },
  { weight := 4, vertices := [v 0, u 2, u 3, v 3, u 4, v 6].toFinset },
  { weight := 4, vertices := [v 0, u 3, v 3, u 6, v 6, v 9].toFinset },
  { weight := 5, vertices := [u 0, u 1, v 1, u 2, v 2, u 3, v 3, u 4].toFinset },
  { weight := 5, vertices := [v 0, u 1, u 2, v 2, u 3, v 3, u 4, v 6].toFinset },
  { weight := 5, vertices := [v 0, u 2, u 3, v 3, u 4, v 4, u 5, v 6].toFinset },
  { weight := 5, vertices := [v 0, u 2, u 3, v 3, u 4, u 6, v 6, v 9].toFinset },
  { weight := 5, vertices := [v 0, u 3, v 3, u 5, u 6, v 6, u 7, v 9].toFinset },
  { weight := 5, vertices := [v 0, u 3, v 3, u 6, v 6, u 9, v 9, v 12].toFinset },
  { weight := 6, vertices := [v 0, u 1, u 2, v 2, u 3, v 3, u 4, v 4, u 5, v 6].toFinset },
  { weight := 6, vertices := [v 0, u 1, u 2, v 2, u 3, v 3, u 4, u 6, v 6, v 9].toFinset },
  { weight := 6, vertices := [v 0, v 1, u 2, u 3, v 3, u 4, v 4, u 5, v 6, v 7].toFinset },
  { weight := 6, vertices := [v 0, u 2, u 3, v 3, u 4, v 4, u 5, v 5, u 6, v 6, u 7, v 9].toFinset },
  { weight := 6, vertices := [v 0, u 2, u 3, v 3, u 4, u 6, v 6, u 9, v 9, v 12].toFinset },
  { weight := 6, vertices := [v 0, u 3, v 3, u 5, u 6, v 6, u 7, v 7, u 8, v 9].toFinset },
  { weight := 6, vertices := [v 0, u 3, v 3, u 5, u 6, v 6, u 7, u 9, v 9, v 12].toFinset },
  { weight := 6, vertices := [v 0, u 3, v 3, u 6, v 6, u 8, u 9, v 9, u 10, v 12].toFinset },
  { weight := 6, vertices := [v 0, u 3, v 3, u 6, v 6, u 9, v 9, u 12, v 12, v 15].toFinset },
  { weight := 7, vertices := [v 0, u 1, u 2, v 2, u 3, v 3, u 4, u 6, v 6, u 9, v 9, v 12].toFinset },
  { weight := 7, vertices := [v 0, v 1, u 2, u 3, v 3, u 4, v 4, u 5, v 5, u 6, v 6, u 7, v 7, u 8, v 9, v 10].toFinset },
  { weight := 7, vertices := [v 0, v 1, u 2, u 3, v 3, u 4, v 4, u 5, v 6, u 7, v 7, v 10].toFinset },
  { weight := 7, vertices := [v 0, u 2, u 3, v 3, u 4, v 4, u 5, v 5, u 6, v 6, u 7, u 9, v 9, v 12].toFinset },
  { weight := 7, vertices := [v 0, u 2, u 3, v 3, u 4, u 6, v 6, u 8, u 9, v 9, u 10, v 12].toFinset },
  { weight := 7, vertices := [v 0, u 2, u 3, v 3, u 4, u 6, v 6, u 9, v 9, u 12, v 12, v 15].toFinset },
  { weight := 7, vertices := [v 0, u 3, v 3, v 4, u 5, u 6, v 6, u 7, v 7, u 8, v 9, v 10].toFinset },
  { weight := 7, vertices := [v 0, u 3, v 3, u 5, u 6, v 6, u 7, v 7, u 8, v 8, u 9, v 9, u 10, v 12].toFinset },
  { weight := 7, vertices := [v 0, u 3, v 3, u 5, u 6, v 6, u 7, u 9, v 9, u 12, v 12, v 15].toFinset },
  { weight := 7, vertices := [v 0, u 3, v 3, u 6, v 6, u 8, u 9, v 9, u 10, v 10, u 11, v 12].toFinset },
  { weight := 7, vertices := [v 0, u 3, v 3, u 6, v 6, u 8, u 9, v 9, u 10, u 12, v 12, v 15].toFinset },
  { weight := 7, vertices := [v 0, u 3, v 3, u 6, v 6, u 9, v 9, u 11, u 12, v 12, u 13, v 15].toFinset },
  { weight := 7, vertices := [u 0, u 3, u 6, u 9, u 12, u 15, u 18, v 0, v 3, v 6, v 9, v 12, v 15, v 18].toFinset }
]

def cyclicSizeBound21 : Nat → Nat
  | 0 => 0
  | 1 => 1
  | 2 => 2
  | 3 => 4
  | 4 => 6
  | 5 => 8
  | 6 => 12
  | 7 => 16
  | _ => 0

def cyclicCertificate21 : CyclicCertificate 21 :=
  CyclicCertificate.ofList 21 cyclicShapes21
    (fun
      | Layer.outer => ⟨0, by decide⟩
      | Layer.inner => ⟨1, by decide⟩)
    cyclicSizeBound21

end PetersenZeroForcing
