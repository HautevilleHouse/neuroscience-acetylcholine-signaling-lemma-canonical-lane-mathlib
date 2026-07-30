import canonicalLaneMathlib.AdmissibleClass

/-!
# Neural Field Theory Package
-/

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  integralKernel : Type
  firingRateFunction : ℝ → ℝ
  connectivityKernel : ℝ → ℝ
  stationarySolutions : Prop
  travelingWaves : Prop
  patternFormation : Prop
  acetylcholineNeuromodulation : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  stationarySolutionsClosed : N.stationarySolutions
  travelingWavesClosed : N.travelingWaves
  patternFormationClosed : N.patternFormation
  acetylcholineNeuromodulationClosed : N.acetylcholineNeuromodulation

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.stationarySolutions ∧ N.travelingWaves ∧
  N.patternFormation ∧ N.acetylcholineNeuromodulation

theorem neural_field_theory_closed_from_evidence
    (N : NeuralFieldTheoryPackage) (E : NeuralFieldTheoryEvidence N) :
    NeuralFieldTheoryClosed N := by
  exact And.intro E.stationarySolutionsClosed
    (And.intro E.travelingWavesClosed
      (And.intro E.patternFormationClosed
        E.acetylcholineNeuromodulationClosed))

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse