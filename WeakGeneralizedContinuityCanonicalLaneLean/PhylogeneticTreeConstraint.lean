import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

structure PhylogeneticTree where
  speciesList : List String
  topologyType : String
  branchLengths : List Float
  bootstrapSupport : Float

def phylogeneticBridgeClosed (T : PhylogeneticTree) : Prop :=
  T.bootstrapSupport > 0.95

theorem phylogenetic_bridge_from_admissible (T : PhylogeneticTree) (h : T.bootstrapSupport > 0.95) : phylogeneticBridgeClosed T := by
  exact h

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse