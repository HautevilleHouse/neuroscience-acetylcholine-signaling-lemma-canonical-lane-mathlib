import NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean.HodgkinHuxleyModel

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure SynapticTransmissionPackage where
  vesicleRelease : Prop
  achDiffusion : Prop
  receptorBinding : Prop
  postsynapticPotential : Prop
  signalTermination : Prop

structure SynapticTransmissionEvidence (S : SynapticTransmissionPackage) where
  vesicleReleaseClosed : S.vesicleRelease
  achDiffusionClosed : S.achDiffusion
  receptorBindingClosed : S.receptorBinding
  postsynapticPotentialClosed : S.postsynapticPotential
  signalTerminationClosed : S.signalTermination

def SynapticTransmissionClosed (S : SynapticTransmissionPackage) : Prop :=
  S.vesicleRelease ∧ S.achDiffusion ∧ S.receptorBinding ∧ S.postsynapticPotential ∧ S.signalTermination

theorem synaptic_transmission_closed_from_evidence (S : SynapticTransmissionPackage) (E : SynapticTransmissionEvidence S) :
    SynapticTransmissionClosed S := by
  exact And.intro E.vesicleReleaseClosed (And.intro E.achDiffusionClosed (And.intro E.receptorBindingClosed (And.intro E.postsynapticPotentialClosed E.signalTerminationClosed)))

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse