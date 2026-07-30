import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequenceType : Type u
  referenceSequence : sequenceType
  querySequence : sequenceType
  alignmentScore : ℝ
  gapPenalty : ℝ
  substitutionMatrix : sequenceType → sequenceType → ℝ
  optimalAlignmentFound : Prop
  optimalAlignmentFoundTerm : optimalAlignmentFound

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  optimalAlignmentFoundClosed : S.optimalAlignmentFound

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.optimalAlignmentFound

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
  (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S :=
  E.optimalAlignmentFoundClosed

end HautevilleHouse.MolecularBiologyGeneExpressionAnalysisTheoremCanonicalLaneLean
end HautevilleHouse
