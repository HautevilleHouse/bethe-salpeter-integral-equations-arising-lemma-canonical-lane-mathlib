import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean

structure GreenFunction (T : Type u) (S : Type v) where
  momentumSpace : T → T → ℂ
  positionSpace : S → S → ℂ
  analyticPoles : Prop
  asymptoticBehavior : Prop
  causalStructure : Prop

structure GreenFunctionEvidence (G : GreenFunction T S) where
  analyticPolesClosed : G.analyticPoles
  asymptoticBehaviorClosed : G.asymptoticBehavior
  causalStructureClosed : G.causalStructure

def GreenFunctionClosed (G : GreenFunction T S) : Prop :=
  G.analyticPoles ∧ G.asymptoticBehavior ∧ G.causalStructure

theorem green_function_closed_from_evidence (G : GreenFunction T S) (E : GreenFunctionEvidence G) : GreenFunctionClosed G :=
  And.intro E.analyticPolesClosed (And.intro E.asymptoticBehaviorClosed E.causalStructureClosed)

end BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean
end HautevilleHouse