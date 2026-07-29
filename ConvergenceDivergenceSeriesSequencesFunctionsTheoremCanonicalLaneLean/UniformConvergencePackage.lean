import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean

structure UniformConvergenceCondition where
  functionSequence : ℕ → (ℝ → ℝ)
  domain : Set ℝ
  limitFunction : ℝ → ℝ
  uniformConvergence : Prop
  continuityPreserved : Prop

structure UniformConvergenceEvidence (U : UniformConvergenceCondition) where
  uniformConvergenceClosed : U.uniformConvergence
  continuityPreservedClosed : U.continuityPreserved

def UniformConvergenceClosed (U : UniformConvergenceCondition) : Prop :=
  U.uniformConvergence ∧ U.continuityPreserved

theorem uniform_convergence_closed_from_evidence (U : UniformConvergenceCondition) (E : UniformConvergenceEvidence U) :
    UniformConvergenceClosed U := by
  exact And.intro E.uniformConvergenceClosed E.continuityPreservedClosed

end ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean
end HautevilleHouse