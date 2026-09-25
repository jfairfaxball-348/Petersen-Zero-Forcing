import PetersenZeroForcing.CyclicCertificate

namespace PetersenZeroForcing

def cyclicShapes13 : List (CyclicShapeDatum 13) := [
  { weight := 1, vertices := [u 0].toFinset },
  { weight := 1, vertices := [v 0].toFinset },
  { weight := 2, vertices := [u 0, u 1].toFinset },
  { weight := 2, vertices := [u 0, v 0].toFinset },
  { weight := 2, vertices := [v 0, v 3].toFinset },
  { weight := 3, vertices := [u 0, u 1, u 2, v 1].toFinset },
  { weight := 3, vertices := [u 0, v 0, v 3, v 10].toFinset },
  { weight := 4, vertices := [u 0, u 1, u 2, u 3, v 1, v 2].toFinset },
  { weight := 4, vertices := [u 0, u 1, u 2, v 1, v 4, v 11].toFinset },
  { weight := 4, vertices := [u 0, u 3, v 0, v 3, v 6, v 10].toFinset },
  { weight := 5, vertices := [u 0, u 1, u 2, u 3, u 4, v 1, v 2, v 3].toFinset },
  { weight := 5, vertices := [u 0, u 1, u 2, u 3, v 1, v 2, v 4, v 11].toFinset },
  { weight := 5, vertices := [u 0, u 1, u 2, u 3, v 1, v 2, v 5, v 12].toFinset },
  { weight := 5, vertices := [u 0, u 1, u 2, u 4, v 1, v 4, v 7, v 11].toFinset },
  { weight := 5, vertices := [u 0, u 1, u 2, u 11, v 1, v 4, v 8, v 11].toFinset },
  { weight := 5, vertices := [u 0, u 3, u 6, v 0, v 3, v 6, v 9, v 10].toFinset },
  { weight := 6, vertices := [u 0, u 1, u 2, u 3, u 4, v 1, v 2, v 3, v 5, v 12].toFinset },
  { weight := 6, vertices := [u 0, u 1, u 2, u 3, u 5, v 1, v 2, v 5, v 8, v 12].toFinset },
  { weight := 6, vertices := [u 0, u 1, u 2, u 3, u 11, v 1, v 2, v 4, v 8, v 11].toFinset },
  { weight := 6, vertices := [u 0, u 1, u 2, u 3, v 1, v 2, v 4, v 5, v 11, v 12].toFinset },
  { weight := 6, vertices := [u 0, u 1, u 2, u 4, u 7, v 1, v 4, v 7, v 10, v 11].toFinset },
  { weight := 6, vertices := [u 0, u 1, u 2, u 4, u 11, v 1, v 4, v 7, v 8, v 11].toFinset },
  { weight := 6, vertices := [u 0, u 1, u 2, u 8, u 11, v 1, v 4, v 5, v 8, v 11].toFinset },
  { weight := 6, vertices := [u 0, u 3, u 6, u 9, v 0, v 3, v 6, v 9, v 10, v 12].toFinset },
  { weight := 6, vertices := [u 0, u 1, u 2, u 3, u 4, u 5, v 1, v 2, v 3, v 4, v 7, v 11].toFinset },
  { weight := 7, vertices := [u 0, u 1, u 2, u 4, u 6, u 7, u 8, v 1, v 4, v 7, v 10, v 11].toFinset },
  { weight := 7, vertices := [u 0, u 1, u 2, u 4, u 7, u 11, v 1, v 4, v 7, v 8, v 10, v 11].toFinset },
  { weight := 7, vertices := [u 0, u 1, u 2, u 4, u 8, u 11, v 1, v 4, v 5, v 7, v 8, v 11].toFinset },
  { weight := 7, vertices := [u 0, u 1, u 2, u 3, u 4, u 5, u 7, v 1, v 2, v 3, v 4, v 7, v 10, v 11].toFinset },
  { weight := 7, vertices := [u 0, u 1, u 2, u 3, u 4, u 5, u 11, v 1, v 2, v 3, v 4, v 7, v 8, v 11].toFinset },
  { weight := 7, vertices := [u 0, u 1, u 2, u 3, u 5, u 8, u 11, v 1, v 2, v 4, v 5, v 8, v 11, v 12].toFinset },
  { weight := 7, vertices := [u 0, u 1, u 2, u 3, u 4, u 5, u 6, u 8, u 11, v 1, v 2, v 3, v 4, v 5, v 7, v 8, v 11, v 12].toFinset }
]

def cyclicSizeBound13 : Nat → Nat
  | 0 => 0
  | 1 => 1
  | 2 => 2
  | 3 => 4
  | 4 => 6
  | 5 => 8
  | 6 => 12
  | 7 => 18
  | _ => 0

def cyclicCertificate13 : CyclicCertificate 13 :=
  CyclicCertificate.ofList 13 cyclicShapes13
    (fun
      | Layer.outer => ⟨0, by decide⟩
      | Layer.inner => ⟨1, by decide⟩)
    cyclicSizeBound13

end PetersenZeroForcing
