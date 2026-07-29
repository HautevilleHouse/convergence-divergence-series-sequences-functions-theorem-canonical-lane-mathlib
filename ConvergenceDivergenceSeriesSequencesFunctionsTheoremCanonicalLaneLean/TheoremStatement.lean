import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean

structure ConvergenceAdmittedObject where
  underlyingSeries : Type
  convergenceCondition : Prop
  divergenceCondition : Prop
  conclusion : convergenceCondition ∨ divergenceCondition

def ConvergenceWitnessClosed (O : ConvergenceAdmittedObject) : Prop :=
  O.conclusion

end ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean
end HautevilleHouse