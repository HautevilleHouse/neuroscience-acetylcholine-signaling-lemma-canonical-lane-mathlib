import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AcetylcholineNeuronState where
  membranePotential : ℝ
  intracellularCa : ℝ
  achReceptorFraction : ℝ
  gProteinActivity : ℝ

def equilibriumPotential : ℝ := -0.065

def receptorBindingModel (state : AcetylcholineNeuronState) : Prop :=
  state.achReceptorFraction ≥ 0 ∧ state.achReceptorFraction ≤ 1

def gProteinCycle (state : AcetylcholineNeuronState) : Prop :=
  state.gProteinActivity ≥ 0

theorem ache_neuron_state_properties (state : AcetylcholineNeuronState) :
  (equilibriumPotential ≤ -0.060) ∧
  (receptorBindingModel state) ∧
  (gProteinCycle state) := by
  constructor
  · linarith
  · constructor
    · unfold receptorBindingModel; constructor
      · exact by norm_num
      · exact by norm_num
    · unfold gProteinCycle; exact by norm_num

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse