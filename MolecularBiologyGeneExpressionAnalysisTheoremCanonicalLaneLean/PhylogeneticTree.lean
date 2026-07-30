import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : Type
  treeTopology : Prop
  branchLengths : Prop
  likelihoodScore : Prop
  bootstrapSupport : Prop
  treeTopologyTerm : treeTopology
  branchLengthsTerm : branchLengths
  likelihoodScoreTerm : likelihoodScore

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  likelihoodScoreClosed : P.likelihoodScore
  bootstrapSupportClosed : P.bootstrapSupport

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.treeTopology ∧ P.branchLengths ∧ P.likelihoodScore ∧ P.bootstrapSupport

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.treeTopologyClosed
    (And.intro E.branchLengthsClosed
      (And.intro E.likelihoodScoreClosed E.bootstrapSupportClosed))

end MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean
end HautevilleHouse
