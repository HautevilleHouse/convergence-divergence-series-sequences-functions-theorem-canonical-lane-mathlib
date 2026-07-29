import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean

structure SeriesConvergence where
  termSequence : ℕ → ℝ
  partialSums : ℕ → ℝ
  sum : ℝ
  convergenceCondition : Prop
  conclusion : convergenceCondition

end ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean
end HautevilleHouse