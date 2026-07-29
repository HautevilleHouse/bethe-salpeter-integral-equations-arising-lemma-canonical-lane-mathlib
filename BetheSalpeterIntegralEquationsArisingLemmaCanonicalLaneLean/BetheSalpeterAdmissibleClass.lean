import HautevilleHouse.BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean.BetheSalpeterIntegralEquation

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean

structure BetheSalpeterAdmittedObject where
  kernelPackage : BetheSalpeterKernelPackage
  propagatorPackage : BetheSalpeterPropagatorPackage kernelPackage
  equationPackage : BetheSalpeterEquationPackage kernelPackage propagatorPackage
  conclusion : Prop

structure AdmissibleClass where
  object : BetheSalpeterAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean
end HautevilleHouse