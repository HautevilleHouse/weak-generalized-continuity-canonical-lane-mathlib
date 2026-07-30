import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

/-!
# Linkage Analysis Package

Records recombination fractions and LOD scores for genetic linkage mapping.
-/

structure LinkageAnalysis where
  markerPairs : Nat
  recombinationFraction : ℚ
  lodScore : ℚ
  significantLinkage : Prop
  significantLinkageTerm : significantLinkage

structure LinkageEvidence (L : LinkageAnalysis) where
  lodScoreAboveThreshold : L.lodScore ≥ 3.0
  recombinationFractionNonNull : L.recombinationFraction > 0

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse