import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheorem

structure SequenceConvergencePackage where
  space : Type u
  norm : space → ℝ
  sequence : ℕ → space
  limit : space
  convergenceProperty : Prop
  cauchyProperty : Prop

def SequenceConvergenceClosed (S : SequenceConvergencePackage) : Prop :=
  S.convergenceProperty ∧ S.cauchyProperty

structure SeriesConvergencePackage where
  termSequence : ℕ → ℝ
  partialSums : ℕ → ℝ
  sum : ℝ
  convergenceProperty : Prop
  absoluteConvergence : Prop

def SeriesConvergenceClosed (S : SeriesConvergencePackage) : Prop :=
  S.convergenceProperty ∧ S.absoluteConvergence

structure UniformConvergencePackage (X : Type u) (Y : Type v) [TopologicalSpace X] [MetricSpace Y] where
  functionSequence : ℕ → (X → Y)
  limitFunction : X → Y
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  cauchyUniform : Prop

def UniformConvergenceClosed {X Y} [TopologicalSpace X] [MetricSpace Y] (U : UniformConvergencePackage X Y) : Prop :=
  U.uniformConvergence ∧ U.cauchyUniform

end ConvergenceDivergenceSeriesSequencesFunctionsTheorem
end HautevilleHouse