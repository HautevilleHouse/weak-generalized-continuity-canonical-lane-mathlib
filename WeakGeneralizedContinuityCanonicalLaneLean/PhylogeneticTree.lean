import WeakGeneralizedContinuityCanonicalLaneLean.SequenceAlignment

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure PhylogeneticTreePackage {G : GenotypeFrequencyPackage} {H : HardyWeinbergEvidence G} {R : RecombinationPackage H} {S : RecombinationEvidence R} {A : SequenceAlignmentPackage S} (E : SequenceAlignmentEvidence A) where
  taxa : List String
  distanceMatrix : List (List ℚ)
  treeTopology : Type
  branchLengths : List ℚ
  likelihoodScore : ℚ
  optimalTree : Prop

structure PhylogeneticTreeEvidence {G : GenotypeFrequencyPackage} {H : HardyWeinbergEvidence G} {R : RecombinationPackage H} {S : RecombinationEvidence R} {A : SequenceAlignmentPackage S} {E : SequenceAlignmentEvidence A} (P : PhylogeneticTreePackage E) where
  treeOptimal : P.optimalTree
  likelihoodMaximized : P.likelihoodScore = 0

def PhylogeneticTreeClosed {G : GenotypeFrequencyPackage} {H : HardyWeinbergEvidence G} {R : RecombinationPackage H} {S : RecombinationEvidence R} {A : SequenceAlignmentPackage S} {E : SequenceAlignmentEvidence A} (P : PhylogeneticTreePackage E) : Prop :=
  P.optimalTree ∧ P.likelihoodScore ≤ 0

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse
