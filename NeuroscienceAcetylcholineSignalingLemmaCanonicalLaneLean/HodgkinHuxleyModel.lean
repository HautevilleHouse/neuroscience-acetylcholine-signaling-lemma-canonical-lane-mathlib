import canonicalLaneMathlib.AdmissibleClass

/-!
# Hodgkin-Huxley Model Package
-/

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : ℝ
  maxConductances : (Na : ℝ) × (K : ℝ) × (L : ℝ)
  reversalPotentials : (Na : ℝ) × (K : ℝ) × (L : ℝ)
  gatingVariables : (m : ℝ → ℝ) × (h : ℝ → ℝ) × (n : ℝ → ℝ)
  ionicCurrents : ℝ → ℝ × ℝ × ℝ
  voltageClampData : Prop
  actionPotentialGenerated : Prop
  parameterFitToData : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  voltageClampDataClosed : H.voltageClampData
  actionPotentialGeneratedClosed : H.actionPotentialGenerated
  parameterFitToDataClosed : H.parameterFitToData

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.voltageClampData ∧ H.actionPotentialGenerated ∧ H.parameterFitToData

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.voltageClampDataClosed
    (And.intro E.actionPotentialGeneratedClosed E.parameterFitToDataClosed)

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse