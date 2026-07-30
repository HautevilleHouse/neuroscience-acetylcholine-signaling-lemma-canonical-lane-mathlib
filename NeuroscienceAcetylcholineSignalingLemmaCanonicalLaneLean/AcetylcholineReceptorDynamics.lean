import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure AcetylcholineReceptorDynamics where
  nicotinicReceptor : Type u
  muscarinicReceptor : Type v
  ligandBinding : Prop
  conformationalChange : Prop
  ionPermeability : Prop
  secondMessengerCascade : Prop
  desensitization : Prop

def AcetylcholineReceptorDynamicsClosed (R : AcetylcholineReceptorDynamics) : Prop :=
  R.ligandBinding ∧ R.conformationalChange ∧ R.ionPermeability ∧ R.secondMessengerCascade ∧ R.desensitization

theorem acetylcholine_receptor_dynamics_closed_iff (R : AcetylcholineReceptorDynamics) :
    AcetylcholineReceptorDynamicsClosed R ↔ True := by
  constructor
  · intro h; trivial
  · intro _; trivial

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse