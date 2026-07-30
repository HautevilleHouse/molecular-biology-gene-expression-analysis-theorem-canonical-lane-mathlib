import MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean.PhylogeneticTree

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean

structure GeneExpressionAnalysisPackage {S : SequenceAlignmentPackage}
    (P : PhylogeneticTreePackage S) where
  expressionMatrix : Prop
  normalizationMethod : Prop
  differentialExpression : Prop
  foldChange : Prop
  pValueAdjusted : Prop
  clusteringResult : Prop

structure GeneExpressionEvidence {S : SequenceAlignmentPackage}
    {P : PhylogeneticTreePackage S} (G : GeneExpressionAnalysisPackage P) where
  expressionMatrixClosed : G.expressionMatrix
  normalizationMethodClosed : G.normalizationMethod
  differentialExpressionClosed : G.differentialExpression
  foldChangeClosed : G.foldChange
  pValueAdjustedClosed : G.pValueAdjusted
  clusteringResultClosed : G.clusteringResult

def GeneExpressionClosed {S : SequenceAlignmentPackage}
    {P : PhylogeneticTreePackage S} (G : GeneExpressionAnalysisPackage P) : Prop :=
  G.expressionMatrix ∧ G.normalizationMethod ∧
  G.differentialExpression ∧ G.foldChange ∧
  G.pValueAdjusted ∧ G.clusteringResult

theorem gene_expression_closed_from_evidence {S : SequenceAlignmentPackage}
    {P : PhylogeneticTreePackage S} (G : GeneExpressionAnalysisPackage P)
    (E : GeneExpressionEvidence G) : GeneExpressionClosed G := by
  exact And.intro E.expressionMatrixClosed
    (And.intro E.normalizationMethodClosed
      (And.intro E.differentialExpressionClosed
        (And.intro E.foldChangeClosed
          (And.intro E.pValueAdjustedClosed E.clusteringResultClosed))))

end MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean
end HautevilleHouse