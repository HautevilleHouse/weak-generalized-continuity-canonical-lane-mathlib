import WeakGeneralizedContinuityCanonicalLaneLean.PhylogeneticTree

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure PopulationStructurePackage {G : GenotypeFrequencyPackage} {H : HardyWeinbergEvidence G} {R : RecombinationPackage H} {S : RecombinationEvidence R} {A : SequenceAlignmentPackage S} {E : SequenceAlignmentEvidence A} {P : PhylogeneticTreePackage E} (T : PhylogeneticTreeEvidence P) where
  subpopulations : List (List String)
  fixationIndices : List ℚ
  migrationRates : List ℚ
  structureValid : Prop

structure PopulationStructureEvidence {G : GenotypeFrequencyPackage} {H : HardyWeinbergEvidence G} {R : RecombinationPackage H} {S : RecombinationEvidence R} {A : SequenceAlignmentPackage S} {E : SequenceAlignmentEvidence A} {P : PhylogeneticTreePackage E} {T : PhylogeneticTreeEvidence P} (Spop : PopulationStructurePackage T) where
  structureValidClosed : Spop.structureValid
  fixationIndicesNonNegative : ∀ f ∈ Spop.fixationIndices, f ≥ 0

def PopulationStructureClosed {G : GenotypeFrequencyPackage} {H : HardyWeinbergEvidence G} {R : RecombinationPackage H} {S : RecombinationEvidence R} {A : SequenceAlignmentPackage S} {E : SequenceAlignmentEvidence A} {P : PhylogeneticTreePackage E} {T : PhylogeneticTreeEvidence P} (Spop : PopulationStructurePackage T) : Prop :=
  Spop.structureValid ∧ Spop.subpopulations.length > 0

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse
