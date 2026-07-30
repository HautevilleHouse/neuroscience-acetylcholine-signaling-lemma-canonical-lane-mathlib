import canonicalLaneMathlib.AdmissibleClass

/-!
# Hebbian Plasticity Package
-/

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  spikeTimingDependentPlasticity : Prop
  longTermDepression : Prop
  longTermPotentiationMechanism : Prop
  calciumDynamics : Prop
  synapticScaling : Prop
  metaplasticity : Prop
  acetylcholineModulation : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  spikeTimingDependentPlasticityClosed : H.spikeTimingDependentPlasticity
  longTermDepressionClosed : H.longTermDepression
  longTermPotentiationMechanismClosed : H.longTermPotentiationMechanism
  calciumDynamicsClosed : H.calciumDynamics
  synapticScalingClosed : H.synapticScaling
  metaplasticityClosed : H.metaplasticity
  acetylcholineModulationClosed : H.acetylcholineModulation

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.spikeTimingDependentPlasticity ∧ H.longTermDepression ∧
  H.longTermPotentiationMechanism ∧ H.calciumDynamics ∧
  H.synapticScaling ∧ H.metaplasticity ∧ H.acetylcholineModulation

theorem hebbian_plasticity_closed_from_evidence
    (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.spikeTimingDependentPlasticityClosed
    (And.intro E.longTermDepressionClosed
      (And.intro E.longTermPotentiationMechanismClosed
        (And.intro E.calciumDynamicsClosed
          (And.intro E.synapticScalingClosed
            (And.intro E.metaplasticityClosed
              E.acetylcholineModulationClosed)))))

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse