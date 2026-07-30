import HautevilleHouse.WeakGeneralizedContinuityCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse