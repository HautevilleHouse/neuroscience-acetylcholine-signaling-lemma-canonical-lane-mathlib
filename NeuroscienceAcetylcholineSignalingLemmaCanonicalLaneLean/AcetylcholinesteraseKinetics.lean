import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure MichaelisMentenKinetics where
  km : Float
  vmax : Float
  turnoverNumber : Float

structure AcetylcholinesteraseKineticsPackage where
  hydrolysisRate : Prop
  inhibitorBinding : Prop
  reactivationDynamics : Prop

structure AcetylcholinesteraseKineticsEvidence (A : AcetylcholinesteraseKineticsPackage) where
  hydrolysisRateClosedTerm : A.hydrolysisRate
  inhibitorBindingClosedTerm : A.inhibitorBinding
  reactivationDynamicsClosedTerm : A.reactivationDynamics

def AcetylcholinesteraseKineticsClosed (A : AcetylcholinesteraseKineticsPackage) : Prop :=
  A.hydrolysisRate ∧ A.inhibitorBinding ∧ A.reactivationDynamics

theorem acetylcholinesterase_kinetics_closed_from_evidence (A : AcetylcholinesteraseKineticsPackage) (E : AcetylcholinesteraseKineticsEvidence A) : AcetylcholinesteraseKineticsClosed A := by
  exact And.intro E.hydrolysisRateClosedTerm (And.intro E.inhibitorBindingClosedTerm E.reactivationDynamicsClosedTerm)

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse