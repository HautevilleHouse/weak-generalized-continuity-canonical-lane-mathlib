import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure SequenceAlignmentPackage where
  genomeSequences : Type
  alignmentScore : Prop
  gapPenalty : Prop
  substitutionMatrix : Type
  optimalAlignment : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  alignmentScoreClosed : S.alignmentScore
  gapPenaltyClosed : S.gapPenalty
  optimalAlignmentClosed : S.optimalAlignment

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.alignmentScore ∧ S.gapPenalty ∧ S.optimalAlignment

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.alignmentScoreClosed (And.intro E.gapPenaltyClosed E.optimalAlignmentClosed)

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse