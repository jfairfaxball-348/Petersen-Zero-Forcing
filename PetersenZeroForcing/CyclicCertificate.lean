import PetersenZeroForcing.LargeLowerBound
import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing

structure CyclicShapeDatum (n : Nat) [NeZero n] where
  weight : Nat
  vertices : Finset (Vertex n)
  deriving DecidableEq

structure CyclicCertificate (n : Nat) [NeZero n] where
  shapeCount : Nat
  shape : Fin shapeCount → Finset (Vertex n)
  weight : Fin shapeCount → Nat
  singletonRep : Layer → Fin shapeCount
  sizeBound : Nat → Nat

namespace CyclicCertificate

def ofList (n : Nat) [NeZero n]
    (shapes : List (CyclicShapeDatum n))
    (singletonRep : Layer → Fin shapes.length)
    (sizeBound : Nat → Nat) : CyclicCertificate n where
  shapeCount := shapes.length
  shape i := (shapes.get i).vertices
  weight i := (shapes.get i).weight
  singletonRep := singletonRep
  sizeBound := sizeBound

def singletonRowsB (n : Nat) [NeZero n]
    (cert : CyclicCertificate n) : Bool :=
  FiniteScan.allB (Finset.univ : Finset Layer) fun l =>
    decide (
      cert.weight (cert.singletonRep l) = 1 ∧
      cert.shape (cert.singletonRep l) = {(l, (0 : ZMod n))})

def shapeRowB (n : Nat) [NeZero n]
    (cert : CyclicCertificate n) (i : Fin cert.shapeCount) : Bool :=
  FiniteScan.closedB n (cert.shape i) &&
    (decide (1 ≤ cert.weight i ∧ cert.weight i ≤ 7) &&
      decide ((cert.shape i).card ≤ cert.sizeBound (cert.weight i)))

def shapeRowsB (n : Nat) [NeZero n]
    (cert : CyclicCertificate n) : Bool :=
  FiniteScan.allB (Finset.univ : Finset (Fin cert.shapeCount))
    (shapeRowB n cert)

def superadditiveB (n : Nat) [NeZero n]
    (cert : CyclicCertificate n) : Bool :=
  FiniteScan.allB (Finset.range 8) fun a =>
    FiniteScan.allB (Finset.range 8) fun b =>
      if a + b ≤ 7 then
        decide (cert.sizeBound a + cert.sizeBound b ≤ cert.sizeBound (a + b))
      else
        true

def properBoundsB (n : Nat) [NeZero n]
    (cert : CyclicCertificate n) : Bool :=
  FiniteScan.allB (Finset.range 8) fun a =>
    decide (cert.sizeBound a < 2 * n)

def anyB {α : Type*} (s : Finset α) (p : α → Bool) : Bool :=
  s.fold (· || ·) false p

theorem anyB_eq_true {α : Type*} (s : Finset α) (p : α → Bool) :
    anyB s p = true ↔ ∃ x ∈ s, p x = true := by
  classical
  induction s using Finset.induction_on with
  | empty =>
      simp [anyB]
  | @insert a s ha ih =>
      rw [anyB, Finset.fold_insert ha]
      change ((p a || anyB s p) = true ↔ ∃ x ∈ insert a s, p x = true)
      simp [ih, ha]

def directedTouchesB (n : Nat) [NeZero n]
    (A B : Finset (Vertex n)) : Bool :=
  anyB A fun x =>
    anyB B fun y => decide (x = y ∨ y ∈ neighbors n x)

def cyclicTouchesB (n : Nat) [NeZero n]
    (A B : Finset (Vertex n)) : Bool :=
  directedTouchesB n A B || directedTouchesB n B A

theorem directedTouchesB_eq_true (n : Nat) [NeZero n]
    (A B : Finset (Vertex n)) :
    directedTouchesB n A B = true ↔ DirectedTouches n A B := by
  unfold directedTouchesB DirectedTouches
  rw [anyB_eq_true]
  constructor
  · rintro ⟨x, hx, hxb⟩
    rw [anyB_eq_true] at hxb
    rcases hxb with ⟨y, hy, hxy⟩
    exact ⟨x, hx, y, hy, of_decide_eq_true hxy⟩
  · rintro ⟨x, hx, y, hy, hxy⟩
    refine ⟨x, hx, ?_⟩
    exact (anyB_eq_true B _).2
      ⟨y, hy, (decide_eq_true_iff).2 hxy⟩

theorem cyclicTouchesB_eq_true (n : Nat) [NeZero n]
    (A B : Finset (Vertex n)) :
    cyclicTouchesB n A B = true ↔ CyclicTouches n A B := by
  simp [cyclicTouchesB, CyclicTouches, directedTouchesB_eq_true]

def mergeWitnessB (n : Nat) [NeZero n]
    (cert : CyclicCertificate n)
    (a b : Fin cert.shapeCount) (t : ZMod n) : Bool :=
  decide (
    ∃ c : Fin cert.shapeCount, ∃ q : ZMod n,
      cert.weight c ≤ cert.weight a + cert.weight b ∧
      cert.shape a ⊆ rotateSet n q (cert.shape c) ∧
      rotateSet n t (cert.shape b) ⊆ rotateSet n q (cert.shape c))

