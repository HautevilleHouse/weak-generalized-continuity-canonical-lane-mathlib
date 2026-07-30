import WeakGeneralizedContinuityCanonicalLaneLean.GenotypeFrequency

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure RecombinationPackage {G : GenotypeFrequencyPackage} (H : HardyWeinbergEvidence G) where
  markerPositions : List ℕ
  recombinationFractions : List ℚ
  lodScores : List ℚ
  significantLinkage : Prop

structure RecombinationEvidence {G : GenotypeFrequencyPackage} {H : HardyWeinbergEvidence G} (R : RecombinationPackage H) where
  lodScoreSignificant : R.significantLinkage
  recombinationMapConsistent : Prop

def RecombinationClosed {G : GenotypeFrequencyPackage} {H : HardyWeinbergEvidence G} (R : RecombinationPackage H) : Prop :=
  R.significantLinkage ∧ R.lodScores.length = R.markerPositions.length

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse
