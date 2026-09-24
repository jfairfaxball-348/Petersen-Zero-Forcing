import PetersenZeroForcing.Forcing
import PetersenZeroForcing.CertificateLemmas

namespace PetersenZeroForcing

theorem int_eq_of_zmod_eq_of_abs_sub_lt (n : Nat) [NeZero n] {a b : ℤ}
    (hmod : (a : ZMod n) = (b : ZMod n)) (hlt : |b - a| < (n : ℤ)) : a = b := by
  have hdvd : (n : ℤ) ∣ b - a :=
    (ZMod.intCast_eq_intCast_iff_dvd_sub a b n).mp hmod
  have hz : b - a = 0 := Int.eq_zero_of_abs_lt_dvd hdvd hlt
  omega

theorem stripNeighbor_coord_interval {x y : StripVertex} (hy : y ∈ stripNeighbors x) :
    x.2 - 3 ≤ y.2 ∧ y.2 ≤ x.2 + 3 := by
  rcases x with ⟨layer, i⟩
  cases layer <;>
    simp [stripNeighbors, su, sv] at hy <;>
    rcases hy with (rfl | rfl | rfl) <;>
    simp <;> omega

theorem project_stripNeighbors (n : Nat) [NeZero n] (x : StripVertex) :
    (stripNeighbors x).image (projectVertex n) = neighbors n (projectVertex n x) := by
  rcases x with ⟨layer, i⟩
  cases layer <;>
    simp [stripNeighbors, neighbors, projectVertex, su, sv, u, v]

theorem projectVertex_injective_on_stripNeighbors (n : Nat) [NeZero n]
    (hn : 22 ≤ n) (x : StripVertex) :
    Set.InjOn (projectVertex n) (stripNeighbors x) := by
  intro y hy z hz hproj
  have hyi := stripNeighbor_coord_interval hy
  have hzi := stripNeighbor_coord_interval hz
  have hcoord : (y.2 : ZMod n) = (z.2 : ZMod n) := by
    exact congrArg Prod.snd hproj
  have hlt : |z.2 - y.2| < (n : ℤ) := by
    rw [abs_lt]
    constructor <;> omega
  have heqcoord : y.2 = z.2 :=
    int_eq_of_zmod_eq_of_abs_sub_lt n hcoord hlt
  have hlayer : y.1 = z.1 := by
    exact congrArg (fun p : Vertex n => p.1) hproj
  exact Prod.ext hlayer heqcoord

theorem projected_neighbor_mem_iff (n : Nat) [NeZero n]
    (hn : 22 ≤ n) {C : Finset StripVertex}
    (hcoords : ∀ z ∈ C, 0 ≤ z.2 ∧ z.2 ≤ 18)
    {x y : StripVertex} (hx : x ∈ C) (hy : y ∈ stripNeighbors x) :
    projectVertex n y ∈ projectSet n C ↔ y ∈ C := by
  constructor
  · intro hpy
    rcases Finset.mem_image.mp hpy with ⟨z, hz, hp⟩
    have hxcoord := hcoords x hx
    have hzcoord := hcoords z hz
    have hyi := stripNeighbor_coord_interval hy
    have hylow : -3 ≤ y.2 := by omega
    have hyhigh : y.2 ≤ 21 := by omega
    have hlayer : z.1 = y.1 := by
      exact congrArg (fun p : Vertex n => p.1) hp
    have hcoord : (z.2 : ZMod n) = (y.2 : ZMod n) := congrArg Prod.snd hp
    have hlt : |y.2 - z.2| < (n : ℤ) := by
      rw [abs_lt]
      constructor <;> omega
    have hzeq : z.2 = y.2 :=
      int_eq_of_zmod_eq_of_abs_sub_lt n hcoord hlt
    have : z = y := Prod.ext hlayer hzeq
    simpa [this] using hz
  · intro hyC
    exact Finset.mem_image.mpr ⟨y, hyC, rfl⟩

theorem projected_outside_neighbors_eq (n : Nat) [NeZero n]
    (hn : 22 ≤ n) {C : Finset StripVertex}
    (hcoords : ∀ z ∈ C, 0 ≤ z.2 ∧ z.2 ≤ 18)
    {x : StripVertex} (hx : x ∈ C) :
    neighbors n (projectVertex n x) \ projectSet n C =
      (stripNeighbors x \ C).image (projectVertex n) := by
  ext p
  constructor
  · intro hp
    rcases Finset.mem_sdiff.mp hp with ⟨hpnei, hpnot⟩
    have hpnei' : p ∈ (stripNeighbors x).image (projectVertex n) := by
      rw [project_stripNeighbors n]
      exact hpnei
    rcases Finset.mem_image.mp hpnei' with ⟨y, hy, rfl⟩
    have hyC : y ∉ C := by
      intro hyC
      exact hpnot (Finset.mem_image.mpr ⟨y, hyC, rfl⟩)
    exact Finset.mem_image.mpr ⟨y, Finset.mem_sdiff.mpr ⟨hy, hyC⟩, rfl⟩
  · intro hp
    rcases Finset.mem_image.mp hp with ⟨y, hyout, rfl⟩
    rcases Finset.mem_sdiff.mp hyout with ⟨hynei, hyC⟩
    have hpnei : projectVertex n y ∈ neighbors n (projectVertex n x) := by
      rw [← project_stripNeighbors n]
      exact Finset.mem_image.mpr ⟨y, hynei, rfl⟩
    have hpnot : projectVertex n y ∉ projectSet n C := by
      intro hmem
      exact hyC ((projected_neighbor_mem_iff n hn hcoords hx hynei).mp hmem)
    exact Finset.mem_sdiff.mpr ⟨hpnei, hpnot⟩

theorem projected_outside_neighbors_card (n : Nat) [NeZero n]
    (hn : 22 ≤ n) {C : Finset StripVertex}
    (hcoords : ∀ z ∈ C, 0 ≤ z.2 ∧ z.2 ≤ 18)
    {x : StripVertex} (hx : x ∈ C) :
    (neighbors n (projectVertex n x) \ projectSet n C).card =
      (stripNeighbors x \ C).card := by
  rw [projected_outside_neighbors_eq n hn hcoords hx]
  apply Finset.card_image_iff.mpr
  exact (projectVertex_injective_on_stripNeighbors n hn x).mono (by
    intro y hy
    exact (Finset.mem_sdiff.mp hy).1)

theorem projection_preserves_closed (n : Nat) [NeZero n]
    (hn : 22 ≤ n) {C : Finset StripVertex}
    (hcoords : ∀ z ∈ C, 0 ≤ z.2 ∧ z.2 ≤ 18)
    (hclosed : StripClosed C) :
    Closed n (projectSet n C) := by
  intro p hp
  rcases Finset.mem_image.mp hp with ⟨x, hx, rfl⟩
  rw [projected_outside_neighbors_card n hn hcoords hx]
  exact hclosed x hx

theorem projected_certificate_shape_closed (n : Nat) [NeZero n]
    (hn : 22 ≤ n) (i : Certificate.ShapeId) :
    Closed n (projectSet n (Certificate.shape i)) := by
  exact projection_preserves_closed n hn
    (fun z hz => Certificate.shape_coord_bounds i hz)
    (Certificate.shape_closed i)

end PetersenZeroForcing
