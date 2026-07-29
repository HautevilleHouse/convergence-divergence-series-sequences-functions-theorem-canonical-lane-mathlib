import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean

structure SequenceConvergencePackage where
  indexSet : Type u
  topologicalSpace : TopologicalSpace indexSet
  limitPoint : indexSet
  sequence : indexSet → indexSet
  cauchyCondition : Prop
  limitCondition : Prop

structure SequenceConvergenceEvidence (S : SequenceConvergencePackage) where
  cauchyConditionClosed : S.cauchyCondition
  limitConditionClosed : S.limitCondition

def SequenceConvergenceClosed (S : SequenceConvergencePackage) : Prop :=
  S.cauchyCondition ∧ S.limitCondition

theorem sequence_convergence_closed_from_evidence
    (S : SequenceConvergencePackage) (E : SequenceConvergenceEvidence S) :
    SequenceConvergenceClosed S := by
  exact And.intro E.cauchyConditionClosed E.limitConditionClosed

end ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean
end HautevilleHouse