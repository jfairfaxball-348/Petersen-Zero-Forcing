import PetersenZeroForcing.Contact
import PetersenZeroForcing.Rotation

namespace PetersenZeroForcing

theorem project_translateVertex (n : Nat) [NeZero n] (t : ℤ) (x : StripVertex) :
    projectVertex n (translateVertex t x) =
      rotateEquiv n (t : ZMod n) (projectVertex n x) := by
  rcases x with ⟨layer, i⟩
  simp [projectVertex, translateVertex, rotateEquiv]

theorem project_translateSet (n : Nat) [NeZero n] (C : Finset StripVertex) (t : ℤ) :
    projectSet n (translateSet C t) =
      rotateSet n (t : ZMod n) (projectSet n C) := by
  ext p
  constructor
  · intro hp
    rcases Finset.mem_image.mp hp with ⟨y, hy, rfl⟩
    rcases Finset.mem_image.mp hy with ⟨x, hx, rfl⟩
    rw [project_translateVertex]
    exact Finset.mem_map.mpr ⟨projectVertex n x,
      Finset.mem_image.mpr ⟨x, hx, rfl⟩, rfl⟩
  · intro hp
    rcases Finset.mem_map.mp hp with ⟨q, hq, hqp⟩
    rcases Finset.mem_image.mp hq with ⟨x, hx, rfl⟩
    have hqp' : rotateEquiv n (t : ZMod n) (projectVertex n x) = p := hqp
    have hproject :
        projectVertex n (translateVertex t x) = p :=
      (project_translateVertex n t x).trans hqp'
    rw [← hproject]
    exact Finset.mem_image.mpr
      ⟨translateVertex t x, Finset.mem_image.mpr ⟨x, hx, rfl⟩, rfl⟩

theorem closed_rotate (n : Nat) [NeZero n] (r : ZMod n)
    {C : Finset (Vertex n)} (hC : Closed n C) :
    Closed n (rotateSet n r C) := by
  intro p hp
  rcases Finset.mem_map.mp hp with ⟨x, hx, rfl⟩
  have hcard :
      (neighbors n x \ C).card =
        (neighbors n (rotateEquiv n r x) \ rotateSet n r C).card := by
    simpa [whiteNeighbors] using
      congrArg Finset.card (whiteNeighbors_rotate n r C x)
  change
    (neighbors n (rotateEquiv n r x) \ rotateSet n r C).card ≠ 1
  rw [← hcard]
  exact hC x hx

structure CertifiedBlock where
  shape : Certificate.ShapeId
  shift : ℤ
  deriving DecidableEq, Repr

namespace CertifiedBlock

def vertices (n : Nat) [NeZero n] (b : CertifiedBlock) :
    Finset (Vertex n) :=
  projectSet n (translateSet (Certificate.shape b.shape) b.shift)

def weight (b : CertifiedBlock) : Nat := Certificate.weight b.shape

theorem vertices_eq_rotate (n : Nat) [NeZero n] (b : CertifiedBlock) :
    vertices n b =
      rotateSet n (b.shift : ZMod n) (projectSet n (Certificate.shape b.shape)) := by
  exact project_translateSet n (Certificate.shape b.shape) b.shift

theorem closed (n : Nat) [NeZero n] (hn : 22 ≤ n) (b : CertifiedBlock) :
    Closed n (vertices n b) := by
  rw [vertices_eq_rotate]
  exact closed_rotate n (b.shift : ZMod n)
    (projected_certificate_shape_closed n hn b.shape)

theorem card_le_sizeBound (n : Nat) [NeZero n] (b : CertifiedBlock) :
    (vertices n b).card ≤ Certificate.sizeBound (weight b) := by
  calc
    (vertices n b).card
        ≤ (translateSet (Certificate.shape b.shape) b.shift).card := by
          exact Finset.card_image_le
    _ ≤ (Certificate.shape b.shape).card := by
          exact Finset.card_image_le
    _ ≤ Certificate.sizeBound (Certificate.weight b.shape) :=
          Certificate.shape_card_le_sizeBound b.shape

theorem weight_pos (b : CertifiedBlock) : 1 ≤ weight b :=
  Certificate.weight_pos b.shape

theorem weight_le_seven (b : CertifiedBlock) : weight b ≤ 7 :=
  Certificate.weight_le_seven b.shape

end CertifiedBlock
end PetersenZeroForcing
