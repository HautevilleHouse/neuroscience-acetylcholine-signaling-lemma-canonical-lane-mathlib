import canonicalLaneMathlib.AdmissibleClass

/-!
# GateLemmas for Neuroscience Acetylcholine Signaling Lemma

Gate closure definitions and theorems.
-/

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact Or.inr A.remainderRecorded

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse