import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean

structure GeneExpressionDifferentialAnalysisPackage where
  rnaSeqCountData : Prop
  normalizationMethod : Prop
  statisticalTest : Prop
  foldChangeThreshold : Prop
  differentiallyExpressedGenes : Prop

structure GeneExpressionDifferentialAnalysisEvidence
    (G : GeneExpressionDifferentialAnalysisPackage) where
  rnaSeqCountDataClosed : G.rnaSeqCountData
  normalizationMethodClosed : G.normalizationMethod
  statisticalTestClosed : G.statisticalTest
  foldChangeThresholdClosed : G.foldChangeThreshold
  differentiallyExpressedGenesClosed : G.differentiallyExpressedGenes

def GeneExpressionDifferentialAnalysisClosed
    (G : GeneExpressionDifferentialAnalysisPackage) : Prop :=
  G.rnaSeqCountData ∧ G.normalizationMethod ∧
  G.statisticalTest ∧ G.foldChangeThreshold ∧ G.differentiallyExpressedGenes

theorem gene_expression_differential_analysis_closed_from_evidence
    (G : GeneExpressionDifferentialAnalysisPackage)
    (E : GeneExpressionDifferentialAnalysisEvidence G) :
    GeneExpressionDifferentialAnalysisClosed G := by
  exact And.intro E.rnaSeqCountDataClosed
    (And.intro E.normalizationMethodClosed
      (And.intro E.statisticalTestClosed
        (And.intro E.foldChangeThresholdClosed E.differentiallyExpressedGenesClosed)))

end MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean
end HautevilleHouse
