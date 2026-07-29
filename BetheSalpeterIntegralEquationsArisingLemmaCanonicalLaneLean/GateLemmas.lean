import canonicalLaneMathlib.AdmissibleClass
import BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean
end HautevilleHouse