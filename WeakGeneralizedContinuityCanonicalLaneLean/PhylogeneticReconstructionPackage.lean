import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure PhylogeneticReconstruction (A : AdmissibleClass) where
  sequenceDataCollected : Prop
  evolutionaryModel : Prop
  treeBuildingMethod : Prop
  treeTopology : Prop
  reconstructionClosed : Prop
  reconstructionClosedTerm : reconstructionClosed

structure PhylogeneticReconstructionEvidence {A : AdmissibleClass} (P : PhylogeneticReconstruction A) where
  sequenceDataCollectedClosed : P.sequenceDataCollected
  evolutionaryModelClosed : P.evolutionaryModel
  treeBuildingMethodClosed : P.treeBuildingMethod
  treeTopologyClosed : P.treeTopology

def ReconstructionClosed {A : AdmissibleClass} (P : PhylogeneticReconstruction A) : Prop :=
  P.sequenceDataCollected ∧ P.evolutionaryModel ∧ P.treeBuildingMethod ∧ P.treeTopology ∧ P.reconstructionClosed

theorem reconstruction_closed_from_evidence {A : AdmissibleClass}
    (P : PhylogeneticReconstruction A) (E : PhylogeneticReconstructionEvidence P) :
    ReconstructionClosed P := by
  exact And.intro E.sequenceDataCollectedClosed
    (And.intro E.evolutionaryModelClosed
      (And.intro E.treeBuildingMethodClosed
        (And.intro E.treeTopologyClosed P.reconstructionClosedTerm)))

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse