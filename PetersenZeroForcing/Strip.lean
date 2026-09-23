import PetersenZeroForcing.Core

namespace PetersenZeroForcing

abbrev StripVertex := Layer × ℤ

def su (i : ℤ) : StripVertex := (Layer.outer, i)
def sv (i : ℤ) : StripVertex := (Layer.inner, i)

def stripNeighbors : StripVertex → Finset StripVertex
  | (Layer.outer, i) => {su (i - 1), su (i + 1), sv i}
  | (Layer.inner, i) => {sv (i - 3), sv (i + 3), su i}

/-- Mathematical closedness on the infinite strip. -/
def StripClosed (C : Finset StripVertex) : Prop :=
  ∀ x ∈ C, (stripNeighbors x \ C).card ≠ 1

def translateVertex (t : ℤ) (x : StripVertex) : StripVertex :=
  (x.1, x.2 + t)

def translateSet (C : Finset StripVertex) (t : ℤ) : Finset StripVertex :=
  C.image (translateVertex t)

/-- Mathematical contact: overlap or a strip edge joins the two finite sets. -/
def StripTouches (A B : Finset StripVertex) : Prop :=
  ∃ x ∈ A, ∃ y ∈ B, x = y ∨ y ∈ stripNeighbors x

def projectVertex (n : Nat) [NeZero n] (x : StripVertex) : Vertex n :=
  (x.1, (x.2 : ZMod n))

def projectSet (n : Nat) [NeZero n] (C : Finset StripVertex) : Finset (Vertex n) :=
  C.image (projectVertex n)

end PetersenZeroForcing
