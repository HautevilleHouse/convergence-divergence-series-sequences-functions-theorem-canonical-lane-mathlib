import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean

structure SequenceConvergence where
  domain : Type u
  topology : TopologicalSpace domain
  sequence : ℕ → domain
  limit : domain
  convergenceCondition : Prop
  conclusion : convergenceCondition

structure AdmittedObject where
  seqConv : SequenceConvergence
  convergenceCondition : seqConv.convergenceCondition
  conclusion : convergenceCondition

end ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean
end HautevilleHouse