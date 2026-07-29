import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean

structure BetheSalpeterKernelPackage where
  momentumSpace : Type u
  twoBodyPropagator : momentumSpace → momentumSpace → Prop
  interactionKernel : momentumSpace → momentumSpace → Prop
  kernelSymmetric : Prop
  kernelRegularity : Prop
  integralOperatorBounded : Prop

structure BetheSalpeterKernelEvidence (K : BetheSalpeterKernelPackage) where
  kernelSymmetricClosed : K.kernelSymmetric
  kernelRegularityClosed : K.kernelRegularity
  integralOperatorBoundedClosed : K.integralOperatorBounded

def BetheSalpeterKernelClosed (K : BetheSalpeterKernelPackage) : Prop :=
  K.kernelSymmetric ∧ K.kernelRegularity ∧ K.integralOperatorBounded

theorem bethe_salpeter_kernel_closed_from_evidence
    (K : BetheSalpeterKernelPackage) (E : BetheSalpeterKernelEvidence K) :
    BetheSalpeterKernelClosed K := by
  exact And.intro E.kernelSymmetricClosed
    (And.intro E.kernelRegularityClosed E.integralOperatorBoundedClosed)

structure BetheSalpeterEquationPackage {K : BetheSalpeterKernelPackage} where
  waveFunction : Type v
  integralEquation : waveFunction → waveFunction → Prop
  boundStateCondition : Prop
  spectrumDiscrete : Prop
  fredholmAlternative : Prop

structure BetheSalpeterEquationEvidence {K : BetheSalpeterKernelPackage}
    (Eq : BetheSalpeterEquationPackage K) where
  integralEquationClosed : Eq.integralEquation
  boundStateConditionClosed : Eq.boundStateCondition
  spectrumDiscreteClosed : Eq.spectrumDiscrete
  fredholmAlternativeClosed : Eq.fredholmAlternative

def BetheSalpeterEquationClosed {K : BetheSalpeterKernelPackage}
    (Eq : BetheSalpeterEquationPackage K) : Prop :=
  Eq.integralEquation ∧ Eq.boundStateCondition ∧
  Eq.spectrumDiscrete ∧ Eq.fredholmAlternative

theorem bethe_salpeter_equation_closed_from_evidence
    {K : BetheSalpeterKernelPackage} (Eq : BetheSalpeterEquationPackage K)
    (E : BetheSalpeterEquationEvidence Eq) : BetheSalpeterEquationClosed Eq := by
  exact And.intro E.integralEquationClosed
    (And.intro E.boundStateConditionClosed
      (And.intro E.spectrumDiscreteClosed E.fredholmAlternativeClosed))

end BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean
end HautevilleHouse