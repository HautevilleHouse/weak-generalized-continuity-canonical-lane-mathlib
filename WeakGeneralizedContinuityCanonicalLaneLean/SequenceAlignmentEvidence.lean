import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure SequenceAlignmentStudy where
  referenceGenome : String
  queryGenome : String
  alignmentScore : Nat
  mismatchCount : Nat

def alignmentEvidence (S : SequenceAlignmentStudy) : Prop :=
  S.alignmentScore > 0 ∧ S.mismatchCount < S.alignmentScore

theorem alignment_evidence_holds (S : SequenceAlignmentStudy) (h : S.alignmentScore > 0) (h2 : S.mismatchCount < S.alignmentScore) : alignmentEvidence S := by
  exact And.intro h h2

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse