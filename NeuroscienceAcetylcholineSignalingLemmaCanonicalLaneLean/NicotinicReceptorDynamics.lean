import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure NicotinicReceptorChannel where
  subunitComposition : String
  conductance : Float
  openProbability : Float
  desensitizationRate : Float

structure NicotinicReceptorDynamicsPackage where
  subunitCompositionClosed : Prop
  conductanceClosed : Prop
  openProbabilityClosed : Prop
  desensitizationRateClosed : Prop

structure NicotinicReceptorDynamicsEvidence (N : NicotinicReceptorDynamicsPackage) where
  subunitCompositionClosedTerm : N.subunitCompositionClosed
  conductanceClosedTerm : N.conductanceClosed
  openProbabilityClosedTerm : N.openProbabilityClosed
  desensitizationRateClosedTerm : N.desensitizationRateClosed

def NicotinicReceptorDynamicsClosed (N : NicotinicReceptorDynamicsPackage) : Prop :=
  N.subunitCompositionClosed ∧ N.conductanceClosed ∧ N.openProbabilityClosed ∧ N.desensitizationRateClosed

theorem nicotinic_receptor_dynamics_closed_from_evidence (N : NicotinicReceptorDynamicsPackage) (E : NicotinicReceptorDynamicsEvidence N) : NicotinicReceptorDynamicsClosed N := by
  exact And.intro E.subunitCompositionClosedTerm (And.intro E.conductanceClosedTerm (And.intro E.openProbabilityClosedTerm E.desensitizationRateClosedTerm))

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse