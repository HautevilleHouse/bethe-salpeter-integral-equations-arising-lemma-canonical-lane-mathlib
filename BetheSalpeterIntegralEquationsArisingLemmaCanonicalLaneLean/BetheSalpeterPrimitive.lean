import canonicalLaneMathlib.AdmissibleClass
import BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean

structure PrimitiveBetheSalpeterSystem where
  space : Type u
  timeVariable : Type v
  kernelFunction : Type w
  integralEquation : Prop
  solutionExistence : Prop
  solutionUniqueness : Prop
  integralEquationTerm : integralEquation
  solutionExistenceTerm : solutionExistence
  solutionUniquenessTerm : solutionUniqueness

structure PrimitiveBetheSalpeterEvidence (P : PrimitiveBetheSalpeterSystem) where
  integralEquationClosed : P.integralEquation
  solutionExistenceClosed : P.solutionExistence
  solutionUniquenessClosed : P.solutionUniqueness

def PrimitiveBetheSalpeterClosed (P : PrimitiveBetheSalpeterSystem) : Prop :=
  P.integralEquation ∧ P.solutionExistence ∧ P.solutionUniqueness

theorem primitive_bethe_salpeter_closed_from_evidence
    (P : PrimitiveBetheSalpeterSystem) (E : PrimitiveBetheSalpeterEvidence P) :
    PrimitiveBetheSalpeterClosed P := by
  exact And.intro E.integralEquationClosed (And.intro E.solutionExistenceClosed E.solutionUniquenessClosed)

end BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean
end HautevilleHouse