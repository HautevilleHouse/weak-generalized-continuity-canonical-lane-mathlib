import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure LinkageAnalysis (A : AdmissibleClass) where
  geneticMarkersIdentified : Prop
  recombinationFraction : Prop
  lodScore : Prop
  linkageEvidence : Prop
  linkageClosed : Prop
  linkageClosedTerm : linkageClosed

structure LinkageAnalysisEvidence {A : AdmissibleClass} (L : LinkageAnalysis A) where
  geneticMarkersIdentifiedClosed : L.geneticMarkersIdentified
  recombinationFractionClosed : L.recombinationFraction
  lodScoreClosed : L.lodScore
  linkageEvidenceClosed : L.linkageEvidence

def LinkageClosed {A : AdmissibleClass} (L : LinkageAnalysis A) : Prop :=
  L.geneticMarkersIdentified ∧ L.recombinationFraction ∧ L.lodScore ∧ L.linkageEvidence ∧ L.linkageClosed

theorem linkage_closed_from_evidence {A : AdmissibleClass}
    (L : LinkageAnalysis A) (E : LinkageAnalysisEvidence L) :
    LinkageClosed L := by
  exact And.intro E.geneticMarkersIdentifiedClosed
    (And.intro E.recombinationFractionClosed
      (And.intro E.lodScoreClosed
        (And.intro E.linkageEvidenceClosed L.linkageClosedTerm)))

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse