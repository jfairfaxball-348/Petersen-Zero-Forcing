import PetersenZeroForcing.FiniteScan

namespace PetersenZeroForcing
namespace FiniteScan

/-- Fourth deterministic classifier used only to subdivide unusually expensive
octant checks.  It is the next binary bit of the sum of vertex indices. -/
def extraIndexBitTwoEvenB {n : Nat} (extra : Finset (Vertex n)) : Bool :=
  decide ((((extra.sum (fun x => vertexBitIndex x)) / 4) % 2) = 0)

/-- One half of an exact octant scan, selected by the fourth deterministic
classifier.  This changes only the computational partition, not the proposition
eventually reconstructed by `pairCertScanOctantB_of_halves`. -/
def pairCertScanOctantHalfB (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n))
    (wantOuterEven wantIndexEven wantIndexBitOneEven wantIndexBitTwoEven : Bool) : Bool :=
  allB
    ((((Finset.univ : Finset (Vertex n)) \ insert source pair).powersetCard 4).filter
      (fun extra =>
        extraOuterEvenB extra = wantOuterEven ∧
          extraIndexEvenB extra = wantIndexEven ∧
          extraIndexBitOneEvenB extra = wantIndexBitOneEven ∧
          extraIndexBitTwoEvenB extra = wantIndexBitTwoEven))
    fun extra =>
      candidateCertB n (insert source pair ∪ extra)

theorem pairCertScanOctantB_of_halves
    (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n))
    (wantOuterEven wantIndexEven wantIndexBitOneEven : Bool)
    (hfalse :
      pairCertScanOctantHalfB n source pair
        wantOuterEven wantIndexEven wantIndexBitOneEven false = true)
    (htrue :
      pairCertScanOctantHalfB n source pair
        wantOuterEven wantIndexEven wantIndexBitOneEven true = true) :
    pairCertScanOctantB n source pair
      wantOuterEven wantIndexEven wantIndexBitOneEven = true := by
  unfold pairCertScanOctantHalfB at hfalse htrue
  unfold pairCertScanOctantB
  apply (allB_eq_true _ _).2
  intro extra hextra
  have hparent := Finset.mem_filter.mp hextra
  cases hbit2 : extraIndexBitTwoEvenB extra with
  | false =>
      exact (allB_eq_true _ _).mp hfalse extra (by
        apply Finset.mem_filter.mpr
        exact ⟨hparent.1,
          ⟨hparent.2.1,
            ⟨hparent.2.2.1,
              ⟨hparent.2.2.2, hbit2⟩⟩⟩⟩)
  | true =>
      exact (allB_eq_true _ _).mp htrue extra (by
        apply Finset.mem_filter.mpr
        exact ⟨hparent.1,
          ⟨hparent.2.1,
            ⟨hparent.2.2.1,
              ⟨hparent.2.2.2, hbit2⟩⟩⟩⟩)

end FiniteScan
end PetersenZeroForcing
