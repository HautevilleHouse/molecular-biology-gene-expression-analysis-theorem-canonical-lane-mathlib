import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean

def ConstrainedExpressionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_expression_endgame (A : AdmissibleClass) : ConstrainedExpressionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean
end HautevilleHouse
