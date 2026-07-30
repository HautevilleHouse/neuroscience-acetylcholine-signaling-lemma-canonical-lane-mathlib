import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure HodgkinHuxleyGating where
  mGate : ℝ
  nGate : ℝ
  hGate : ℝ
  achModulation : ℝ

structure HodgkinHuxleySystem where
  membraneCurrent : ℝ
  sodiumCurrent : ℝ
  potassiumCurrent : ℝ
  leakCurrent : ℝ
  synapticCurrent : ℝ

theorem hodgkin_huxley_closed (g : HodgkinHuxleyGating) (h : HodgkinHuxleySystem) : Prop :=
  h.membraneCurrent = h.sodiumCurrent + h.potassiumCurrent + h.leakCurrent + h.synapticCurrent

theorem ach_modulates_gating (g : HodgkinHuxleyGating) :
  g.achModulation > 0 ∧ g.achModulation < 1 := by
  constructor <;> norm_num

theorem gating_closed (g : HodgkinHuxleyGating) : Prop :=
  g.mGate > 0 ∧ g.nGate > 0 ∧ g.hGate > 0 ∧ g.achModulation > 0

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse