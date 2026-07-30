import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure LinkageAnalysisPackage where
  chromosome : String
  marker : String
  lodScore : Float
  recombinationFraction : Float

def linkageBridgeClosed (L : LinkageAnalysisPackage) : Prop :=
  L.lodScore > 3.0

theorem linkage_bridge_from_admissible (L : LinkageAnalysisPackage) : linkageBridgeClosed L := by
  sorry

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse