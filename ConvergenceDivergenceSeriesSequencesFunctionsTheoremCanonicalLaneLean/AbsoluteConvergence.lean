import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean

structure AbsoluteConvergencePackage where
  seriesTerm : Nat -> Real
  absoluteSeriesTerm : Nat -> Real
  convergence : Prop
  absoluteConvergence : Prop
  comparisonTest : Prop

structure AbsoluteConvergenceEvidence (A : AbsoluteConvergencePackage) where
  convergenceClosed : A.convergence
  absoluteConvergenceClosed : A.absoluteConvergence
  comparisonTestClosed : A.comparisonTest

def AbsoluteConvergenceClosed (A : AbsoluteConvergencePackage) : Prop :=
  A.convergence ∧ A.absoluteConvergence ∧ A.comparisonTest

theorem absolute_convergence_closed_from_evidence (A : AbsoluteConvergencePackage) (E : AbsoluteConvergenceEvidence A) : AbsoluteConvergenceClosed A :=
  And.intro E.convergenceClosed (And.intro E.absoluteConvergenceClosed E.comparisonTestClosed)

end ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
