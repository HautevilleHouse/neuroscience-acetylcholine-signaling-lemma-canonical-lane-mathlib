import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure SynapticSignalPackage where
  neurotransmitter : Type u
  presynapticReceptor : Type v
  postsynapticReceptor : Type w
  releaseProbability : Prop
  bindingAffinity : Prop
  ionChannelConductance : Prop
  vesicleDynamics : Prop

structure SynapticSignalEvidence (P : SynapticSignalPackage) where
  releaseProbabilityClosed : P.releaseProbability
  bindingAffinityClosed : P.bindingAffinity
  ionChannelConductanceClosed : P.ionChannelConductance
  vesicleDynamicsClosed : P.vesicleDynamics

def SynapticSignalClosed (P : SynapticSignalPackage) : Prop :=
  P.releaseProbability ∧ P.bindingAffinity ∧ P.ionChannelConductance ∧ P.vesicleDynamics

theorem synaptic_signal_closed_from_evidence (P : SynapticSignalPackage)
    (E : SynapticSignalEvidence P) : SynapticSignalClosed P := by
  exact And.intro E.releaseProbabilityClosed
    (And.intro E.bindingAffinityClosed
      (And.intro E.ionChannelConductanceClosed E.vesicleDynamicsClosed))

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse