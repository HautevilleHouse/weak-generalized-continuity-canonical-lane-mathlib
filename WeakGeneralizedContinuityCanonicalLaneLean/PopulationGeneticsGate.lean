import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure PopulationData where
  sampleSize : Nat
  alleleFrequencies : List Float
  heterozygosityObserved : Float
  heterozygosityExpected : Float

def gateClosed (P : PopulationData) : Prop :=
  P.heterozygosityObserved ≠ P.heterozygosityExpected

theorem gate_from_admissible (P : PopulationData) (h : P.heterozygosityObserved ≠ P.heterozygosityExpected) : gateClosed P := by
  exact h

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse