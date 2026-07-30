import HautevilleHouse.WeakGeneralizedContinuityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure WeakGeneralizedContinuityObject where
  geneticSequence : Type
  topology : TopologicalSpace geneticSequence
  weakGeneralizedContinuity : Prop
  conclusion : weakGeneralizedContinuity

def WeakGeneralizedContinuityWitnessClosed (O : WeakGeneralizedContinuityObject) : Prop :=
  O.weakGeneralizedContinuity

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse