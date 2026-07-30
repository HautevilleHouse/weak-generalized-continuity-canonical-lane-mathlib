import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

/-!
# Population Stratification Package

Controls for population structure in association studies using PCA.
-/

structure PopulationStratification where
  sampleSize : Nat
  principalComponents : Nat
  eigenvalues : List ℚ
  genomicControlLambda : ℚ
  stratificationCorrected : Prop
  stratificationCorrectedTerm : stratificationCorrected

structure StratificationEvidence (S : PopulationStratification) where
  lambdaNearOne : S.genomicControlLambda ≈ 1.0
  eigenvalueRatioCondition : (S.eigenvalues.get? 1).getOrElse 0 > 0

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse