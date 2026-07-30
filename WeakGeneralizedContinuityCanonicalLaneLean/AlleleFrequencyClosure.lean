import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure AlleleFrequencyStudy where
  population : Type
  locus : String
  alleleCount : Nat
  hardyWeinbergDeviation : Prop

structure AlleleFrequencyAdmissibleObject where
  study : AlleleFrequencyStudy
  equilibriumObserved : Bool
  deviationRecorded : Bool
  gateEvidence : equilibriumObserved ∨ deviationRecorded

def AlleleFrequencyClosed (A : AlleleFrequencyAdmissibleObject) : Prop :=
  (A.equilibriumObserved → True) ∧ A.gateEvidence

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse