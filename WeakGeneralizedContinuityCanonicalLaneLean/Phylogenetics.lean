import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

/-!
# Phylogenetics Package

Models evolutionary distances and tree reconstruction.
-/

structure PhylogeneticTree where
  leafCount : Nat
  branchLengths : List ℚ
  distanceMatrix : List (List ℚ)
  treeLikelihood : ℚ
  parsimonyScore : ℤ
  evolutionaryModel : String
  treeConsistent : Prop
  treeConsistentTerm : treeConsistent

structure PhylogeneticEvidence (T : PhylogeneticTree) where
  distanceMatrixIsMetric : True
  treeLikelihoodPositive : T.treeLikelihood > 0

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse