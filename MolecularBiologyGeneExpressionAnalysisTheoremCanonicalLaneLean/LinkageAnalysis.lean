import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean

structure LinkageAnalysisPackage where
  markers : Type
  recombinationFraction : Prop
  lodScore : Prop
  linkageDetected : Prop
  recombinationFractionTerm : recombinationFraction
  lodScoreTerm : lodScore

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  recombinationFractionClosed : L.recombinationFraction
  lodScoreClosed : L.lodScore
  linkageDetectedClosed : L.linkageDetected

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.recombinationFraction ∧ L.lodScore ∧ L.linkageDetected

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.recombinationFractionClosed
    (And.intro E.lodScoreClosed E.linkageDetectedClosed)

end MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean
end HautevilleHouse
