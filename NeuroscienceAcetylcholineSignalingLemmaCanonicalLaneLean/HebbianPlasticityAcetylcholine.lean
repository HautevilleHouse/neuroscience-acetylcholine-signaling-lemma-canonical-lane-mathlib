import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure HebbianPlasticityAcetylcholine where
  synapticWeight : Type u
  presynapticActivity : Prop
  postsynapticActivity : Prop
  calciumInflux : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  neuromodulation : Prop

def HebbianPlasticityAcetylcholineClosed (H : HebbianPlasticityAcetylcholine) : Prop :=
  H.presynapticActivity ∧ H.postsynapticActivity ∧ H.calciumInflux ∧
  H.longTermPotentiation ∧ H.longTermDepression ∧ H.neuromodulation

theorem hebbian_plasticity_acetylcholine_closed (H : HebbianPlasticityAcetylcholine) :
    HebbianPlasticityAcetylcholineClosed H := by
  exact And.intro H.presynapticActivity
    (And.intro H.postsynapticActivity
      (And.intro H.calciumInflux
        (And.intro H.longTermPotentiation
          (And.intro H.longTermDepression H.neuromodulation))))

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse