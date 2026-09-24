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
  cases layer <;> decide

@[simp] theorem singletonBlock_vertices
    (n : Nat) [NeZero n] (p : Vertex n) :
    CertifiedBlock.vertices n (singletonBlock n p) = {p} := by
  rcases p with ⟨layer, i⟩
  cases layer <;>
    simp [singletonBlock, CertifiedBlock.vertices,
      Certificate.outer_singleton, Certificate.inner_singleton,
      translateSet, projectSet, translateVertex, projectVertex, su, sv,
      u, v, ZMod.natCast_zmod_val]

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
            simp [blockFamilyWeight]
    _ ≤ S.card := by
      simpa [initialBlockFamily] using
        Finset.card_image_le (singletonBlock n) S

theorem vertex_card (n : Nat) [NeZero n] :
    Fintype.card (Vertex n) = 2 * n := by
  simp [Vertex]

theorem lower_bound_large
    (n : Nat) [NeZero n] (hn : 22 ≤ n) :
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
    terminalBlockFamily_closed n hn G hGterm
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

end PetersenZeroForcing
