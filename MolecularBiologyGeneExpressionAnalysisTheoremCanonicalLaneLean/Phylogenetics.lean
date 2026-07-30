import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean

structure PhylogeneticsPackage where
  species : Type u
  sequences : Type v
  evolutionaryModel : Type w
  treeType : Type x
  treeBuildMethod : Type y
  treeInferred : Prop
  branchLengthsEstimated : Prop
  bootstrapSupport : Prop
  phylogenyConsistent : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeInferredClosed : P.treeInferred
  branchLengthsEstimatedClosed : P.branchLengthsEstimated
  bootstrapSupportClosed : P.bootstrapSupport
  phylogenyConsistentClosed : P.phylogenyConsistent

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.treeInferred ∧ P.branchLengthsEstimated ∧ P.bootstrapSupport ∧ P.phylogenyConsistent

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.treeInferredClosed
    (And.intro E.branchLengthsEstimatedClosed
      (And.intro E.bootstrapSupportClosed E.phylogenyConsistentClosed))

end MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean
end HautevilleHouse
