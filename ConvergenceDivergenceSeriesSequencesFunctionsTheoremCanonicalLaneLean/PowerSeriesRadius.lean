import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean

structure PowerSeriesRadiusPackage where
  coefficients : Nat -> Real
  center : Real
  convergenceRadius : Real
  radiusFormula : Prop
  convergenceInterval : Prop

structure PowerSeriesRadiusEvidence (P : PowerSeriesRadiusPackage) where
  radiusFormulaClosed : P.radiusFormula
  convergenceIntervalClosed : P.convergenceInterval

def PowerSeriesRadiusClosed (P : PowerSeriesRadiusPackage) : Prop :=
  P.radiusFormula ∧ P.convergenceInterval

theorem power_series_radius_closed_from_evidence (P : PowerSeriesRadiusPackage) (E : PowerSeriesRadiusEvidence P) : PowerSeriesRadiusClosed P :=
  And.intro E.radiusFormulaClosed E.convergenceIntervalClosed

end ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
