import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure AdmissibleClass where
  object : Type
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  True ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse