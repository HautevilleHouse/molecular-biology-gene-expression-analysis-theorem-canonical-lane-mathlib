import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean

structure PrincipalComponentAnalysisPackage where
  geneExpressionMatrix : Prop
  covarianceMatrix : Prop
  eigenvalueDecomposition : Prop
  varianceExplained : Prop
  reducedDimensionRepresentation : Prop

structure PrincipalComponentAnalysisEvidence
    (P : PrincipalComponentAnalysisPackage) where
  geneExpressionMatrixClosed : P.geneExpressionMatrix
  covarianceMatrixClosed : P.covarianceMatrix
  eigenvalueDecompositionClosed : P.eigenvalueDecomposition
  varianceExplainedClosed : P.varianceExplained
  reducedDimensionRepresentationClosed : P.reducedDimensionRepresentation

def PrincipalComponentAnalysisClosed
    (P : PrincipalComponentAnalysisPackage) : Prop :=
  P.geneExpressionMatrix ∧ P.covarianceMatrix ∧
  P.eigenvalueDecomposition ∧ P.varianceExplained ∧ P.reducedDimensionRepresentation

theorem principal_component_analysis_closed_from_evidence
    (P : PrincipalComponentAnalysisPackage)
    (E : PrincipalComponentAnalysisEvidence P) :
    PrincipalComponentAnalysisClosed P := by
  exact And.intro E.geneExpressionMatrixClosed
    (And.intro E.covarianceMatrixClosed
      (And.intro E.eigenvalueDecompositionClosed
        (And.intro E.varianceExplainedClosed E.reducedDimensionRepresentationClosed)))

end MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean
end HautevilleHouse