def mergeRowB (n : Nat) [NeZero n]
    (cert : CyclicCertificate n)
    (a b : Fin cert.shapeCount) (t : ZMod n) : Bool :=
  if cert.weight a + cert.weight b ≤ 7 then
    if cyclicTouchesB n (cert.shape a) (rotateSet n t (cert.shape b)) then
      mergeWitnessB n cert a b t
    else
      true
  else
    true

def mergeRowsB (n : Nat) [NeZero n]
    (cert : CyclicCertificate n) : Bool :=
  FiniteScan.allB (Finset.univ : Finset (Fin cert.shapeCount)) fun a =>
    FiniteScan.allB (Finset.univ : Finset (Fin cert.shapeCount)) fun b =>
      FiniteScan.allB (Finset.univ : Finset (ZMod n)) fun t =>
        mergeRowB n cert a b t

def checkedB (n : Nat) [NeZero n]
    (cert : CyclicCertificate n) : Bool :=
  singletonRowsB n cert &&
    (shapeRowsB n cert &&
      (superadditiveB n cert &&
        (properBoundsB n cert && mergeRowsB n cert)))

theorem singletonRowsB_spec (n : Nat) [NeZero n]
    (cert : CyclicCertificate n)
    (h : singletonRowsB n cert = true)
    (l : Layer) :
    cert.weight (cert.singletonRep l) = 1 ∧
    cert.shape (cert.singletonRep l) = {(l, (0 : ZMod n))} := by
  have hl := (FiniteScan.allB_eq_true
    (Finset.univ : Finset Layer) _).1 h l (Finset.mem_univ l)
  exact of_decide_eq_true hl

theorem shapeRowsB_spec (n : Nat) [NeZero n]
    (cert : CyclicCertificate n)
    (h : shapeRowsB n cert = true)
    (i : Fin cert.shapeCount) :
    Closed n (cert.shape i) ∧
    (1 ≤ cert.weight i ∧ cert.weight i ≤ 7) ∧
    (cert.shape i).card ≤ cert.sizeBound (cert.weight i) := by
  have hi := (FiniteScan.allB_eq_true
    (Finset.univ : Finset (Fin cert.shapeCount)) _).1
    h i (Finset.mem_univ i)
  simp only [shapeRowB, Bool.and_eq_true] at hi
  exact ⟨
    (FiniteScan.closedB_eq_true n (cert.shape i)).1 hi.1,
    of_decide_eq_true hi.2.1,
    of_decide_eq_true hi.2.2⟩

theorem superadditiveB_spec (n : Nat) [NeZero n]
    (cert : CyclicCertificate n)
    (h : superadditiveB n cert = true)
    (a b : Nat) (hab : a + b ≤ 7) :
    cert.sizeBound a + cert.sizeBound b ≤ cert.sizeBound (a + b) := by
  have ha8 : a < 8 := by omega
  have hb8 : b < 8 := by omega
  have ha := (FiniteScan.allB_eq_true (Finset.range 8) _).1
    h a (Finset.mem_range.mpr ha8)
  have hb := (FiniteScan.allB_eq_true (Finset.range 8) _).1
    ha b (Finset.mem_range.mpr hb8)
  simp [hab] at hb
  exact hb

theorem properBoundsB_spec (n : Nat) [NeZero n]
    (cert : CyclicCertificate n)
    (h : properBoundsB n cert = true)
    (a : Nat) (ha : a ≤ 7) :
    cert.sizeBound a < 2 * n := by
  have ha8 : a < 8 := by omega
  have hrow := (FiniteScan.allB_eq_true (Finset.range 8) _).1
    h a (Finset.mem_range.mpr ha8)
  exact of_decide_eq_true hrow

theorem mergeRowsB_spec (n : Nat) [NeZero n]
    (cert : CyclicCertificate n)
    (h : mergeRowsB n cert = true)
    (a b : Fin cert.shapeCount) (t : ZMod n)
    (hweight : cert.weight a + cert.weight b ≤ 7)
    (htouch :
      CyclicTouches n (cert.shape a) (rotateSet n t (cert.shape b))) :
    ∃ c : Fin cert.shapeCount, ∃ q : ZMod n,
      cert.weight c ≤ cert.weight a + cert.weight b ∧
      cert.shape a ⊆ rotateSet n q (cert.shape c) ∧
      rotateSet n t (cert.shape b) ⊆ rotateSet n q (cert.shape c) := by
  have ha := (FiniteScan.allB_eq_true
    (Finset.univ : Finset (Fin cert.shapeCount)) _).1
    h a (Finset.mem_univ a)
  have hb := (FiniteScan.allB_eq_true
    (Finset.univ : Finset (Fin cert.shapeCount)) _).1
    ha b (Finset.mem_univ b)
  have ht := (FiniteScan.allB_eq_true
    (Finset.univ : Finset (ZMod n)) _).1
    hb t (Finset.mem_univ t)
  have htouchB :
      cyclicTouchesB n (cert.shape a) (rotateSet n t (cert.shape b)) = true :=
    (cyclicTouchesB_eq_true n _ _).2 htouch
  have hmw : mergeWitnessB n cert a b t = true := by
    simpa [mergeRowB, hweight, htouchB] using ht
  change decide (
    ∃ c : Fin cert.shapeCount, ∃ q : ZMod n,
      cert.weight c ≤ cert.weight a + cert.weight b ∧
      cert.shape a ⊆ rotateSet n q (cert.shape c) ∧
      rotateSet n t (cert.shape b) ⊆ rotateSet n q (cert.shape c)) = true at hmw
  exact of_decide_eq_true hmw

