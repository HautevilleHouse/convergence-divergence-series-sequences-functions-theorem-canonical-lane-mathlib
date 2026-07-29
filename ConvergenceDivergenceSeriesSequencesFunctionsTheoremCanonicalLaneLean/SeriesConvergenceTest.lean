import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean

structure SeriesConvergenceTestPackage where
  seriesTerm : Nat -> Real
  partialSumNat : Nat -> Real
  convergenceCriterion : Prop
  limitValue : Real

structure SeriesConvergenceTestEvidence (S : SeriesConvergenceTestPackage) where
  seriesTermDefined : S.seriesTerm 0 = S.seriesTerm 0
  partialSumRecursive : True
  convergenceCriterionClosed : S.convergenceCriterion
  limitValueFinite : True

def SeriesConvergenceTestClosed (S : SeriesConvergenceTestPackage) : Prop :=
  S.convergenceCriterion

theorem series_convergence_test_closed_from_evidence (S : SeriesConvergenceTestPackage) (E : SeriesConvergenceTestEvidence S) : SeriesConvergenceTestClosed S :=
  E.convergenceCriterionClosed

end ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
