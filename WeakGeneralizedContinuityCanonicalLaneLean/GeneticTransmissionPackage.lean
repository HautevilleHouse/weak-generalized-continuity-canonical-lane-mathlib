import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure GeneticTransmissionPackage where
  locusCount : Nat
  alleleFrequencies : Type
  transmissionProbabilities : Type
  hardyWeinbergEquilibrium : Prop
  linkageDisequilibriumControlled : Prop

structure GeneticTransmissionEvidence (G : GeneticTransmissionPackage) where
  hardyWeinbergEquilibriumClosed : G.hardyWeinbergEquilibrium
  linkageDisequilibriumControlledClosed : G.linkageDisequilibriumControlled

def GeneticTransmissionClosed (G : GeneticTransmissionPackage) : Prop :=
  G.hardyWeinbergEquilibrium ∧ G.linkageDisequilibriumControlled

theorem genetic_transmission_closed_from_evidence (G : GeneticTransmissionPackage)
    (E : GeneticTransmissionEvidence G) : GeneticTransmissionClosed G := by
  exact And.intro E.hardyWeinbergEquilibriumClosed E.linkageDisequilibriumControlledClosed

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse