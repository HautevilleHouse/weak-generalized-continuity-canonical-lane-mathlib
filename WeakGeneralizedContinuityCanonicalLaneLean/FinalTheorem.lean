import canonicalLaneMathlib.AdmissibleClass
import WeakGeneralizedContinuityCanonicalLaneLean.AlleleFrequencyClosure
import WeakGeneralizedContinuityCanonicalLaneLean.LinkageAnalysisBridge
import WeakGeneralizedContinuityCanonicalLaneLean.SequenceAlignmentEvidence
import WeakGeneralizedContinuityCanonicalLaneLean.PhylogeneticTreeConstraint
import WeakGeneralizedContinuityCanonicalLaneLean.PopulationGeneticsGate

namespace HautevilleHouse
namespace WeakGeneralizedContinuityCanonicalLaneLean

def ConstrainedWeakGeneralizedContinuityClosure (A : AlleleFrequencyAdmissibleObject) : Prop :=
  AlleleFrequencyClosed A ∧ LinkageAnalysisBridge.linkageBridgeClosed (by
    exact { chromosome := "", marker := "", lodScore := 0.0, recombinationFraction := 0.0 }) ∧
  SequenceAlignmentEvidence.alignmentEvidence (by
    exact { referenceGenome := "", queryGenome := "", alignmentScore := 0, mismatchCount := 0 }) ∧
  PhylogeneticTreeConstraint.phylogeneticBridgeClosed (by
    exact { speciesList := [], topologyType := "", branchLengths := [], bootstrapSupport := 0.0 }) ∧
  PopulationGeneticsGate.gateClosed (by
    exact { sampleSize := 0, alleleFrequencies := [], heterozygosityObserved := 0.0, heterozygosityExpected := 0.0 })

theorem constrained_wgc_endgame (A : AlleleFrequencyAdmissibleObject) : ConstrainedWeakGeneralizedContinuityClosure A := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))
  · exact And.intro (fun h => True.intro) A.gateEvidence
  · exact LinkageAnalysisBridge.linkage_bridge_from_admissible _
  · exact SequenceAlignmentEvidence.alignment_evidence_holds _ (by decide) (by decide)
  · exact PhylogeneticTreeConstraint.phylogenetic_bridge_from_admissible _ (by linarith)
  · exact PopulationGeneticsGate.gate_from_admissible _ (by decide)

end WeakGeneralizedContinuityCanonicalLaneLean
end HautevilleHouse