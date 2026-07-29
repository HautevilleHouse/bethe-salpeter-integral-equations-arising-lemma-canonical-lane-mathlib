import canonicalLaneMathlib.AdmissibleClass
import BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean.BetheSalpeterEquation

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean

structure BetheSalpeterArisingLemmaPackage {K : BetheSalpeterKernel} {E : BetheSalpeterEquation} where
  spectralCondition : Prop
  eigenfunctionExpansion : Prop
  lemmaConclusion : Prop

structure BetheSalpeterArisingLemmaEvidence {K : BetheSalpeterKernel} {E : BetheSalpeterEquation} (L : BetheSalpeterArisingLemmaPackage) where
  spectralConditionClosed : L.spectralCondition
  eigenfunctionExpansionClosed : L.eigenfunctionExpansion
  lemmaConclusionClosed : L.lemmaConclusion

def BetheSalpeterArisingLemmaClosed {K : BetheSalpeterKernel} {E : BetheSalpeterEquation} (L : BetheSalpeterArisingLemmaPackage) : Prop :=
  L.spectralCondition ∧ L.eigenfunctionExpansion ∧ L.lemmaConclusion

theorem bethe_salpeter_arising_lemma_closed_from_evidence {K : BetheSalpeterKernel} {E : BetheSalpeterEquation} (L : BetheSalpeterArisingLemmaPackage) (Ev : BetheSalpeterArisingLemmaEvidence L) : BetheSalpeterArisingLemmaClosed L := by
  exact And.intro Ev.spectralConditionClosed (And.intro Ev.eigenfunctionExpansionClosed Ev.lemmaConclusionClosed)

end BetheSalpeterIntegralEquationsArisingLemmaCanonicalLaneLean
end HautevilleHouse