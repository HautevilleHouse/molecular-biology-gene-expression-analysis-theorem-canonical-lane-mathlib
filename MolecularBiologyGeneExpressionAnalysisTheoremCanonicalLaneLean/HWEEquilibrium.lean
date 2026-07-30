import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean

structure HardyWeinbergEquilibriumPackage where
  population : Type u
  genotypeCount : Type v
  alleleFrequencies : Type w
  genotypeFrequencies : Type x
  panmictic : Prop
  randomMating : Prop
  largePopulation : Prop
  noSelectionOrMutation : Prop
  hardyWeinbergProportions : Prop

structure HardyWeinbergEquilibriumEvidence (H : HardyWeinbergEquilibriumPackage) where
  panmicticClosed : H.panmictic
  randomMatingClosed : H.randomMating
  largePopulationClosed : H.largePopulation
  noSelectionOrMutationClosed : H.noSelectionOrMutation
  hardyWeinbergProportionsClosed : H.hardyWeinbergProportions

def HardyWeinbergEquilibriumClosed (H : HardyWeinbergEquilibriumPackage) : Prop :=
  H.panmictic ∧ H.randomMating ∧ H.largePopulation ∧ H.noSelectionOrMutation ∧ H.hardyWeinbergProportions

theorem hardy_weinberg_equilibrium_closed_from_evidence (H : HardyWeinbergEquilibriumPackage)
    (E : HardyWeinbergEquilibriumEvidence H) : HardyWeinbergEquilibriumClosed H := by
  exact And.intro E.panmicticClosed
    (And.intro E.randomMatingClosed
      (And.intro E.largePopulationClosed
        (And.intro E.noSelectionOrMutationClosed E.hardyWeinbergProportionsClosed)))

end MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean
end HautevilleHouse
