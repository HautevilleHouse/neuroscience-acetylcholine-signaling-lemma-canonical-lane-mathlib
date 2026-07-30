import canonicalLaneMathlib.AdmissibleClass

/-!
# AdmissibleClass for Neuroscience Acetylcholine Signaling Lemma

Defines the admissible class structure for the acetylcholine signaling domain.
Uses the canonical AdmissibleClass from the common core.
-/

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AcetylcholineNeuronModel where
  membranePotential : ℝ
  receptorState : ℝ
  channelConductance : ℝ
  modulationFactor : ℝ
  restingPotential : ℝ
  actionThreshold : ℝ

structure AcetylcholineEndgameState where
  admissibleObject : AdmissibleClass
  neuron : AcetylcholineNeuronModel

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse