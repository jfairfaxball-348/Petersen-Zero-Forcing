import PetersenZeroForcing.BlockContact

namespace PetersenZeroForcing

theorem translateVertex_add (s t : ℤ) (x : StripVertex) :
    translateVertex t (translateVertex s x) = translateVertex (s + t) x := by
  rcases x with ⟨layer, i⟩
  simp [translateVertex, add_assoc]

theorem translateSet_add (C : Finset StripVertex) (s t : ℤ) :
    translateSet (translateSet C s) t = translateSet C (s + t) := by
  ext y
  constructor
  · intro hy
    rcases Finset.mem_image.mp hy with ⟨z, hz, rfl⟩
    rcases Finset.mem_image.mp hz with ⟨x, hx, rfl⟩
    rw [translateVertex_add]
    exact Finset.mem_image.mpr ⟨x, hx, rfl⟩
  · intro hy
    rcases Finset.mem_image.mp hy with ⟨x, hx, rfl⟩
    rw [← translateVertex_add]
    exact Finset.mem_image.mpr
      ⟨translateVertex s x, Finset.mem_image.mpr ⟨x, hx, rfl⟩, rfl⟩

theorem translateSet_mono {A B : Finset StripVertex}
    (h : A ⊆ B) (t : ℤ) :
    translateSet A t ⊆ translateSet B t :=
  Finset.image_mono h

theorem projectSet_mono (n : Nat) [NeZero n]
    {A B : Finset StripVertex} (h : A ⊆ B) :
    projectSet n A ⊆ projectSet n B :=
  Finset.image_mono h

theorem project_translateSet_eq_of_cast_eq
    (n : Nat) [NeZero n] (C : Finset StripVertex) (s t : ℤ)
    (h : (s : ZMod n) = (t : ZMod n)) :
    projectSet n (translateSet C s) =
      projectSet n (translateSet C t) := by
  calc
    projectSet n (translateSet C s) =
        rotateSet n (s : ZMod n) (projectSet n C) :=
      project_translateSet n C s
    _ = rotateSet n (t : ZMod n) (projectSet n C) := by rw [h]
    _ = projectSet n (translateSet C t) :=
      (project_translateSet n C t).symm

/-- One directed touching pair can be absorbed into a single certified block.
The conclusion records only containment, exactly as in the audited
certificate argument. -/
theorem merge_directed_blocks
    (n : Nat) [NeZero n] (a b : CertifiedBlock)
    (hweight : CertifiedBlock.weight a + CertifiedBlock.weight b ≤ 7)
    (htouch : DirectedTouches n
      (CertifiedBlock.vertices n a) (CertifiedBlock.vertices n b)) :
    ∃ c : CertifiedBlock,
      CertifiedBlock.weight c ≤
        CertifiedBlock.weight a + CertifiedBlock.weight b ∧
      CertifiedBlock.vertices n a ⊆ CertifiedBlock.vertices n c ∧
      CertifiedBlock.vertices n b ⊆ CertifiedBlock.vertices n c := by
  rcases lift_directed_block_touch n a b htouch with ⟨t, hstrip, hshift⟩
  rcases exists_certificate_merge_for_touch
      a.shape b.shape t
      (by simpa [CertifiedBlock.weight] using hweight) hstrip with
    ⟨shapeC, q, hweightC, hcontainA, hcontainB⟩
  let c : CertifiedBlock := ⟨shapeC, q + a.shift⟩
  have hAtranslated :
      translateSet (Certificate.shape a.shape) a.shift ⊆
        translateSet (Certificate.shape shapeC) (q + a.shift) := by
    have h := translateSet_mono hcontainA a.shift
    simpa [translateSet_add] using h
  have hAprojected :
      projectSet n (translateSet (Certificate.shape a.shape) a.shift) ⊆
        projectSet n (translateSet (Certificate.shape shapeC) (q + a.shift)) :=
    projectSet_mono n hAtranslated
  have hBtranslated :
      translateSet (Certificate.shape b.shape) (t + a.shift) ⊆
        translateSet (Certificate.shape shapeC) (q + a.shift) := by
    have h := translateSet_mono hcontainB a.shift
    simpa [translateSet_add] using h
  have hBprojected :
      projectSet n (translateSet (Certificate.shape b.shape) (t + a.shift)) ⊆
        projectSet n (translateSet (Certificate.shape shapeC) (q + a.shift)) :=
    projectSet_mono n hBtranslated
  have hBeq :
      projectSet n (translateSet (Certificate.shape b.shape) (t + a.shift)) =
        projectSet n (translateSet (Certificate.shape b.shape) b.shift) :=
    project_translateSet_eq_of_cast_eq n
      (Certificate.shape b.shape) (t + a.shift) b.shift hshift
  refine ⟨c, ?_, ?_, ?_⟩
  · simpa [CertifiedBlock.weight, c] using hweightC
  · simpa [CertifiedBlock.vertices, c] using hAprojected
  · rw [← hBeq]
    simpa [CertifiedBlock.vertices, c] using hBprojected

/-- Symmetric cyclic contact can be merged in either orientation. -/
theorem merge_touching_blocks
    (n : Nat) [NeZero n] (a b : CertifiedBlock)
    (hweight : CertifiedBlock.weight a + CertifiedBlock.weight b ≤ 7)
    (htouch : CyclicTouches n
      (CertifiedBlock.vertices n a) (CertifiedBlock.vertices n b)) :
    ∃ c : CertifiedBlock,
      CertifiedBlock.weight c ≤
        CertifiedBlock.weight a + CertifiedBlock.weight b ∧
      CertifiedBlock.vertices n a ⊆ CertifiedBlock.vertices n c ∧
      CertifiedBlock.vertices n b ⊆ CertifiedBlock.vertices n c := by
  rcases htouch with hab | hba
  · exact merge_directed_blocks n a b hweight hab
  · rcases merge_directed_blocks n b a
      (by simpa [Nat.add_comm] using hweight) hba with
      ⟨c, hcweight, hbc, hac⟩
    exact ⟨c, by simpa [Nat.add_comm] using hcweight, hac, hbc⟩

end PetersenZeroForcing
