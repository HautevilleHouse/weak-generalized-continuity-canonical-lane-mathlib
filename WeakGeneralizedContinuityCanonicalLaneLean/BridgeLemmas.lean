import HautevilleHouse.WeakGeneralizedContinuityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WeakGeneralizedContinuityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse