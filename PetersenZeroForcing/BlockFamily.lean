import PetersenZeroForcing.BlockMerge

namespace PetersenZeroForcing

open scoped BigOperators

def blockFamilyWeight (F : Finset CertifiedBlock) : Nat :=
  ∑ b in F, CertifiedBlock.weight b

def blockFamilyUnion (n : Nat) [NeZero n]
    (F : Finset CertifiedBlock) : Finset (Vertex n) :=
  F.biUnion (CertifiedBlock.vertices n)

def TerminalBlockFamily (n : Nat) [NeZero n]
    (F : Finset CertifiedBlock) : Prop :=
  ∀ a ∈ F, ∀ b ∈ F, a ≠ b →
    ¬ CyclicTouches n
      (CertifiedBlock.vertices n a) (CertifiedBlock.vertices n b)

theorem block_mem_familyUnion
    (n : Nat) [NeZero n] {F : Finset CertifiedBlock}
    {b : CertifiedBlock} (hb : b ∈ F) :
    CertifiedBlock.vertices n b ⊆ blockFamilyUnion n F := by
  intro x hx
  exact Finset.mem_biUnion.mpr ⟨b, hb, hx⟩

/-- Repeated certified merging terminates because each merge strictly reduces
the finite family cardinality.  Coverage grows and total weight never
increases. -/
theorem terminalize_block_family
    (n : Nat) [NeZero n] (F : Finset CertifiedBlock)
    (hweight : blockFamilyWeight F ≤ 7) :
    ∃ G : Finset CertifiedBlock,
      TerminalBlockFamily n G ∧
      blockFamilyWeight G ≤ blockFamilyWeight F ∧
      blockFamilyUnion n F ⊆ blockFamilyUnion n G := by
  classical
  by_cases hterm : TerminalBlockFamily n F
  · exact ⟨F, hterm, le_rfl, fun _ hx => hx⟩
  · simp only [TerminalBlockFamily] at hterm
    push_neg at hterm
    rcases hterm with ⟨a, ha, b, hb, hab, htouch⟩
    have hbEraseA : b ∈ F.erase a := by
      exact Finset.mem_erase.mpr ⟨Ne.symm hab, hb⟩
    let R : Finset CertifiedBlock := (F.erase a).erase b
    have hsumA :
        blockFamilyWeight (F.erase a) + CertifiedBlock.weight a =
          blockFamilyWeight F := by
      simpa [blockFamilyWeight] using
        (Finset.sum_erase_add F CertifiedBlock.weight ha)
    have hsumB :
        blockFamilyWeight R + CertifiedBlock.weight b =
          blockFamilyWeight (F.erase a) := by
      simpa [blockFamilyWeight, R] using
        (Finset.sum_erase_add (F.erase a) CertifiedBlock.weight hbEraseA)
    have hpair :
        CertifiedBlock.weight a + CertifiedBlock.weight b ≤ 7 := by
      have hp :
          CertifiedBlock.weight a + CertifiedBlock.weight b ≤
            blockFamilyWeight F := by
        omega
      exact hp.trans hweight
    rcases merge_touching_blocks n a b hpair htouch with
      ⟨c, hcweight, hac, hbc⟩
    let F' : Finset CertifiedBlock := insert c R
    have hweight' : blockFamilyWeight F' ≤ blockFamilyWeight F := by
      by_cases hcR : c ∈ R
      · have heq : blockFamilyWeight F' = blockFamilyWeight R := by
          simp [F', blockFamilyWeight, hcR]
        rw [heq]
        omega
      · have heq :
            blockFamilyWeight F' =
              CertifiedBlock.weight c + blockFamilyWeight R := by
          simp [F', blockFamilyWeight, hcR]
        rw [heq]
        omega
    have hweight7 : blockFamilyWeight F' ≤ 7 :=
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
      · rw [show F' = insert c R from rfl, Finset.card_insert_of_not_mem hcR]
        omega
    have hcover :
        blockFamilyUnion n F ⊆ blockFamilyUnion n F' := by
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
    rcases terminalize_block_family n F' hweight7 with
      ⟨G, hGterm, hGweight, hGcover⟩
    exact ⟨G, hGterm, hGweight.trans hweight',
      fun x hx => hGcover (hcover hx)⟩
termination_by F.card

end PetersenZeroForcing
