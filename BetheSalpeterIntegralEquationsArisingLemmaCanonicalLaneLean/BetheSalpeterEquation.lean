import canonicalLaneMathlib.AdmissibleClass
import BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean.BetheSalpeterKernel

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean

structure BetheSalpeterEquation {K : BetheSalpeterKernel} where
  integralOperator : Type u
  inhomogeneousTerm : Prop
  homogeneousEquation : Prop
  boundStateCondition : Prop

structure BetheSalpeterEquationEvidence {K : BetheSalpeterKernel} (E : BetheSalpeterEquation) where
  inhomogeneousTermClosed : E.inhomogeneousTerm
  homogeneousEquationClosed : E.homogeneousEquation
  boundStateConditionClosed : E.boundStateCondition

def BetheSalpeterEquationClosed {K : BetheSalpeterKernel} (E : BetheSalpeterEquation) : Prop :=
  E.inhomogeneousTerm ∧ E.homogeneousEquation ∧ E.boundStateCondition

theorem bethe_salpeter_equation_closed_from_evidence {K : BetheSalpeterKernel} (E : BetheSalpeterEquation) (Ev : BetheSalpeterEquationEvidence E) : BetheSalpeterEquationClosed E := by
  exact And.intro Ev.inhomogeneousTermClosed (And.intro Ev.homogeneousEquationClosed Ev.boundStateConditionClosed)

end BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean
end HautevilleHouse