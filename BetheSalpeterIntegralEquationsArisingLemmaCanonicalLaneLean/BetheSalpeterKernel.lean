import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean

structure BetheSalpeterKernelPackage where
  momentumSpace : Type u
  topology : TopologicalSpace momentumSpace
  kernelFunction : momentumSpace → momentumSpace → ℂ
  analyticityDomain : Set (momentumSpace × momentumSpace)
  kernelSymmetric : Prop
  kernelFiniteness : Prop

structure BetheSalpeterKernelEvidence (K : BetheSalpeterKernelPackage) where
  kernelSymmetricClosed : K.kernelSymmetric
  kernelFinitenessClosed : K.kernelFiniteness

def BetheSalpeterKernelClosed (K : BetheSalpeterKernelPackage) : Prop :=
  K.kernelSymmetric ∧ K.kernelFiniteness

theorem bethe_salpeter_kernel_closed_from_evidence (K : BetheSalpeterKernelPackage) (E : BetheSalpeterKernelEvidence K) :
    BetheSalpeterKernelClosed K := by
  exact And.intro E.kernelSymmetricClosed E.kernelFinitenessClosed

end BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean
end HautevilleHouse