import PetersenZeroForcing.BlockFamily

namespace PetersenZeroForcing

open scoped BigOperators

theorem certificate_sizeBound_superadditive
    (a b : Nat) (h : a + b ≤ 7) :
    Certificate.sizeBound a + Certificate.sizeBound b ≤
      Certificate.sizeBound (a + b) := by
  have ha : a ≤ 7 := by omega
  have hb : b ≤ 7 := by omega
  interval_cases a <;> interval_cases b <;>
    norm_num [Certificate.sizeBound] at *

theorem certificate_sizeBound_le_sixteen
    (a : Nat) (h : a ≤ 7) :
    Certificate.sizeBound a ≤ 16 := by
  interval_cases a <;> norm_num [Certificate.sizeBound] at *

theorem blockFamily_sizeBound_sum_le
    (F : Finset CertifiedBlock)
    (hweight : blockFamilyWeight F ≤ 7) :
    (∑ b ∈ F, Certificate.sizeBound (CertifiedBlock.weight b)) ≤
      Certificate.sizeBound (blockFamilyWeight F) := by
  classical
  induction F using Finset.induction_on with
  | empty =>
      simp [blockFamilyWeight, Certificate.sizeBound]
  | @insert a s ha ih =>
      have hsum :
          CertifiedBlock.weight a + blockFamilyWeight s ≤ 7 := by
        simpa [blockFamilyWeight, ha] using hweight
      have hs : blockFamilyWeight s ≤ 7 := by omega
      have hih := ih hs
      calc
        (∑ b ∈ insert a s,
            Certificate.sizeBound (CertifiedBlock.weight b))
            = Certificate.sizeBound (CertifiedBlock.weight a) +
                ∑ b ∈ s, Certificate.sizeBound (CertifiedBlock.weight b) := by
                  simp [ha]
        _ ≤ Certificate.sizeBound (CertifiedBlock.weight a) +
              Certificate.sizeBound (blockFamilyWeight s) :=
            Nat.add_le_add_left hih _
        _ ≤ Certificate.sizeBound
              (CertifiedBlock.weight a + blockFamilyWeight s) :=
            certificate_sizeBound_superadditive
              (CertifiedBlock.weight a) (blockFamilyWeight s) hsum
        _ = Certificate.sizeBound (blockFamilyWeight (insert a s)) := by
            simp [blockFamilyWeight, ha]

theorem blockFamilyUnion_card_le_sixteen
    (n : Nat) [NeZero n] (F : Finset CertifiedBlock)
    (hweight : blockFamilyWeight F ≤ 7) :
    (blockFamilyUnion n F).card ≤ 16 := by
  calc
    (blockFamilyUnion n F).card
        ≤ ∑ b ∈ F, (CertifiedBlock.vertices n b).card := by
          exact Finset.card_biUnion_le
    _ ≤ ∑ b ∈ F,
          Certificate.sizeBound (CertifiedBlock.weight b) := by
          exact Finset.sum_le_sum fun b _ =>
            CertifiedBlock.card_le_sizeBound n b
    _ ≤ Certificate.sizeBound (blockFamilyWeight F) :=
      blockFamily_sizeBound_sum_le F hweight
    _ ≤ 16 :=
      certificate_sizeBound_le_sixteen _ hweight

theorem terminalBlockFamily_closed_of_blocks_closed
    (n : Nat) [NeZero n]
    (F : Finset CertifiedBlock)
    (hterm : TerminalBlockFamily n F)
    (hblocks : ∀ b ∈ F, Closed n (CertifiedBlock.vertices n b)) :
    Closed n (blockFamilyUnion n F) := by
  intro x hx
  rcases Finset.mem_biUnion.mp hx with ⟨b, hbF, hxb⟩
  have hbclosed := hblocks b hbF
  have hdiff :
      neighbors n x \\ blockFamilyUnion n F =
        neighbors n x \\ CertifiedBlock.vertices n b := by
    ext y
    constructor
    · intro hy
      rcases Finset.mem_sdiff.mp hy with ⟨hyn, hyu⟩
      exact Finset.mem_sdiff.mpr
        ⟨hyn, fun hyb => hyu (block_mem_familyUnion n hbF hyb)⟩
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
              (CertifiedBlock.vertices n b)
              (CertifiedBlock.vertices n d) :=
          ⟨x, hxb, y, hyd, Or.inr hyn⟩
        have hcyc :
            CyclicTouches n
              (CertifiedBlock.vertices n b)
              (CertifiedBlock.vertices n d) :=
          Or.inl hdir
        exact (hterm b hbF d hdF (Ne.symm hdb)) hcyc
  rw [hdiff]
  exact hbclosed x hxb

theorem terminalBlockFamily_closed
    (n : Nat) [NeZero n] (hn : 22 ≤ n)
    (F : Finset CertifiedBlock)
    (hterm : TerminalBlockFamily n F) :
    Closed n (blockFamilyUnion n F) := by
  exact terminalBlockFamily_closed_of_blocks_closed n F hterm
    (fun b _ => CertifiedBlock.closed n hn b)


end PetersenZeroForcing
