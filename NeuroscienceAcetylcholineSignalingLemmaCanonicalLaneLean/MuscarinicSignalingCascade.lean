import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure GProteinCoupling where
  gAlphaType : String
  effectorActivation : Prop
  secondMessengerProduction : Prop

structure MuscarinicSignalingCascadePackage where
  gProteinCouplingClosed : Prop
  downstreamKinaseActivation : Prop
  ionChannelModulation : Prop

structure MuscarinicSignalingCascadeEvidence (M : MuscarinicSignalingCascadePackage) where
  gProteinCouplingClosedTerm : M.gProteinCouplingClosed
  downstreamKinaseActivationClosedTerm : M.downstreamKinaseActivation
  ionChannelModulationClosedTerm : M.ionChannelModulation

def MuscarinicSignalingCascadeClosed (M : MuscarinicSignalingCascadePackage) : Prop :=
  M.gProteinCouplingClosed ∧ M.downstreamKinaseActivation ∧ M.ionChannelModulation

theorem muscarinic_signaling_cascade_closed_from_evidence (M : MuscarinicSignalingCascadePackage) (E : MuscarinicSignalingCascadeEvidence M) : MuscarinicSignalingCascadeClosed M := by
  exact And.intro E.gProteinCouplingClosedTerm (And.intro E.downstreamKinaseActivationClosedTerm E.ionChannelModulationClosedTerm)

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse