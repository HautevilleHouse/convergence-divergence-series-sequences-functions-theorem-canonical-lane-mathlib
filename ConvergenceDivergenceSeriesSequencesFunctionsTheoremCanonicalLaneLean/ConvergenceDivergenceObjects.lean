import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean

structure ConvergenceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ConvergentSequenceObject where
  space : ConvergenceSpace
  sequence : ℕ → carrier
  limit : carrier
  convergenceCondition : Prop
  conclusion : convergenceCondition

structure DivergentSeriesObject where
  series : ℕ → ℝ
  divergenceCondition : Prop
  conclusion : divergenceCondition

structure ConvergenceDivergenceAdmittedObject where
  convergentObject : ConvergentSequenceObject
  divergentObject : DivergentSeriesObject
  wellDefined : convergentObject.limit = 0 ∨ divergentObject.divergenceCondition

def ConvergenceDivergenceWitnessClosed (O : ConvergenceDivergenceAdmittedObject) : Prop :=
  O.convergentObject.conclusion ∧ O.divergentObject.conclusion

end ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean
end HautevilleHouse