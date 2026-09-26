import Mathlib

namespace PetersenZeroForcing

/-- The two layers of the generalized Petersen graph. -/
inductive Layer
  | outer
  | inner
  deriving DecidableEq, Repr

/-- Explicit finite enumeration for compatibility with the Palomar-supported
Lean toolchain. This has the same two elements as the derived instance used by
the audited Lean 4.19 development. -/
instance : Fintype Layer where
  elems := {Layer.outer, Layer.inner}
  complete := by
    intro x
    cases x <;> simp

/-- Vertices of P(n,3), represented by a layer and an index modulo n. -/
abbrev Vertex (n : Nat) := Layer × ZMod n

def u {n : Nat} (i : ZMod n) : Vertex n := (Layer.outer, i)
def v {n : Nat} (i : ZMod n) : Vertex n := (Layer.inner, i)

/-- The three prescribed neighbours in P(n,3). -/
def neighbors (n : Nat) [NeZero n] : Vertex n → Finset (Vertex n)
  | (Layer.outer, i) => {u (i - 1), u (i + 1), v i}
  | (Layer.inner, i) => {v (i - 3), v (i + 3), u i}

/-- White neighbours of a blue vertex. -/
def whiteNeighbors (n : Nat) [NeZero n]
    (blue : Finset (Vertex n)) (x : Vertex n) : Finset (Vertex n) :=
  neighbors n x \ blue

/-- One simultaneous round of the standard color-change rule. -/
def forceStep (n : Nat) [NeZero n] (blue : Finset (Vertex n)) : Finset (Vertex n) :=
  blue ∪ Finset.univ.filter (fun y =>
    ∃ x ∈ blue, whiteNeighbors n blue x = {y})

/-- Iteration for one vertex-cardinality many rounds.  Later lemmas prove this
is the eventual zero-forcing closure. -/
def closure (n : Nat) [NeZero n] (blue : Finset (Vertex n)) : Finset (Vertex n) :=
  (forceStep n)^[Fintype.card (Vertex n)] blue

def IsZeroForcing (n : Nat) [NeZero n] (blue : Finset (Vertex n)) : Prop :=
  closure n blue = Finset.univ

end PetersenZeroForcing
