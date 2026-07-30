import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure IonotropicMetabotropicIntegrationPackage where
  nicotinicEPSC : Prop
  muscarinicIPSP : Prop
  temporalSummation : Prop
  spatialIntegration : Prop

structure IonotropicMetabotropicIntegrationEvidence (I : IonotropicMetabotropicIntegrationPackage) where
  nicotinicEPSCClosedTerm : I.nicotinicEPSC
  muscarinicIPSPClosedTerm : I.muscarinicIPSP
  temporalSummationClosedTerm : I.temporalSummation
  spatialIntegrationClosedTerm : I.spatialIntegration

def IonotropicMetabotropicIntegrationClosed (I : IonotropicMetabotropicIntegrationPackage) : Prop :=
  I.nicotinicEPSC ∧ I.muscarinicIPSP ∧ I.temporalSummation ∧ I.spatialIntegration

theorem ionotropic_metabotropic_integration_closed_from_evidence (I : IonotropicMetabotropicIntegrationPackage) (E : IonotropicMetabotropicIntegrationEvidence I) : IonotropicMetabotropicIntegrationClosed I := by
  exact And.intro E.nicotinicEPSCClosedTerm (And.intro E.muscarinicIPSPClosedTerm (And.intro E.temporalSummationClosedTerm E.spatialIntegrationClosedTerm))

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse