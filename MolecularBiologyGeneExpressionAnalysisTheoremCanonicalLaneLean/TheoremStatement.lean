import HautevilleHouse.MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean

structure GeneExpressionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeneExpressionAdmittedObject where
  space : GeneExpressionSpace
  geneExpressionData : Type
  hardyWeinbergEquilibrium : Prop
  linkageAnalysisValid : Prop
  sequenceAlignmentCorrect : Prop
  phylogeneticTreeConsistent : Prop
  conclusion : hardyWeinbergEquilibrium ∧ linkageAnalysisValid ∧ sequenceAlignmentCorrect ∧ phylogeneticTreeConsistent

structure GeneExpressionEndgameState where
  object : GeneExpressionAdmittedObject

def GeneExpressionWitnessClosed (O : GeneExpressionAdmittedObject) : Prop :=
  O.hardyWeinbergEquilibrium ∧ O.linkageAnalysisValid ∧ O.sequenceAlignmentCorrect ∧ O.phylogeneticTreeConsistent

end MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean
end HautevilleHouse