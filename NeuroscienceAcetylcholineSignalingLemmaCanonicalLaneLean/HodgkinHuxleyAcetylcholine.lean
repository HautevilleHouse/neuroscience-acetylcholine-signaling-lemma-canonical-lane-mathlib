import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure HodgkinHuxleyAcetylcholine where
  membranePotential : Type u
  ionCurrents : Type v
  achConductance : Prop
  voltageGatedChannels : Prop
  actionPotential : Prop
  synapticIntegration : Prop

def HodgkinHuxleyAcetylcholineClosed (H : HodgkinHuxleyAcetylcholine) : Prop :=
  H.achConductance ∧ H.voltageGatedChannels ∧ H.actionPotential ∧ H.synapticIntegration

theorem hodgkin_huxley_acetylcholine_closed (H : HodgkinHuxleyAcetylcholine) :
    HodgkinHuxleyAcetylcholineClosed H := by
  exact And.intro H.achConductance (And.intro H.voltageGatedChannels (And.intro H.actionPotential H.synapticIntegration))

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse