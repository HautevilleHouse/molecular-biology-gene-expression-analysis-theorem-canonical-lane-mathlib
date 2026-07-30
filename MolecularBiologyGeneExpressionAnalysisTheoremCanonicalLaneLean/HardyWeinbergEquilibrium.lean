import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean

structure HardyWeinbergEquilibriumPackage where
  locus : Type u
  alleleTypes : List (locus × locus)
  populationAlleleFrequencies : locus → ℝ
  expectedGenotypeFrequencies : (locus × locus) → ℝ
  observedGenotypeFrequencies : (locus × locus) → ℝ
  equilibriumDeviation : ℝ
  equilibriumCondition : Prop
  equilibriumConditionTerm : equilibriumCondition

structure HardyWeinbergEquilibriumEvidence (H : HardyWeinbergEquilibriumPackage) where
  equilibriumConditionClosed : H.equilibriumCondition

def HardyWeinbergEquilibriumClosed (H : HardyWeinbergEquilibriumPackage) : Prop :=
  H.equilibriumCondition

theorem hardy_weinberg_equilibrium_closed_from_evidence (H : HardyWeinbergEquilibriumPackage)
  (E : HardyWeinbergEquilibriumEvidence H) : HardyWeinbergEquilibriumClosed H :=
  E.equilibriumConditionClosed

end HautevilleHouse.MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean
end HautevilleHouse
