import Mathlib

/-!
# Generalized Petersen graph zero forcing

This is the Palomar statement surface for the theorem that the zero-forcing
number of the generalized Petersen graph P(n,3) is eight for every n ≥ 13.

The definitions below intentionally reproduce the declarations on which the
proved theorem's type depends.  The Challenge imports only Mathlib; Comparator
checks this declaration closure against the independently compiled Solution.
-/

namespace PetersenZeroForcing

/-- The two layers of the generalized Petersen graph. -/
inductive Layer
  | outer
  | inner
  deriving DecidableEq, Repr

/-- Explicit finite enumeration of the two layers. -/
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

/-- Iteration for one vertex-cardinality many rounds. -/
def closure (n : Nat) [NeZero n] (blue : Finset (Vertex n)) : Finset (Vertex n) :=
  (forceStep n)^[Fintype.card (Vertex n)] blue

def IsZeroForcing (n : Nat) [NeZero n] (blue : Finset (Vertex n)) : Prop :=
  closure n blue = Finset.univ

theorem subset_forceStep (n : Nat) [NeZero n] (blue : Finset (Vertex n)) :
    blue ⊆ forceStep n blue := by
  intro x hx
  exact Finset.mem_union_left _ hx

theorem subset_iterate_forceStep (n : Nat) [NeZero n] (blue : Finset (Vertex n)) :
    ∀ k : Nat, blue ⊆ (forceStep n)^[k] blue := by
  intro k
  induction k with
  | zero => simp
  | succ k ih =>
      rw [Function.iterate_succ_apply']
      exact ih.trans (subset_forceStep n _)

theorem subset_closure (n : Nat) [NeZero n] (blue : Finset (Vertex n)) :
    blue ⊆ closure n blue := by
  simpa [closure] using subset_iterate_forceStep n blue (Fintype.card (Vertex n))

theorem univ_zero_forcing (n : Nat) [NeZero n] :
    IsZeroForcing n (Finset.univ : Finset (Vertex n)) := by
  apply Finset.Subset.antisymm
  · exact Finset.subset_univ _
  · exact subset_closure n Finset.univ

/-- The zero-forcing number, defined as the least cardinality of a forcing set. -/
noncomputable def Z (n : Nat) [NeZero n] : Nat := by
  classical
  exact Nat.find (show ∃ k : Nat, ∃ S : Finset (Vertex n), IsZeroForcing n S ∧ S.card = k by
    exact ⟨(Finset.univ : Finset (Vertex n)).card, Finset.univ, univ_zero_forcing n, rfl⟩)

/-- The zero-forcing number of P(n,3) is exactly eight for every n ≥ 13. -/
theorem zero_forcing_number_eq_eight
    (n : Nat) [NeZero n] (hn13 : 13 ≤ n) :
    Z n = 8 := by
  sorry

end PetersenZeroForcing
