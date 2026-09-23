import PetersenZeroForcing.Forcing

namespace PetersenZeroForcing
namespace FiniteScan

def allB {α : Type*} (s : Finset α) (p : α → Bool) : Bool :=
  s.fold (· && ·) true p

theorem allB_eq_true {α : Type*} (s : Finset α) (p : α → Bool) :
    allB s p = true ↔ ∀ x ∈ s, p x = true := by
  classical
  induction s using Finset.induction_on with
  | empty => simp [allB]
  | @insert a s ha ih =>
      simp [allB, Finset.fold_insert ha, ih, ha]

def sources (n : Nat) [NeZero n] : Finset (Vertex n) := {u 0, v 0}

def bases (n : Nat) [NeZero n] : Finset (Finset (Vertex n)) :=
  (sources n).biUnion fun source =>
    ((neighbors n source).powersetCard 2).image fun pair => insert source pair

def reducedScanB (n : Nat) [NeZero n] : Bool :=
  allB (bases n) fun base =>
    allB ((Finset.univ \ base).powersetCard 4) fun extra =>
      decide (closure n (base ∪ extra) ≠ Finset.univ)

theorem reducedScanB_spec (n : Nat) [NeZero n]
    (h : reducedScanB n = true)
    {base extra : Finset (Vertex n)}
    (hbase : base ∈ bases n)
    (hextra : extra ∈ (Finset.univ \ base).powersetCard 4) :
    closure n (base ∪ extra) ≠ Finset.univ := by
  have hb := (allB_eq_true (bases n) _).mp h base hbase
  have he := (allB_eq_true ((Finset.univ \ base).powersetCard 4) _).mp hb extra hextra
  simpa using of_decide_eq_true he

set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem scan13_checked : reducedScanB 13 = true := by decide

end FiniteScan
end PetersenZeroForcing
