import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean

structure FunctionConvergencePackage where
  functionSequence : Nat -> Real -> Real
  pointwiseLimit : Real -> Real
  uniformLimit : Real -> Real
  pointwiseConvergence : Prop
  uniformConvergence : Prop

structure FunctionConvergenceEvidence (F : FunctionConvergencePackage) where
  pointwiseConvergenceClosed : F.pointwiseConvergence
  uniformConvergenceClosed : F.uniformConvergence

def FunctionConvergenceClosed (F : FunctionConvergencePackage) : Prop :=
  F.pointwiseConvergence ∧ F.uniformConvergence

theorem function_convergence_closed_from_evidence (F : FunctionConvergencePackage) (E : FunctionConvergenceEvidence F) : FunctionConvergenceClosed F :=
  And.intro E.pointwiseConvergenceClosed E.uniformConvergenceClosed

end ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
