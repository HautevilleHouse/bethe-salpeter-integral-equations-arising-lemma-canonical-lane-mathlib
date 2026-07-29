import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean

structure BetheSalpeterAdmittedObject where
  kernel : Type u
  integralOperator : Type v
  boundStateExistence : Prop
  conclusion : boundStateExistence

structure AdmissibleClass where
  object : BetheSalpeterAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BetheSalpeterWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def BetheSalpeterWitnessClosed (O : BetheSalpeterAdmittedObject) : Prop := O.conclusion

end BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean
end HautevilleHouse