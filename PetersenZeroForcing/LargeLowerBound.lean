import PetersenZeroForcing.TerminalBounds

namespace PetersenZeroForcing

def singletonBlock (n : Nat) [NeZero n] (p : Vertex n) : CertifiedBlock :=
  match p.1 with
  | Layer.outer => ⟨⟨0, by decide⟩, (p.2.val : ℤ)⟩
  | Layer.inner => ⟨⟨1, by decide⟩, (p.2.val : ℤ)⟩

@[simp] theorem singletonBlock_weight
    (n : Nat) [NeZero n] (p : Vertex n) :
    CertifiedBlock.weight (singletonBlock n p) = 1 := by
  rcases p with ⟨layer, i⟩
  cases layer <;>
    simp [singletonBlock, CertifiedBlock.weight, Certificate.weight,
      Certificate.datum, CertificateData.shapeByNat]

@[simp] theorem singletonBlock_vertices
    (n : Nat) [NeZero n] (p : Vertex n) :
    CertifiedBlock.vertices n (singletonBlock n p) = {p} := by
  rcases p with ⟨layer, i⟩
  cases layer
  · change
      projectSet n
        (translateSet (Certificate.shape ⟨0, by decide⟩) (i.val : ℤ)) =
        {(Layer.outer, i)}
    rw [Certificate.outer_singleton]
    simp [projectSet, translateSet, translateVertex, projectVertex, su, u,
      ZMod.natCast_zmod_val]
  · change
      projectSet n
        (translateSet (Certificate.shape ⟨1, by decide⟩) (i.val : ℤ)) =
        {(Layer.inner, i)}
    rw [Certificate.inner_singleton]
    simp [projectSet, translateSet, translateVertex, projectVertex, sv, v,
      ZMod.natCast_zmod_val]

def initialBlockFamily
    (n : Nat) [NeZero n] (S : Finset (Vertex n)) :
    Finset CertifiedBlock :=
  S.image (singletonBlock n)

theorem initialBlockFamily_covers
    (n : Nat) [NeZero n] (S : Finset (Vertex n)) :
    S ⊆ blockFamilyUnion n (initialBlockFamily n S) := by
  intro x hx
  exact Finset.mem_biUnion.mpr
    ⟨singletonBlock n x,
      Finset.mem_image.mpr ⟨x, hx, rfl⟩,
      by simp⟩

theorem initialBlockFamily_weight_le_card
    (n : Nat) [NeZero n] (S : Finset (Vertex n)) :
    blockFamilyWeight (initialBlockFamily n S) ≤ S.card := by
  calc
    blockFamilyWeight (initialBlockFamily n S)
        = (initialBlockFamily n S).card := by
            unfold blockFamilyWeight
            calc
              (∑ b ∈ initialBlockFamily n S, CertifiedBlock.weight b)
                  = ∑ _b ∈ initialBlockFamily n S, 1 := by
                    apply Finset.sum_congr rfl
                    intro b hb
                    rcases Finset.mem_image.mp hb with ⟨p, hp, rfl⟩
                    simp
              _ = (initialBlockFamily n S).card := by simp
    _ ≤ S.card := by
      change (S.image (singletonBlock n)).card ≤ S.card
      exact Finset.card_image_le

theorem vertex_card (n : Nat) [NeZero n] :
    Fintype.card (Vertex n) = 2 * n := by
  have hLayer : Fintype.card Layer = 2 := by decide
  simp [Vertex, hLayer, NeZero.ne n]

theorem lower_bound_of_projected_certificate_closed
    (n : Nat) [NeZero n] (hn : 9 ≤ n)
    (hclosed : ∀ i : Certificate.ShapeId,
      Closed n (projectSet n (Certificate.shape i))) :
    8 ≤ Z n := by
  apply le_Z_of_forcing_card_lower_bound n
  intro S hforce
  by_contra hnot
  have hScard : S.card ≤ 7 := by omega
  let F : Finset CertifiedBlock := initialBlockFamily n S
  have hFweight : blockFamilyWeight F ≤ 7 := by
    exact (initialBlockFamily_weight_le_card n S).trans hScard
  rcases terminalize_block_family n F hFweight with
    ⟨G, hGterm, hGweightF, hFGcover⟩
  have hGweight : blockFamilyWeight G ≤ 7 :=
    hGweightF.trans hFweight
  have hScover : S ⊆ blockFamilyUnion n G := by
    exact (initialBlockFamily_covers n S).trans hFGcover
  have hGclosed : Closed n (blockFamilyUnion n G) :=
    terminalBlockFamily_closed_of_blocks_closed n G hGterm
      (fun b _ => CertifiedBlock.closed_of_projected_shape_closed n hclosed b)
  have hclosure :
      closure n S ⊆ blockFamilyUnion n G :=
    closure_subset_of_closed n hScover hGclosed
  have huniv :
      (Finset.univ : Finset (Vertex n)) ⊆ blockFamilyUnion n G := by
    rw [← hforce]
    exact hclosure
  have hfullcard :
      (Finset.univ : Finset (Vertex n)).card ≤
        (blockFamilyUnion n G).card :=
    Finset.card_le_card huniv
  have hGcard : (blockFamilyUnion n G).card ≤ 16 :=
    blockFamilyUnion_card_le_sixteen n G hGweight
  have hvertex : Fintype.card (Vertex n) ≤ 16 := by
    simpa using hfullcard.trans hGcard
  rw [vertex_card n] at hvertex
  omega

theorem lower_bound_large
    (n : Nat) [NeZero n] (hn : 22 ≤ n) :
    8 ≤ Z n := by
  exact lower_bound_of_projected_certificate_closed n (by omega)
    (fun i => projected_certificate_shape_closed n hn i)


end PetersenZeroForcing
