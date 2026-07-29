import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean

structure RatioTestCondition where
  sequence : ℕ → ℝ
  limitSup : ℝ
  limitSupLessThanOne : Prop
  convergenceConclusion : Prop

structure RatioTestEvidence (R : RatioTestCondition) where
  limitSupLessThanOneClosed : R.limitSupLessThanOne
  convergenceConclusionClosed : R.convergenceConclusion

def RatioTestClosed (R : RatioTestCondition) : Prop :=
  R.limitSupLessThanOne ∧ R.convergenceConclusion

theorem ratio_test_closed_from_evidence (R : RatioTestCondition) (E : RatioTestEvidence R) :
    RatioTestClosed R := by
  exact And.intro E.limitSupLessThanOneClosed E.convergenceConclusionClosed

end ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean
end HautevilleHouse