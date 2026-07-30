import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

/-!
# Sequence Alignment Package

Captures pairwise sequence alignment with similarity and gap penalties.
-/

structure SequenceAlignment where
  seq1 : String
  seq2 : String
  alignmentScore : ℤ
  mismatches : Nat
  gapPenalty : ℚ
  similarity : ℚ
  optimalAlignment : Prop
  optimalAlignmentTerm : optimalAlignment

structure AlignmentEvidence (A : SequenceAlignment) where
  alignmentScoreMaximal : ∀ (score : ℤ), (score ≤ A.alignmentScore)
  gapPenaltyNonpositive : A.gapPenalty ≤ 0

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse