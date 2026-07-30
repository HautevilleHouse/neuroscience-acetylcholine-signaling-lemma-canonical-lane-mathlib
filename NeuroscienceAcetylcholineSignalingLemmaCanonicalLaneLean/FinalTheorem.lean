import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean.GateLemmas

/-!
# FinalTheorem for Neuroscience Acetylcholine Signaling Lemma

Defines the constrained acetylcholine closure and the endgame proof.
-/

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

def ConstrainedAcetylcholineClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_acetylcholine_endgame (A : AdmissibleClass) :
    ConstrainedAcetylcholineClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse