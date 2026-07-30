import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure SNAREComplex where
  synaptobrevin : Prop
  syntaxin : Prop
  snap25 : Prop

structure SynapticVesicleExocytosisPackage where
  vesicleDocking : Prop
  vesiclePriming : Prop
  vesicleFusion : Prop
  calciumTriggeredRelease : Prop

structure SynapticVesicleExocytosisEvidence (S : SynapticVesicleExocytosisPackage) where
  vesicleDockingClosedTerm : S.vesicleDocking
  vesiclePrimingClosedTerm : S.vesiclePriming
  vesicleFusionClosedTerm : S.vesicleFusion
  calciumTriggeredReleaseClosedTerm : S.calciumTriggeredRelease

def SynapticVesicleExocytosisClosed (S : SynapticVesicleExocytosisPackage) : Prop :=
  S.vesicleDocking ∧ S.vesiclePriming ∧ S.vesicleFusion ∧ S.calciumTriggeredRelease

theorem synaptic_vesicle_exocytosis_closed_from_evidence (S : SynapticVesicleExocytosisPackage) (E : SynapticVesicleExocytosisEvidence S) : SynapticVesicleExocytosisClosed S := by
  exact And.intro E.vesicleDockingClosedTerm (And.intro E.vesiclePrimingClosedTerm (And.intro E.vesicleFusionClosedTerm E.calciumTriggeredReleaseClosedTerm))

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse