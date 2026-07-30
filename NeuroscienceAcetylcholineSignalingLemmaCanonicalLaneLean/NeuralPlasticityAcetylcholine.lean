import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure LongTermPotentiation where
  nmdaReceptorActivation : Prop
  calciumInflux : Prop
  ampaReceptorInsertion : Prop

structure NeuralPlasticityAcetylcholinePackage where
  ltpInduction : Prop
  ltdInduction : Prop
  cholinergicModulation : Prop

structure NeuralPlasticityAcetylcholineEvidence (N : NeuralPlasticityAcetylcholinePackage) where
  ltpInductionClosedTerm : N.ltpInduction
  ltdInductionClosedTerm : N.ltdInduction
  cholinergicModulationClosedTerm : N.cholinergicModulation

def NeuralPlasticityAcetylcholineClosed (N : NeuralPlasticityAcetylcholinePackage) : Prop :=
  N.ltpInduction ∧ N.ltdInduction ∧ N.cholinergicModulation

theorem neural_plasticity_acetylcholine_closed_from_evidence (N : NeuralPlasticityAcetylcholinePackage) (E : NeuralPlasticityAcetylcholineEvidence N) : NeuralPlasticityAcetylcholineClosed N := by
  exact And.intro E.ltpInductionClosedTerm (And.intro E.ltdInductionClosedTerm E.cholinergicModulationClosedTerm)

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse