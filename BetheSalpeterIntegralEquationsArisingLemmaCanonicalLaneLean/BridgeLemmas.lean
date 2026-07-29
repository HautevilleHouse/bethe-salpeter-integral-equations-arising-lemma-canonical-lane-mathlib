import canonicalLaneMathlib.AdmissibleClass
import BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BetheSalpeterWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean
end HautevilleHouse