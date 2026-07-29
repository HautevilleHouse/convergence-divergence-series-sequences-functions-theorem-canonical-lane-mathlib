import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean

structure SequencePackage where
  sequence : Type
  limit : Prop
  epsilonCondition : Prop

structure SequenceEvidence (S : SequencePackage) where
  limitClosed : S.limit
  epsilonConditionClosed : S.epsilonCondition

def SequenceConvergenceClosed (S : SequencePackage) : Prop :=
  S.limit ∧ S.epsilonCondition

theorem sequence_convergence_closed_from_evidence (S : SequencePackage)
    (E : SequenceEvidence S) : SequenceConvergenceClosed S := by
  exact And.intro E.limitClosed E.epsilonConditionClosed

end ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean
end HautevilleHouse