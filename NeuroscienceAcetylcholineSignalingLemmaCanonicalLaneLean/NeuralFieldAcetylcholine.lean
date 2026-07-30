import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure NeuralFieldAcetylcholine where
  corticalRegion : Type u
  firingRate : Type v
  achModulatedCoupling : Prop
  excitatoryInhibitoryBalance : Prop
  oscillations : Prop
  workingMemory : Prop

def NeuralFieldAcetylcholineClosed (N : NeuralFieldAcetylcholine) : Prop :=
  N.achModulatedCoupling ∧ N.excitatoryInhibitoryBalance ∧ N.oscillations ∧ N.workingMemory

theorem neural_field_acetylcholine_closed (N : NeuralFieldAcetylcholine) :
    NeuralFieldAcetylcholineClosed N := by
  exact And.intro N.achModulatedCoupling
    (And.intro N.excitatoryInhibitoryBalance
      (And.intro N.oscillations N.workingMemory))

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse