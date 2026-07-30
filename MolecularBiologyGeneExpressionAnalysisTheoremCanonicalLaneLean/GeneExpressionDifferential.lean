import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean

structure GeneExpressionDifferentialPackage where
  genes : Type
  conditions : Type
  expressionLevels : Type
  foldChange : Prop
  pValue : Prop
  differentiallyExpressed : Prop
  foldChangeTerm : foldChange
  pValueTerm : pValue

structure GeneExpressionDifferentialEvidence (G : GeneExpressionDifferentialPackage) where
  foldChangeClosed : G.foldChange
  pValueClosed : G.pValue
  differentiallyExpressedClosed : G.differentiallyExpressed

def GeneExpressionDifferentialClosed (G : GeneExpressionDifferentialPackage) : Prop :=
  G.foldChange ∧ G.pValue ∧ G.differentiallyExpressed

theorem gene_expression_differential_closed_from_evidence
    (G : GeneExpressionDifferentialPackage)
    (E : GeneExpressionDifferentialEvidence G) : GeneExpressionDifferentialClosed G := by
  exact And.intro E.foldChangeClosed
    (And.intro E.pValueClosed E.differentiallyExpressedClosed)

end MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean
end HautevilleHouse
