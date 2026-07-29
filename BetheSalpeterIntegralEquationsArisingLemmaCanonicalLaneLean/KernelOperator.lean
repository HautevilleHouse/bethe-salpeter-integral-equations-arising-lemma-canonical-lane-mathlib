import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean

structure KernelOperator (T : Type u) (S : Type v) where
  domain : T → Set S
  kernelFunc : T → T → S → ℝ
  symmetry : Prop
  positivity : Prop
  boundedness : Prop

structure KernelOperatorEvidence (K : KernelOperator T S) where
  symmetryClosed : K.symmetry
  positivityClosed : K.positivity
  boundednessClosed : K.boundedness

def KernelOperatorClosed (K : KernelOperator T S) : Prop :=
  K.symmetry ∧ K.positivity ∧ K.boundedness

theorem kernel_operator_closed_from_evidence (K : KernelOperator T S) (E : KernelOperatorEvidence K) : KernelOperatorClosed K :=
  And.intro E.symmetryClosed (And.intro E.positivityClosed E.boundednessClosed)

end BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean
end HautevilleHouse