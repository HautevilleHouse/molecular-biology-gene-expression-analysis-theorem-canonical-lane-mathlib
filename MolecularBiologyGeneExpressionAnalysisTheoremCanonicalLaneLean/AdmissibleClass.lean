import HautevilleHouse.MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : GeneExpressionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeneExpressionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean
end HautevilleHouse