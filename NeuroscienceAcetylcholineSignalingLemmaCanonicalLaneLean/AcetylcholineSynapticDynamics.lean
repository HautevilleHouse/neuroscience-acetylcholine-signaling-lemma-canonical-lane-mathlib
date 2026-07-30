import canonicalLaneMathlib.AdmissibleClass

/-!
# Acetylcholine Synaptic Dynamics Package
-/

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure AcetylcholineSynapticDynamicsPackage where
  vesicleReleaseModel : Prop
  postsynapticReceptorActivation : Prop
  acetylcholinesteraseActivity : Prop
  synapticClearing : Prop
  quantalReleaseEvidence : Prop
  shortTermPlasticity : Prop
  longTermPotentiation : Prop

structure AcetylcholineSynapticDynamicsEvidence
    (S : AcetylcholineSynapticDynamicsPackage) where
  vesicleReleaseModelClosed : S.vesicleReleaseModel
  postsynapticReceptorActivationClosed : S.postsynapticReceptorActivation
  acetylcholinesteraseActivityClosed : S.acetylcholinesteraseActivity
  synapticClearingClosed : S.synapticClearing
  quantalReleaseEvidenceClosed : S.quantalReleaseEvidence
  shortTermPlasticityClosed : S.shortTermPlasticity
  longTermPotentiationClosed : S.longTermPotentiation

def AcetylcholineSynapticDynamicsClosed
    (S : AcetylcholineSynapticDynamicsPackage) : Prop :=
  S.vesicleReleaseModel ∧ S.postsynapticReceptorActivation ∧
  S.acetylcholinesteraseActivity ∧ S.synapticClearing ∧
  S.quantalReleaseEvidence ∧ S.shortTermPlasticity ∧
  S.longTermPotentiation

theorem acetylcholine_synaptic_dynamics_closed_from_evidence
    (S : AcetylcholineSynapticDynamicsPackage)
    (E : AcetylcholineSynapticDynamicsEvidence S) :
    AcetylcholineSynapticDynamicsClosed S := by
  exact And.intro E.vesicleReleaseModelClosed
    (And.intro E.postsynapticReceptorActivationClosed
      (And.intro E.acetylcholinesteraseActivityClosed
        (And.intro E.synapticClearingClosed
          (And.intro E.quantalReleaseEvidenceClosed
            (And.intro E.shortTermPlasticityClosed
              E.longTermPotentiationClosed)))))

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse