import PetersenZeroForcing.FiniteScanOctantSplit

namespace PetersenZeroForcing
namespace FiniteScan

/-- Sixth deterministic classifier for exact finite sharding: the next binary
bit of the sum of vertex indices. -/
def extraIndexBitFourEvenB {n : Nat} (extra : Finset (Vertex n)) : Bool :=
  decide ((((extra.sum (fun x => vertexBitIndex x)) / 16) % 2) = 0)

/-- One eighth of an original octant scan.  The first five classifier values
fix the parent quarter; the sixth classifier selects one of its two exact
children. -/
def pairCertScanOctantEighthB (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n))
    (wantOuterEven wantIndexEven wantIndexBitOneEven
      wantIndexBitTwoEven wantIndexBitThreeEven wantIndexBitFourEven : Bool) : Bool :=
  allB
    ((((Finset.univ : Finset (Vertex n)) \ insert source pair).powersetCard 4).filter
      (fun extra =>
        extraOuterEvenB extra = wantOuterEven ∧
          extraIndexEvenB extra = wantIndexEven ∧
          extraIndexBitOneEvenB extra = wantIndexBitOneEven ∧
          extraIndexBitTwoEvenB extra = wantIndexBitTwoEven ∧
          extraIndexBitThreeEvenB extra = wantIndexBitThreeEven ∧
          extraIndexBitFourEvenB extra = wantIndexBitFourEven))
    fun extra =>
      candidateCertB n (insert source pair ∪ extra)

/-- Exact reconstruction of a quarter-octant from its two sixth-bit children. -/
theorem pairCertScanOctantQuarterB_of_eighths
    (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n))
    (wantOuterEven wantIndexEven wantIndexBitOneEven
      wantIndexBitTwoEven wantIndexBitThreeEven : Bool)
    (hfalse :
      pairCertScanOctantEighthB n source pair
        wantOuterEven wantIndexEven wantIndexBitOneEven
        wantIndexBitTwoEven wantIndexBitThreeEven false = true)
    (htrue :
      pairCertScanOctantEighthB n source pair
        wantOuterEven wantIndexEven wantIndexBitOneEven
        wantIndexBitTwoEven wantIndexBitThreeEven true = true) :
    pairCertScanOctantQuarterB n source pair
      wantOuterEven wantIndexEven wantIndexBitOneEven
      wantIndexBitTwoEven wantIndexBitThreeEven = true := by
  unfold pairCertScanOctantEighthB at hfalse htrue
  unfold pairCertScanOctantQuarterB
  apply (allB_eq_true _ _).2
  intro extra hextra
  have hparent := Finset.mem_filter.mp hextra
  cases hbit4 : extraIndexBitFourEvenB extra with
  | false =>
      exact (allB_eq_true _ _).mp hfalse extra (by
        apply Finset.mem_filter.mpr
        exact ⟨hparent.1,
          ⟨hparent.2.1,
            ⟨hparent.2.2.1,
              ⟨hparent.2.2.2.1,
                ⟨hparent.2.2.2.2.1,
                  ⟨hparent.2.2.2.2.2, hbit4⟩⟩⟩⟩⟩⟩)
  | true =>
      exact (allB_eq_true _ _).mp htrue extra (by
        apply Finset.mem_filter.mpr
        exact ⟨hparent.1,
          ⟨hparent.2.1,
            ⟨hparent.2.2.1,
              ⟨hparent.2.2.2.1,
                ⟨hparent.2.2.2.2.1,
                  ⟨hparent.2.2.2.2.2, hbit4⟩⟩⟩⟩⟩⟩)

end FiniteScan
end PetersenZeroForcing
