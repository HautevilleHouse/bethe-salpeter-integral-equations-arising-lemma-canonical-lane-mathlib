import canonicalLaneMathlib.AdmissibleClass
import BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean.AdmissibleClass
import BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean.BetheSalpeterKernel

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean

structure BetheSalpeterAnalyticFoundation where
  kernel : BetheSalpeterKernelPackage
  kernelEvidence : BetheSalpeterKernelEvidence kernel
  boundStateExistence : Prop
  boundStateExistenceEvidence : boundStateExistence

def BetheSalpeterAnalyticFoundationClosed (A : BetheSalpeterAnalyticFoundation) : Prop :=
  BetheSalpeterKernelClosed A.kernel ∧ A.boundStateExistence

theorem bethe_salpeter_analytic_foundation_closed_from_evidence
    (A : BetheSalpeterAnalyticFoundation) :
    BetheSalpeterAnalyticFoundationClosed A := by
  exact And.intro (bethe_salpeter_kernel_closed_from_evidence A.kernel A.kernelEvidence)
    A.boundStateExistenceEvidence

end BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean
end HautevilleHouse