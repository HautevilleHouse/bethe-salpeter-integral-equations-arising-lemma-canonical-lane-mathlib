import HautevilleHouse.BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean.BetheSalpeterKernel

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean

structure BetheSalpeterPropagatorPackage {K : BetheSalpeterKernelPackage} where
  freePropagator : K.momentumSpace → K.momentumSpace → ℂ
  dressedPropagator : K.momentumSpace → K.momentumSpace → ℂ
  propagatorRegularity : Prop
  spectralRepresentation : Prop
  causalityCondition : Prop

structure BetheSalpeterPropagatorEvidence {K : BetheSalpeterKernelPackage} (P : BetheSalpeterPropagatorPackage K) where
  propagatorRegularityClosed : P.propagatorRegularity
  spectralRepresentationClosed : P.spectralRepresentation
  causalityConditionClosed : P.causalityCondition

def BetheSalpeterPropagatorClosed {K : BetheSalpeterKernelPackage} (P : BetheSalpeterPropagatorPackage K) : Prop :=
  P.propagatorRegularity ∧ P.spectralRepresentation ∧ P.causalityCondition

theorem bethe_salpeter_propagator_closed_from_evidence {K : BetheSalpeterKernelPackage}
    (P : BetheSalpeterPropagatorPackage K) (E : BetheSalpeterPropagatorEvidence P) :
    BetheSalpeterPropagatorClosed P := by
  exact And.intro E.propagatorRegularityClosed
    (And.intro E.spectralRepresentationClosed E.causalityConditionClosed)

end BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean
end HautevilleHouse