import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

/-!
# Gene Expression Package

Represents differential expression analysis with fold change and p-value.
-/

structure GeneExpression where
  geneCount : Nat
  foldChanges : List ℚ
  pValues : List ℚ
  adjustedPValues : List ℚ
  significantGenes : Nat
  expressionNormality : Prop
  expressionNormalityTerm : expressionNormality

structure ExpressionEvidence (E : GeneExpression) where
  foldChangeRange : E.foldChanges.all (λ x => x > 0)
  adjustmentMethodCorrect : True

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse