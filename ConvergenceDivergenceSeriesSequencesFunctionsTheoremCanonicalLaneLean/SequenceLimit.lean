import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean

structure SequenceLimitPackage where
  sequence : Nat -> Real
  limitL : Real
  epsilonApproximation : Prop
  uniqueness : Prop

structure SequenceLimitEvidence (S : SequenceLimitPackage) where
  epsilonApproximationClosed : S.epsilonApproximation
  uniquenessClosed : S.uniqueness

def SequenceLimitClosed (S : SequenceLimitPackage) : Prop :=
  S.epsilonApproximation ∧ S.uniqueness

theorem sequence_limit_closed_from_evidence (S : SequenceLimitPackage) (E : SequenceLimitEvidence S) : SequenceLimitClosed S :=
  And.intro E.epsilonApproximationClosed E.uniquenessClosed

end ConvergenceDivergenceSeriesSequencesFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
