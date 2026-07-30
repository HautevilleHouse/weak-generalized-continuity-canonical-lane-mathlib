import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure GenomeWideAssociation (A : AdmissibleClass) where
  genotypeData : Prop
  phenotypeData : Prop
  statisticalTest : Prop
  significantLoci : Prop
  associationClosed : Prop
  associationClosedTerm : associationClosed

structure GenomeWideAssociationEvidence {A : AdmissibleClass} (G : GenomeWideAssociation A) where
  genotypeDataClosed : G.genotypeData
  phenotypeDataClosed : G.phenotypeData
  statisticalTestClosed : G.statisticalTest
  significantLociClosed : G.significantLoci

def AssociationClosed {A : AdmissibleClass} (G : GenomeWideAssociation A) : Prop :=
  G.genotypeData ∧ G.phenotypeData ∧ G.statisticalTest ∧ G.significantLoci ∧ G.associationClosed

theorem association_closed_from_evidence {A : AdmissibleClass}
    (G : GenomeWideAssociation A) (E : GenomeWideAssociationEvidence G) :
    AssociationClosed G := by
  exact And.intro E.genotypeDataClosed
    (And.intro E.phenotypeDataClosed
      (And.intro E.statisticalTestClosed
        (And.intro E.significantLociClosed G.associationClosedTerm)))

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse