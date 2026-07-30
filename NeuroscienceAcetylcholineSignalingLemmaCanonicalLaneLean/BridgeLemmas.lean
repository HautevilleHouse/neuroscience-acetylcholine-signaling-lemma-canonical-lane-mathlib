import canonicalLaneMathlib.AdmissibleClass

/-!
# BridgeLemmas for Neuroscience Acetylcholine Signaling Lemma

Bridge closure definitions and theorems.
-/

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact Or.inl A.endpointSatisfied

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse