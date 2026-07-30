import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure PhylogeneticInferencePackage where
  taxaCount : Nat
  phylogeneticTree : Type
  evolutionaryModel : Type
  likelihoodComputed : Prop
  treeConsistency : Prop

structure PhylogeneticInferenceEvidence (P : PhylogeneticInferencePackage) where
  likelihoodComputedClosed : P.likelihoodComputed
  treeConsistencyClosed : P.treeConsistency

def PhylogeneticInferenceClosed (P : PhylogeneticInferencePackage) : Prop :=
  P.likelihoodComputed ∧ P.treeConsistency

theorem phylogenetic_inference_closed_from_evidence (P : PhylogeneticInferencePackage)
    (E : PhylogeneticInferenceEvidence P) : PhylogeneticInferenceClosed P := by
  exact And.intro E.likelihoodComputedClosed E.treeConsistencyClosed

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse