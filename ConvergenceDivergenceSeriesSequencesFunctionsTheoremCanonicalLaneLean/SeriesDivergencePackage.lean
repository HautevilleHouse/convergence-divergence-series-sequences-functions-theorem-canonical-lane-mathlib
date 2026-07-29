import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean

structure SeriesDivergencePackage where
  termSequence : Type u → Type u
  partialSum : Type u → Type u
  divergenceCondition : Prop
  tailCondition : Prop

structure SeriesDivergenceEvidence (S : SeriesDivergencePackage) where
  divergenceConditionClosed : S.divergenceCondition
  tailConditionClosed : S.tailCondition

def SeriesDivergenceClosed (S : SeriesDivergencePackage) : Prop :=
  S.divergenceCondition ∧ S.tailCondition

theorem series_divergence_closed_from_evidence
    (S : SeriesDivergencePackage) (E : SeriesDivergenceEvidence S) :
    SeriesDivergenceClosed S := by
  exact And.intro E.divergenceConditionClosed E.tailConditionClosed

end ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean
end HautevilleHouse