theorem checkedB_specs (n : Nat) [NeZero n]
    (cert : CyclicCertificate n)
    (h : checkedB n cert = true) :
    singletonRowsB n cert = true ∧
    shapeRowsB n cert = true ∧
    superadditiveB n cert = true ∧
    properBoundsB n cert = true ∧
    mergeRowsB n cert = true := by
  simpa [checkedB, Bool.and_eq_true] using h


/-- A transparent, untrusted merge witness supplied by finite certificate data.
The Boolean checker below verifies the witness against the original
`rotateSet`, weight, and containment semantics before it is used. -/
structure MergeWitness
    (n : Nat) [NeZero n] (cert : CyclicCertificate n) where
  target : Fin cert.shapeCount
  shift : ZMod n

def providedMergeWitnessB
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (witness :
      (a b : Fin cert.shapeCount) → ZMod n → MergeWitness n cert)
    (a b : Fin cert.shapeCount) (t : ZMod n) : Bool :=
  let w := witness a b t
  decide (
    cert.weight w.target ≤ cert.weight a + cert.weight b ∧
    cert.shape a ⊆ rotateSet n w.shift (cert.shape w.target) ∧
    rotateSet n t (cert.shape b) ⊆
      rotateSet n w.shift (cert.shape w.target))

def mergeRowWithWitnessB
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (witness :
      (a b : Fin cert.shapeCount) → ZMod n → MergeWitness n cert)
    (a b : Fin cert.shapeCount) (t : ZMod n) : Bool :=
  if cert.weight a + cert.weight b ≤ 7 then
    if cyclicTouchesB n (cert.shape a) (rotateSet n t (cert.shape b)) then
      providedMergeWitnessB n cert witness a b t
    else
      true
  else
    true

def mergeRowsWithWitnessB
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (witness :
      (a b : Fin cert.shapeCount) → ZMod n → MergeWitness n cert) : Bool :=
  FiniteScan.allB (Finset.univ : Finset (Fin cert.shapeCount)) fun a =>
    FiniteScan.allB (Finset.univ : Finset (Fin cert.shapeCount)) fun b =>
      FiniteScan.allB (Finset.univ : Finset (ZMod n)) fun t =>
        mergeRowWithWitnessB n cert witness a b t

def checkedWithWitnessB
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (witness :
      (a b : Fin cert.shapeCount) → ZMod n → MergeWitness n cert) : Bool :=
  singletonRowsB n cert &&
    (shapeRowsB n cert &&
      (superadditiveB n cert &&
        (properBoundsB n cert &&
          mergeRowsWithWitnessB n cert witness)))

theorem providedMergeWitnessB_spec
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (witness :
      (a b : Fin cert.shapeCount) → ZMod n → MergeWitness n cert)
    (a b : Fin cert.shapeCount) (t : ZMod n)
    (h : providedMergeWitnessB n cert witness a b t = true) :
    cert.weight (witness a b t).target ≤ cert.weight a + cert.weight b ∧
    cert.shape a ⊆
      rotateSet n (witness a b t).shift
        (cert.shape (witness a b t).target) ∧
    rotateSet n t (cert.shape b) ⊆
      rotateSet n (witness a b t).shift
        (cert.shape (witness a b t).target) := by
  change decide (
    cert.weight (witness a b t).target ≤ cert.weight a + cert.weight b ∧
    cert.shape a ⊆
      rotateSet n (witness a b t).shift
        (cert.shape (witness a b t).target) ∧
    rotateSet n t (cert.shape b) ⊆
      rotateSet n (witness a b t).shift
        (cert.shape (witness a b t).target)) = true at h
  exact of_decide_eq_true h

theorem mergeRowsWithWitnessB_spec
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (witness :
      (a b : Fin cert.shapeCount) → ZMod n → MergeWitness n cert)
    (h : mergeRowsWithWitnessB n cert witness = true)
    (a b : Fin cert.shapeCount) (t : ZMod n)
    (hweight : cert.weight a + cert.weight b ≤ 7)
    (htouch :
      CyclicTouches n (cert.shape a) (rotateSet n t (cert.shape b))) :
    ∃ c : Fin cert.shapeCount, ∃ q : ZMod n,
      cert.weight c ≤ cert.weight a + cert.weight b ∧
      cert.shape a ⊆ rotateSet n q (cert.shape c) ∧
      rotateSet n t (cert.shape b) ⊆ rotateSet n q (cert.shape c) := by
  have ha := (FiniteScan.allB_eq_true
    (Finset.univ : Finset (Fin cert.shapeCount)) _).1
    h a (Finset.mem_univ a)
  have hb := (FiniteScan.allB_eq_true
    (Finset.univ : Finset (Fin cert.shapeCount)) _).1
    ha b (Finset.mem_univ b)
  have ht := (FiniteScan.allB_eq_true
    (Finset.univ : Finset (ZMod n)) _).1
    hb t (Finset.mem_univ t)
  have htouchB :
      cyclicTouchesB n (cert.shape a) (rotateSet n t (cert.shape b)) = true :=
    (cyclicTouchesB_eq_true n _ _).2 htouch
  have hw :
      providedMergeWitnessB n cert witness a b t = true := by
    simpa [mergeRowWithWitnessB, hweight, htouchB] using ht
  have hv := providedMergeWitnessB_spec
    n cert witness a b t hw
  exact ⟨(witness a b t).target, (witness a b t).shift, hv⟩

theorem mergeRowsB_eq_true_of_mergeRowsWithWitnessB
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (witness :
      (a b : Fin cert.shapeCount) → ZMod n → MergeWitness n cert)
    (h : mergeRowsWithWitnessB n cert witness = true) :
    mergeRowsB n cert = true := by
  apply (FiniteScan.allB_eq_true
    (Finset.univ : Finset (Fin cert.shapeCount)) _).2
  intro a _ha
  apply (FiniteScan.allB_eq_true
    (Finset.univ : Finset (Fin cert.shapeCount)) _).2
  intro b _hb
  apply (FiniteScan.allB_eq_true
    (Finset.univ : Finset (ZMod n)) _).2
  intro t _ht
  unfold mergeRowB
  by_cases hweight : cert.weight a + cert.weight b ≤ 7
  · rw [if_pos hweight]
    by_cases htouchB :
        cyclicTouchesB n (cert.shape a) (rotateSet n t (cert.shape b)) = true
    · rw [if_pos htouchB]
      unfold mergeWitnessB
      apply decide_eq_true_iff.mpr
      exact mergeRowsWithWitnessB_spec n cert witness h a b t hweight
        ((cyclicTouchesB_eq_true n _ _).1 htouchB)
    · rw [if_neg htouchB]
  · rw [if_neg hweight]

theorem checkedB_eq_true_of_checkedWithWitnessB
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (witness :
      (a b : Fin cert.shapeCount) → ZMod n → MergeWitness n cert)
    (h : checkedWithWitnessB n cert witness = true) :
    checkedB n cert = true := by
  have hs :
      singletonRowsB n cert = true ∧
      shapeRowsB n cert = true ∧
      superadditiveB n cert = true ∧
      properBoundsB n cert = true ∧
      mergeRowsWithWitnessB n cert witness = true := by
    simpa [checkedWithWitnessB, Bool.and_eq_true] using h
  have hm : mergeRowsB n cert = true :=
    mergeRowsB_eq_true_of_mergeRowsWithWitnessB
      n cert witness hs.2.2.2.2
  simp only [checkedB, Bool.and_eq_true]
  exact ⟨hs.1, hs.2.1, hs.2.2.1, hs.2.2.2.1, hm⟩

end CyclicCertificate

@[simp] theorem rotateEquiv_add_apply
    (n : Nat) [NeZero n] (r s : ZMod n) (x : Vertex n) :
    rotateEquiv n s (rotateEquiv n r x) =
      rotateEquiv n (r + s) x := by
  rcases x with ⟨l, i⟩
  simp [rotateEquiv, add_assoc]

theorem rotateSet_add
    (n : Nat) [NeZero n] (r s : ZMod n)
    (S : Finset (Vertex n)) :
    rotateSet n s (rotateSet n r S) = rotateSet n (r + s) S := by
  ext x
  simp [rotateSet, rotateEquiv, sub_eq_add_neg, add_assoc]

@[simp] theorem rotateSet_zero
    (n : Nat) [NeZero n] (S : Finset (Vertex n)) :
    rotateSet n 0 S = S := by
  ext x
  constructor
  · intro hx
    rcases Finset.mem_map.mp hx with ⟨y, hy, hyx⟩
    have hxy : y = x := by
      simpa [rotateEquiv] using hyx
    simpa [hxy] using hy
  · intro hx
    exact Finset.mem_map.mpr ⟨x, hx, by simp [rotateEquiv]⟩

theorem rotateSet_mono
    (n : Nat) [NeZero n] (r : ZMod n)
    {A B : Finset (Vertex n)} (h : A ⊆ B) :
    rotateSet n r A ⊆ rotateSet n r B := by
  intro x hx
  rcases Finset.mem_map.mp hx with ⟨y, hy, rfl⟩
  exact Finset.mem_map.mpr ⟨y, h hy, rfl⟩

theorem directedTouches_rotate
    (n : Nat) [NeZero n] (r : ZMod n)
    {A B : Finset (Vertex n)}
    (h : DirectedTouches n A B) :
    DirectedTouches n (rotateSet n r A) (rotateSet n r B) := by
  rcases h with ⟨x, hx, y, hy, hxy⟩
  refine ⟨rotateEquiv n r x, Finset.mem_map.mpr ⟨x, hx, rfl⟩,
    rotateEquiv n r y, Finset.mem_map.mpr ⟨y, hy, rfl⟩, ?_⟩
  rcases hxy with hxy | hxy
  · exact Or.inl (congrArg (rotateEquiv n r) hxy)
  · right
    rw [← neighbors_rotate n r x]
    exact Finset.mem_map.mpr ⟨y, hxy, rfl⟩

theorem directedTouches_rotate_iff
    (n : Nat) [NeZero n] (r : ZMod n)
    (A B : Finset (Vertex n)) :
    DirectedTouches n (rotateSet n r A) (rotateSet n r B) ↔
      DirectedTouches n A B := by
  constructor
  · intro h
    have h' := directedTouches_rotate n (-r) h
    simpa [rotateSet_add] using h'
  · exact directedTouches_rotate n r

theorem cyclicTouches_rotate_iff
    (n : Nat) [NeZero n] (r : ZMod n)
    (A B : Finset (Vertex n)) :
    CyclicTouches n (rotateSet n r A) (rotateSet n r B) ↔
      CyclicTouches n A B := by
  constructor
  · intro h
    rcases h with hab | hba
    · exact Or.inl ((directedTouches_rotate_iff n r A B).1 hab)
    · exact Or.inr ((directedTouches_rotate_iff n r B A).1 hba)
  · intro h
    rcases h with hab | hba
    · exact Or.inl ((directedTouches_rotate_iff n r A B).2 hab)
    · exact Or.inr ((directedTouches_rotate_iff n r B A).2 hba)

structure CyclicCertifiedBlock
    (n : Nat) [NeZero n] (cert : CyclicCertificate n) where
  shape : Fin cert.shapeCount
  shift : ZMod n
  deriving DecidableEq, Repr

namespace CyclicCertifiedBlock

def vertices (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (b : CyclicCertifiedBlock n cert) : Finset (Vertex n) :=
  rotateSet n b.shift (cert.shape b.shape)

def weight (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (b : CyclicCertifiedBlock n cert) : Nat :=
  cert.weight b.shape

theorem closed
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (hrows : CyclicCertificate.shapeRowsB n cert = true)
    (b : CyclicCertifiedBlock n cert) :
    Closed n (vertices n cert b) := by
  unfold vertices
  exact closed_rotate n b.shift
    ((CyclicCertificate.shapeRowsB_spec n cert hrows b.shape).1)

theorem card_le_sizeBound
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (hrows : CyclicCertificate.shapeRowsB n cert = true)
    (b : CyclicCertifiedBlock n cert) :
    (vertices n cert b).card ≤ cert.sizeBound (weight n cert b) := by
  rw [vertices, card_rotateSet]
  exact (CyclicCertificate.shapeRowsB_spec n cert hrows b.shape).2.2

end CyclicCertifiedBlock

theorem merge_touching_cyclic_blocks
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (hmerges : CyclicCertificate.mergeRowsB n cert = true)
    (a b : CyclicCertifiedBlock n cert)
    (hweight :
      CyclicCertifiedBlock.weight n cert a +
        CyclicCertifiedBlock.weight n cert b ≤ 7)
    (htouch : CyclicTouches n
      (CyclicCertifiedBlock.vertices n cert a)
      (CyclicCertifiedBlock.vertices n cert b)) :
    ∃ c : CyclicCertifiedBlock n cert,
      CyclicCertifiedBlock.weight n cert c ≤
        CyclicCertifiedBlock.weight n cert a +
          CyclicCertifiedBlock.weight n cert b ∧
      CyclicCertifiedBlock.vertices n cert a ⊆
        CyclicCertifiedBlock.vertices n cert c ∧
      CyclicCertifiedBlock.vertices n cert b ⊆
        CyclicCertifiedBlock.vertices n cert c := by
  let t : ZMod n := b.shift - a.shift
  have htouch' :
      CyclicTouches n
        (rotateSet n a.shift (cert.shape a.shape))
        (rotateSet n a.shift (rotateSet n t (cert.shape b.shape))) := by
    simpa [CyclicCertifiedBlock.vertices, t, rotateSet_add] using htouch
  have hbase :
      CyclicTouches n (cert.shape a.shape)
        (rotateSet n t (cert.shape b.shape)) :=
    (cyclicTouches_rotate_iff n a.shift
      (cert.shape a.shape) (rotateSet n t (cert.shape b.shape))).1 htouch'
  rcases CyclicCertificate.mergeRowsB_spec n cert hmerges
      a.shape b.shape t hweight hbase with
    ⟨shapeC, q, hweightC, hcontainA, hcontainB⟩
  let c : CyclicCertifiedBlock n cert := ⟨shapeC, q + a.shift⟩
  have hA := rotateSet_mono n a.shift hcontainA
  have hB := rotateSet_mono n a.shift hcontainB
  refine ⟨c, ?_, ?_, ?_⟩
  · exact hweightC
  · simpa [CyclicCertifiedBlock.vertices, c, rotateSet_add] using hA
  · simpa [CyclicCertifiedBlock.vertices, c, t, rotateSet_add] using hB

open scoped BigOperators

def cyclicBlockFamilyWeight
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (F : Finset (CyclicCertifiedBlock n cert)) : Nat :=
  ∑ b ∈ F, CyclicCertifiedBlock.weight n cert b

def cyclicBlockFamilyUnion
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (F : Finset (CyclicCertifiedBlock n cert)) : Finset (Vertex n) :=
  F.biUnion (CyclicCertifiedBlock.vertices n cert)

def CyclicTerminalBlockFamily
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (F : Finset (CyclicCertifiedBlock n cert)) : Prop :=
  ∀ a ∈ F, ∀ b ∈ F, a ≠ b →
    ¬ CyclicTouches n
      (CyclicCertifiedBlock.vertices n cert a)
      (CyclicCertifiedBlock.vertices n cert b)

theorem cyclic_block_mem_familyUnion
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    {F : Finset (CyclicCertifiedBlock n cert)}
    {b : CyclicCertifiedBlock n cert} (hb : b ∈ F) :
    CyclicCertifiedBlock.vertices n cert b ⊆
      cyclicBlockFamilyUnion n cert F := by
  intro x hx
  exact Finset.mem_biUnion.mpr ⟨b, hb, hx⟩

theorem terminalize_cyclic_block_family
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (hmerges : CyclicCertificate.mergeRowsB n cert = true)
    (F : Finset (CyclicCertifiedBlock n cert))
    (hweight : cyclicBlockFamilyWeight n cert F ≤ 7) :
    ∃ G : Finset (CyclicCertifiedBlock n cert),
      CyclicTerminalBlockFamily n cert G ∧
      cyclicBlockFamilyWeight n cert G ≤ cyclicBlockFamilyWeight n cert F ∧
      cyclicBlockFamilyUnion n cert F ⊆ cyclicBlockFamilyUnion n cert G := by
  classical
  by_cases hterm : CyclicTerminalBlockFamily n cert F
  · exact ⟨F, hterm, le_rfl, fun _ hx => hx⟩
  · simp only [CyclicTerminalBlockFamily] at hterm
    push_neg at hterm
    rcases hterm with ⟨a, ha, b, hb, hab, htouch⟩
    have hbEraseA : b ∈ F.erase a := by
      exact Finset.mem_erase.mpr ⟨Ne.symm hab, hb⟩
    let R : Finset (CyclicCertifiedBlock n cert) := (F.erase a).erase b
    have hsumA :
        cyclicBlockFamilyWeight n cert (F.erase a) +
            CyclicCertifiedBlock.weight n cert a =
          cyclicBlockFamilyWeight n cert F := by
      simpa [cyclicBlockFamilyWeight] using
        (Finset.sum_erase_add F (CyclicCertifiedBlock.weight n cert) ha)
    have hsumB :
        cyclicBlockFamilyWeight n cert R +
            CyclicCertifiedBlock.weight n cert b =
          cyclicBlockFamilyWeight n cert (F.erase a) := by
      simpa [cyclicBlockFamilyWeight, R] using
        (Finset.sum_erase_add (F.erase a)
          (CyclicCertifiedBlock.weight n cert) hbEraseA)
    have hpair :
        CyclicCertifiedBlock.weight n cert a +
            CyclicCertifiedBlock.weight n cert b ≤ 7 := by
      have hp :
          CyclicCertifiedBlock.weight n cert a +
              CyclicCertifiedBlock.weight n cert b ≤
            cyclicBlockFamilyWeight n cert F := by
        omega
      exact hp.trans hweight
    rcases merge_touching_cyclic_blocks n cert hmerges a b hpair htouch with
      ⟨c, hcweight, hac, hbc⟩
    let F' : Finset (CyclicCertifiedBlock n cert) := insert c R
    have hweight' :
        cyclicBlockFamilyWeight n cert F' ≤
          cyclicBlockFamilyWeight n cert F := by
      by_cases hcR : c ∈ R
      · have heq :
          cyclicBlockFamilyWeight n cert F' =
            cyclicBlockFamilyWeight n cert R := by
          simp [F', cyclicBlockFamilyWeight, hcR]
        rw [heq]
        omega
      · have heq :
          cyclicBlockFamilyWeight n cert F' =
            CyclicCertifiedBlock.weight n cert c +
              cyclicBlockFamilyWeight n cert R := by
          simp [F', cyclicBlockFamilyWeight, hcR]
        rw [heq]
        omega
    have hweight7 : cyclicBlockFamilyWeight n cert F' ≤ 7 :=
      hweight'.trans hweight
    have hcardA : (F.erase a).card < F.card :=
      Finset.card_erase_lt_of_mem ha
    have hcardB : R.card < (F.erase a).card := by
      simpa [R] using Finset.card_erase_lt_of_mem hbEraseA
    have hcard' : F'.card < F.card := by
      by_cases hcR : c ∈ R
      · have heq : F' = R := Finset.insert_eq_of_mem hcR
        rw [heq]
        exact hcardB.trans hcardA
      · rw [show F' = insert c R from rfl, Finset.card_insert_of_notMem hcR]
        omega
    have hcover :
        cyclicBlockFamilyUnion n cert F ⊆
          cyclicBlockFamilyUnion n cert F' := by
      intro x hx
      rcases Finset.mem_biUnion.mp hx with ⟨d, hdF, hxd⟩
      by_cases hda : d = a
      · subst d
        exact Finset.mem_biUnion.mpr
          ⟨c, by simp [F'], hac hxd⟩
      · by_cases hdb : d = b
        · subst d
          exact Finset.mem_biUnion.mpr
            ⟨c, by simp [F'], hbc hxd⟩
        · have hdR : d ∈ R := by
            simp [R, Finset.mem_erase, hdF, hda, hdb]
          exact Finset.mem_biUnion.mpr
            ⟨d, by simp [F', hdR], hxd⟩
    rcases terminalize_cyclic_block_family n cert hmerges F' hweight7 with
      ⟨G, hGterm, hGweight, hGcover⟩
    exact ⟨G, hGterm, hGweight.trans hweight',
      fun x hx => hGcover (hcover hx)⟩
termination_by F.card

theorem cyclic_terminal_family_closed
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (hrows : CyclicCertificate.shapeRowsB n cert = true)
    (F : Finset (CyclicCertifiedBlock n cert))
    (hterm : CyclicTerminalBlockFamily n cert F) :
    Closed n (cyclicBlockFamilyUnion n cert F) := by
  intro x hx
  rcases Finset.mem_biUnion.mp hx with ⟨b, hbF, hxb⟩
  have hbclosed := CyclicCertifiedBlock.closed n cert hrows b
  have hdiff :
      neighbors n x \ cyclicBlockFamilyUnion n cert F =
        neighbors n x \ CyclicCertifiedBlock.vertices n cert b := by
    ext y
    constructor
    · intro hy
      rcases Finset.mem_sdiff.mp hy with ⟨hyn, hyu⟩
      exact Finset.mem_sdiff.mpr
        ⟨hyn, fun hyb => hyu (cyclic_block_mem_familyUnion n cert hbF hyb)⟩
    · intro hy
      rcases Finset.mem_sdiff.mp hy with ⟨hyn, hyb⟩
      refine Finset.mem_sdiff.mpr ⟨hyn, ?_⟩
      intro hyu
      rcases Finset.mem_biUnion.mp hyu with ⟨d, hdF, hyd⟩
      by_cases hdb : d = b
      · subst d
        exact hyb hyd
      · have hdir :
            DirectedTouches n
              (CyclicCertifiedBlock.vertices n cert b)
              (CyclicCertifiedBlock.vertices n cert d) :=
          ⟨x, hxb, y, hyd, Or.inr hyn⟩
        have hcyc :
            CyclicTouches n
              (CyclicCertifiedBlock.vertices n cert b)
              (CyclicCertifiedBlock.vertices n cert d) :=
          Or.inl hdir
        exact (hterm b hbF d hdF (Ne.symm hdb)) hcyc
  rw [hdiff]
  exact hbclosed x hxb

def cyclicSingletonBlock
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (p : Vertex n) : CyclicCertifiedBlock n cert :=
  ⟨cert.singletonRep p.1, p.2⟩

theorem cyclicSingletonBlock_weight
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (hsingle : CyclicCertificate.singletonRowsB n cert = true)
    (p : Vertex n) :
    CyclicCertifiedBlock.weight n cert (cyclicSingletonBlock n cert p) = 1 := by
  exact (CyclicCertificate.singletonRowsB_spec n cert hsingle p.1).1

theorem cyclicSingletonBlock_vertices
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (hsingle : CyclicCertificate.singletonRowsB n cert = true)
    (p : Vertex n) :
    CyclicCertifiedBlock.vertices n cert (cyclicSingletonBlock n cert p) = {p} := by
  rcases p with ⟨l, i⟩
  have hs := (CyclicCertificate.singletonRowsB_spec n cert hsingle l).2
  simp [cyclicSingletonBlock, CyclicCertifiedBlock.vertices, hs,
    rotateSet, rotateEquiv]

def cyclicInitialBlockFamily
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (S : Finset (Vertex n)) :
    Finset (CyclicCertifiedBlock n cert) :=
  S.image (cyclicSingletonBlock n cert)

theorem cyclicInitialBlockFamily_covers
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (hsingle : CyclicCertificate.singletonRowsB n cert = true)
    (S : Finset (Vertex n)) :
    S ⊆ cyclicBlockFamilyUnion n cert
      (cyclicInitialBlockFamily n cert S) := by
  intro x hx
  exact Finset.mem_biUnion.mpr
    ⟨cyclicSingletonBlock n cert x,
      Finset.mem_image.mpr ⟨x, hx, rfl⟩,
      by simpa [cyclicSingletonBlock_vertices n cert hsingle x]⟩

theorem cyclicInitialBlockFamily_weight_le_card
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (hsingle : CyclicCertificate.singletonRowsB n cert = true)
    (S : Finset (Vertex n)) :
    cyclicBlockFamilyWeight n cert
      (cyclicInitialBlockFamily n cert S) ≤ S.card := by
  calc
    cyclicBlockFamilyWeight n cert (cyclicInitialBlockFamily n cert S)
        = (cyclicInitialBlockFamily n cert S).card := by
            unfold cyclicBlockFamilyWeight
            calc
              (∑ b ∈ cyclicInitialBlockFamily n cert S,
                  CyclicCertifiedBlock.weight n cert b)
                  = ∑ _b ∈ cyclicInitialBlockFamily n cert S, 1 := by
                    apply Finset.sum_congr rfl
                    intro b hb
                    rcases Finset.mem_image.mp hb with ⟨p, hp, rfl⟩
                    simp [cyclicSingletonBlock_weight n cert hsingle p]
              _ = (cyclicInitialBlockFamily n cert S).card := by simp
    _ ≤ S.card := by
      change (S.image (cyclicSingletonBlock n cert)).card ≤ S.card
      exact Finset.card_image_le

theorem cyclicBlockFamily_bound_sum_le
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (hsuper : CyclicCertificate.superadditiveB n cert = true)
    (F : Finset (CyclicCertifiedBlock n cert))
    (hweight : cyclicBlockFamilyWeight n cert F ≤ 7) :
    (∑ b ∈ F, cert.sizeBound (CyclicCertifiedBlock.weight n cert b)) ≤
      cert.sizeBound (cyclicBlockFamilyWeight n cert F) := by
  classical
  induction F using Finset.induction_on with
  | empty =>
      simp [cyclicBlockFamilyWeight]
  | @insert a s ha ih =>
      have hsum :
          CyclicCertifiedBlock.weight n cert a +
              cyclicBlockFamilyWeight n cert s ≤ 7 := by
        simpa [cyclicBlockFamilyWeight, ha] using hweight
      have hs : cyclicBlockFamilyWeight n cert s ≤ 7 := by omega
      have hih := ih hs
      calc
        (∑ b ∈ insert a s,
            cert.sizeBound (CyclicCertifiedBlock.weight n cert b))
            = cert.sizeBound (CyclicCertifiedBlock.weight n cert a) +
                ∑ b ∈ s,
                  cert.sizeBound (CyclicCertifiedBlock.weight n cert b) := by
                    simp [ha]
        _ ≤ cert.sizeBound (CyclicCertifiedBlock.weight n cert a) +
              cert.sizeBound (cyclicBlockFamilyWeight n cert s) :=
            Nat.add_le_add_left hih _
        _ ≤ cert.sizeBound
              (CyclicCertifiedBlock.weight n cert a +
                cyclicBlockFamilyWeight n cert s) :=
            CyclicCertificate.superadditiveB_spec n cert hsuper
              (CyclicCertifiedBlock.weight n cert a)
              (cyclicBlockFamilyWeight n cert s) hsum
        _ = cert.sizeBound
              (cyclicBlockFamilyWeight n cert (insert a s)) := by
            simp [cyclicBlockFamilyWeight, ha]

theorem cyclicBlockFamilyUnion_card_le_bound
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (hrows : CyclicCertificate.shapeRowsB n cert = true)
    (hsuper : CyclicCertificate.superadditiveB n cert = true)
    (F : Finset (CyclicCertifiedBlock n cert))
    (hweight : cyclicBlockFamilyWeight n cert F ≤ 7) :
    (cyclicBlockFamilyUnion n cert F).card ≤
      cert.sizeBound (cyclicBlockFamilyWeight n cert F) := by
  calc
    (cyclicBlockFamilyUnion n cert F).card
        ≤ ∑ b ∈ F, (CyclicCertifiedBlock.vertices n cert b).card := by
          exact Finset.card_biUnion_le
    _ ≤ ∑ b in F,
          cert.sizeBound (CyclicCertifiedBlock.weight n cert b) := by
          exact Finset.sum_le_sum fun b _ =>
            CyclicCertifiedBlock.card_le_sizeBound n cert hrows b
    _ ≤ cert.sizeBound (cyclicBlockFamilyWeight n cert F) :=
      cyclicBlockFamily_bound_sum_le n cert hsuper F hweight

theorem lower_bound_of_cyclic_certificate_checked
    (n : Nat) [NeZero n] (cert : CyclicCertificate n)
    (hcheck : CyclicCertificate.checkedB n cert = true) :
    8 ≤ Z n := by
  rcases CyclicCertificate.checkedB_specs n cert hcheck with
    ⟨hsingle, hrows, hsuper, hproper, hmerges⟩
  apply le_Z_of_forcing_card_lower_bound n
  intro S hforce
  by_contra hnot
  have hScard : S.card ≤ 7 := by omega
  let F : Finset (CyclicCertifiedBlock n cert) :=
    cyclicInitialBlockFamily n cert S
  have hFweight : cyclicBlockFamilyWeight n cert F ≤ 7 := by
    exact (cyclicInitialBlockFamily_weight_le_card n cert hsingle S).trans hScard
  rcases terminalize_cyclic_block_family n cert hmerges F hFweight with
    ⟨G, hGterm, hGweightF, hFGcover⟩
  have hGweight : cyclicBlockFamilyWeight n cert G ≤ 7 :=
    hGweightF.trans hFweight
  have hScover : S ⊆ cyclicBlockFamilyUnion n cert G := by
    exact (cyclicInitialBlockFamily_covers n cert hsingle S).trans hFGcover
  have hGclosed : Closed n (cyclicBlockFamilyUnion n cert G) :=
    cyclic_terminal_family_closed n cert hrows G hGterm
  have hclosure :
      closure n S ⊆ cyclicBlockFamilyUnion n cert G :=
    closure_subset_of_closed n hScover hGclosed
  have huniv :
      (Finset.univ : Finset (Vertex n)) ⊆ cyclicBlockFamilyUnion n cert G := by
    rw [← hforce]
    exact hclosure
  have hfullcard :
      (Finset.univ : Finset (Vertex n)).card ≤
        (cyclicBlockFamilyUnion n cert G).card :=
    Finset.card_le_card huniv
  have hbound :
      (cyclicBlockFamilyUnion n cert G).card ≤
        cert.sizeBound (cyclicBlockFamilyWeight n cert G) :=
    cyclicBlockFamilyUnion_card_le_bound n cert hrows hsuper G hGweight
  have hsmall :
      cert.sizeBound (cyclicBlockFamilyWeight n cert G) < 2 * n :=
    CyclicCertificate.properBoundsB_spec n cert hproper
      (cyclicBlockFamilyWeight n cert G) hGweight
  have hvertex :
      (Finset.univ : Finset (Vertex n)).card = 2 * n := by
    simpa using vertex_card n
  omega

end PetersenZeroForcing
