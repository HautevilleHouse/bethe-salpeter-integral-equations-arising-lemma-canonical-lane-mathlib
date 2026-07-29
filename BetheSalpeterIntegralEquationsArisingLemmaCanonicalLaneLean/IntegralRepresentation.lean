import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean

structure IntegralRepresentation (K : KernelOperator T S) (E : BetheSalpeterEquation K G) where
  spectralDecomposition : Prop
  analyticContinuation : Prop
  boundStateCondition : Prop
  scatteringThreshold : Prop

structure IntegralRepresentationEvidence (R : IntegralRepresentation K E) where
  spectralDecompositionClosed : R.spectralDecomposition
  analyticContinuationClosed : R.analyticContinuation
  boundStateConditionClosed : R.boundStateCondition
  scatteringThresholdClosed : R.scatteringThreshold

def IntegralRepresentationClosed (R : IntegralRepresentation K E) : Prop :=
  R.spectralDecomposition ∧ R.analyticContinuation ∧ R.boundStateCondition ∧ R.scatteringThreshold

theorem integral_representation_closed_from_evidence (R : IntegralRepresentation K E) (Ev : IntegralRepresentationEvidence R) : IntegralRepresentationClosed R :=
  And.intro Ev.spectralDecompositionClosed (And.intro Ev.analyticContinuationClosed (And.intro Ev.boundStateConditionClosed Ev.scatteringThresholdClosed))

end BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean
end HautevilleHouse