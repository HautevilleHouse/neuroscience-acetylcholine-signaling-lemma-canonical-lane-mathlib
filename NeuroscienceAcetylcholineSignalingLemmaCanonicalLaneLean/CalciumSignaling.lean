import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure CalciumSignalingModel where
  intraCaConcentration : ℝ
  ip3Level : ℝ
  achReceptorActivation : ℝ

theorem calcium_signaling_closed (c : CalciumSignalingModel) : Prop :=
  c.achReceptorActivation > 0 ∧ c.ip3Level > 0 ∧ c.intraCaConcentration ≥ 0

theorem ach_activates_ip3 (c : CalciumSignalingModel) : c.achReceptorActivation → c.ip3Level > 0 := by
  intro h
  have h' : c.achReceptorActivation > 0 := h
  exact h'

theorem ip3_releases_calcium (c : CalciumSignalingModel) : c.ip3Level > 0 → c.intraCaConcentration ≥ 0 := by
  intro h; exact c.intraCaConcentration.property

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse