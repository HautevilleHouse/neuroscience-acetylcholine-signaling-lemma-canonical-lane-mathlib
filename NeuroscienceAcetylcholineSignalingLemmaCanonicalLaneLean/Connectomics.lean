import canonicalLaneMathlib.AdmissibleClass

/-!
# Connectomics Package
-/

namespace HautevilleHouse
namespace NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  structuralConnectivity : Prop
  functionalConnectivity : Prop
  networkMotifs : Prop
  smallWorldProperty : Prop
  hubIdentification : Prop
  acetylcholineProjectionSystems : Prop
  neuromodulatoryConnectome : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  structuralConnectivityClosed : C.structuralConnectivity
  functionalConnectivityClosed : C.functionalConnectivity
  networkMotifsClosed : C.networkMotifs
  smallWorldPropertyClosed : C.smallWorldProperty
  hubIdentificationClosed : C.hubIdentification
  acetylcholineProjectionSystemsClosed : C.acetylcholineProjectionSystems
  neuromodulatoryConnectomeClosed : C.neuromodulatoryConnectome

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.structuralConnectivity ∧ C.functionalConnectivity ∧
  C.networkMotifs ∧ C.smallWorldProperty ∧
  C.hubIdentification ∧ C.acetylcholineProjectionSystems ∧
  C.neuromodulatoryConnectome

theorem connectomics_closed_from_evidence
    (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
    ConnectomicsClosed C := by
  exact And.intro E.structuralConnectivityClosed
    (And.intro E.functionalConnectivityClosed
      (And.intro E.networkMotifsClosed
        (And.intro E.smallWorldPropertyClosed
          (And.intro E.hubIdentificationClosed
            (And.intro E.acetylcholineProjectionSystemsClosed
              E.neuromodulatoryConnectomeClosed)))))

end NeuroscienceAcetylcholineSignalingLemmaCanonicalLaneLean
end HautevilleHouse