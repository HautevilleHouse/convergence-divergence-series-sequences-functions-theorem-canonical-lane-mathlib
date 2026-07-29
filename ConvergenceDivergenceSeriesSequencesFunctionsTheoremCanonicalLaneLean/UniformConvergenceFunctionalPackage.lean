import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean

structure UniformConvergenceFunctionalPackage where
  functionSpace : Type u → Type u
  domain : Type u
  codomain : Type u
  uniformLimitCondition : Prop
  pointwiseLimitCondition : Prop

structure UniformConvergenceFunctionalEvidence (U : UniformConvergenceFunctionalPackage) where
  uniformLimitConditionClosed : U.uniformLimitCondition
  pointwiseLimitConditionClosed : U.pointwiseLimitCondition

def UniformConvergenceFunctionalClosed (U : UniformConvergenceFunctionalPackage) : Prop :=
  U.uniformLimitCondition ∧ U.pointwiseLimitCondition

theorem uniform_convergence_functional_closed_from_evidence
    (U : UniformConvergenceFunctionalPackage) (E : UniformConvergenceFunctionalEvidence U) :
    UniformConvergenceFunctionalClosed U := by
  exact And.intro E.uniformLimitConditionClosed E.pointwiseLimitConditionClosed

end ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean
end HautevilleHouse