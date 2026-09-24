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

/-- Fifth deterministic classifier used when a half-octant still exceeds the
kernel-check resource budget.  It is the next binary bit of the same index sum. -/
def extraIndexBitThreeEvenB {n : Nat} (extra : Finset (Vertex n)) : Bool :=
  decide ((((extra.sum (fun x => vertexBitIndex x)) / 8) % 2) = 0)

/-- One quarter of an exact octant scan.  The first four classifier values fix
the parent half; the fifth classifier selects one of its two exact children. -/
def pairCertScanOctantQuarterB (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n))
    (wantOuterEven wantIndexEven wantIndexBitOneEven
      wantIndexBitTwoEven wantIndexBitThreeEven : Bool) : Bool :=
  allB
    ((((Finset.univ : Finset (Vertex n)) \ insert source pair).powersetCard 4).filter
      (fun extra =>
        extraOuterEvenB extra = wantOuterEven ∧
          extraIndexEvenB extra = wantIndexEven ∧
          extraIndexBitOneEvenB extra = wantIndexBitOneEven ∧
          extraIndexBitTwoEvenB extra = wantIndexBitTwoEven ∧
          extraIndexBitThreeEvenB extra = wantIndexBitThreeEven))
    fun extra =>
      candidateCertB n (insert source pair ∪ extra)

/-- Exact reconstruction of a half-octant from its two fifth-bit children. -/
theorem pairCertScanOctantHalfB_of_quarters
    (n : Nat) [NeZero n]
    (source : Vertex n) (pair : Finset (Vertex n))
    (wantOuterEven wantIndexEven wantIndexBitOneEven wantIndexBitTwoEven : Bool)
    (hfalse :
      pairCertScanOctantQuarterB n source pair
        wantOuterEven wantIndexEven wantIndexBitOneEven wantIndexBitTwoEven false = true)
    (htrue :
      pairCertScanOctantQuarterB n source pair
        wantOuterEven wantIndexEven wantIndexBitOneEven wantIndexBitTwoEven true = true) :
    pairCertScanOctantHalfB n source pair
      wantOuterEven wantIndexEven wantIndexBitOneEven wantIndexBitTwoEven = true := by
  unfold pairCertScanOctantQuarterB at hfalse htrue
  unfold pairCertScanOctantHalfB
  apply (allB_eq_true _ _).2
  intro extra hextra
  have hparent := Finset.mem_filter.mp hextra
  cases hbit3 : extraIndexBitThreeEvenB extra with
  | false =>
      exact (allB_eq_true _ _).mp hfalse extra (by
        apply Finset.mem_filter.mpr
        exact ⟨hparent.1,
          ⟨hparent.2.1,
            ⟨hparent.2.2.1,
              ⟨hparent.2.2.2.1,
                ⟨hparent.2.2.2.2, hbit3⟩⟩⟩⟩⟩)
  | true =>
      exact (allB_eq_true _ _).mp htrue extra (by
        apply Finset.mem_filter.mpr
        exact ⟨hparent.1,
          ⟨hparent.2.1,
            ⟨hparent.2.2.1,
              ⟨hparent.2.2.2.1,
                ⟨hparent.2.2.2.2, hbit3⟩⟩⟩⟩⟩)

end FiniteScan
end PetersenZeroForcing
