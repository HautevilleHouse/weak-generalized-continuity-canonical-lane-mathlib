import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure HardyWeinbergEquilibrium (A : AdmissibleClass) where
  populationGenotypeFrequencies : Prop
  randomMatingAssumption : Prop
  noEvolutionaryForces : Prop
  equilibriumExpected : Prop
  observedFrequenciesMatch : Prop
  equilibriumClosed : Prop
  equilibriumClosedTerm : equilibriumClosed

structure HardyWeinbergEvidence {A : AdmissibleClass} (H : HardyWeinbergEquilibrium A) where
  populationGenotypeFrequenciesClosed : H.populationGenotypeFrequencies
  randomMatingAssumptionClosed : H.randomMatingAssumption
  noEvolutionaryForcesClosed : H.noEvolutionaryForces
  equilibriumExpectedClosed : H.equilibriumExpected
  observedFrequenciesMatchClosed : H.observedFrequenciesMatch

def EquilibriumClosed {A : AdmissibleClass} (H : HardyWeinbergEquilibrium A) : Prop :=
  H.populationGenotypeFrequencies ∧ H.randomMatingAssumption ∧ H.noEvolutionaryForces ∧
  H.equilibriumExpected ∧ H.observedFrequenciesMatch ∧ H.equilibriumClosed

theorem equilibrium_closed_from_evidence {A : AdmissibleClass}
    (H : HardyWeinbergEquilibrium A) (E : HardyWeinbergEvidence H) :
    EquilibriumClosed H := by
  exact And.intro E.populationGenotypeFrequenciesClosed
    (And.intro E.randomMatingAssumptionClosed
      (And.intro E.noEvolutionaryForcesClosed
        (And.intro E.equilibriumExpectedClosed
          (And.intro E.observedFrequenciesMatchClosed H.equilibriumClosedTerm))))

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse