import PetersenZeroForcing.ProjectedBlocks

namespace PetersenZeroForcing

/-- Directed contact in the cyclic Petersen graph: a vertex of the first set
coincides with or is adjacent to a vertex of the second set. -/
def DirectedTouches (n : Nat) [NeZero n]
    (A B : Finset (Vertex n)) : Prop :=
  ∃ x ∈ A, ∃ y ∈ B, x = y ∨ y ∈ neighbors n x

/-- Symmetric contact, phrased as either directed orientation so later
arguments do not need a separate symmetry theorem for the neighbour relation. -/
def CyclicTouches (n : Nat) [NeZero n]
    (A B : Finset (Vertex n)) : Prop :=
  DirectedTouches n A B ∨ DirectedTouches n B A

theorem cyclicTouches_comm (n : Nat) [NeZero n]
    (A B : Finset (Vertex n)) :
    CyclicTouches n A B ↔ CyclicTouches n B A := by
  simp [CyclicTouches, or_comm]

theorem mem_stripNeighbors_translate (t : ℤ) (x y : StripVertex) :
    translateVertex t y ∈ stripNeighbors (translateVertex t x) ↔
      y ∈ stripNeighbors x := by
  rcases x with ⟨lx, i⟩
  rcases y with ⟨ly, j⟩
  cases lx <;> cases ly <;>
    simp [stripNeighbors, translateVertex, su, sv] <;> omega

/-- Lift one directed cyclic contact between certified projected blocks to a
strip contact after changing only the integer representative of the second
block's cyclic translation. -/
theorem lift_directed_block_touch
    (n : Nat) [NeZero n] (a b : CertifiedBlock)
    (htouch : DirectedTouches n
      (CertifiedBlock.vertices n a) (CertifiedBlock.vertices n b)) :
    ∃ t : ℤ,
      StripTouches (Certificate.shape a.shape)
        (translateSet (Certificate.shape b.shape) t) ∧
      (((t + a.shift : ℤ) : ZMod n) = (b.shift : ZMod n)) := by
  rcases htouch with ⟨p, hpa, q, hqb, hpq⟩
  rcases Finset.mem_image.mp hpa with ⟨xa, hxa, rfl⟩
  rcases Finset.mem_image.mp hxa with ⟨x, hx, rfl⟩
  rcases Finset.mem_image.mp hqb with ⟨yb, hyb, rfl⟩
  rcases Finset.mem_image.mp hyb with ⟨y, hy, rfl⟩
  obtain ⟨w, hwrel, hproj⟩ :
      ∃ w : StripVertex,
        (x = w ∨ w ∈ stripNeighbors x) ∧
        projectVertex n (translateVertex a.shift w) =
          projectVertex n (translateVertex b.shift y) := by
    rcases hpq with heq | hnei
    · exact ⟨x, Or.inl rfl, heq⟩
    · have himage :
          projectVertex n (translateVertex b.shift y) ∈
            (stripNeighbors (translateVertex a.shift x)).image
              (projectVertex n) := by
        rw [project_stripNeighbors n (translateVertex a.shift x)]
        exact hnei
      rcases Finset.mem_image.mp himage with ⟨z, hz, hzproj⟩
      let w : StripVertex := translateVertex (-a.shift) z
      have hwshift : translateVertex a.shift w = z := by
        rcases z with ⟨layer, i⟩
        simp [w, translateVertex]
      have hwnei : w ∈ stripNeighbors x := by
        apply (mem_stripNeighbors_translate a.shift x w).mp
        simpa [hwshift] using hz
      refine ⟨w, Or.inr hwnei, ?_⟩
      simpa [hwshift] using hzproj
  let t : ℤ := w.2 - y.2
  have hlayer : w.1 = y.1 := by
    have h := congrArg Prod.fst hproj
    simpa [projectVertex, translateVertex] using h
  have hytrans : translateVertex t y = w := by
    apply Prod.ext
    · simpa [translateVertex] using hlayer.symm
    · simp [translateVertex, t]
  have hwB :
      w ∈ translateSet (Certificate.shape b.shape) t := by
    rw [← hytrans]
    exact Finset.mem_image.mpr ⟨y, hy, rfl⟩
  have hstrip :
      StripTouches (Certificate.shape a.shape)
        (translateSet (Certificate.shape b.shape) t) :=
    ⟨x, hx, w, hwB, hwrel⟩
  have hcoord :
      (((w.2 + a.shift : ℤ) : ZMod n)) =
        ((y.2 + b.shift : ℤ) : ZMod n) := by
    simpa [projectVertex, translateVertex] using congrArg Prod.snd hproj
  have hdvd :
      (n : ℤ) ∣ (y.2 + b.shift) - (w.2 + a.shift) :=
    (ZMod.intCast_eq_intCast_iff_dvd_sub
      (w.2 + a.shift) (y.2 + b.shift) n).mp hcoord
  have hshift :
      (((t + a.shift : ℤ) : ZMod n)) = (b.shift : ZMod n) := by
    apply (ZMod.intCast_eq_intCast_iff_dvd_sub
      (t + a.shift) b.shift n).2
    convert hdvd using 1 <;> simp [t] <;> ring
  exact ⟨t, hstrip, hshift⟩

end PetersenZeroForcing
