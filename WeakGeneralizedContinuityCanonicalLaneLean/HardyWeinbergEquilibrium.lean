import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

/-!
# Hardy-Weinberg Equilibrium Package

Encodes the equilibrium condition for genotype frequencies in a population
under random mating without evolutionary forces.
-/

structure HardyWeinbergEquilibrium where
  populationSize : Nat
  alleleCount : Nat
  genotypeFrequencies : List ℚ
  expectedFrequencies : List ℚ
  deviation : ℚ
  equilibriumClosed : Prop
  equilibriumClosedTerm : equilibriumClosed

structure HardyWeinbergEvidence (E : HardyWeinbergEquilibrium) where
  deviationZero : E.deviation = 0
  frequenciesSumToOne : (E.genotypeFrequencies.sum = 1)

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse