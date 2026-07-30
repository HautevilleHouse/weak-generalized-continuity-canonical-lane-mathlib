import WeakGeneralizedContinuityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure GenotypeFrequencyPackage where
  locusAlleles : Type u
  alleleCount : Nat
  genotypeArray : List (List Nat)
  observedFrequencies : List ℚ
  populationTotal : ℕ

structure HardyWeinbergEvidence (G : GenotypeFrequencyPackage) where
  expectedFrequenciesComputed : Prop
  chiSquareTestPassed : Prop
  equilibriumHolds : Prop

def HardyWeinbergClosed (G : GenotypeFrequencyPackage) : Prop :=
  G.observedFrequencies.length = (G.alleleCount * (G.alleleCount + 1) / 2)

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse
