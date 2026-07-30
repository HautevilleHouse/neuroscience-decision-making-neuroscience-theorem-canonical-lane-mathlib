import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

structure ConnectomicsPackage where
  nodeTypes : Type u
  edgeTypes : Type v
  connectivityMatrix : Type w
  decisionCircuitIdentified : Prop
  informationFlow : Prop
  lesionEffect : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  decisionCircuitIdentifiedClosed : C.decisionCircuitIdentified
  informationFlowClosed : C.informationFlow
  lesionEffectClosed : C.lesionEffect

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.decisionCircuitIdentified ∧ C.informationFlow ∧ C.lesionEffect

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
    ConnectomicsClosed C := by
  exact And.intro E.decisionCircuitIdentifiedClosed
    (And.intro E.informationFlowClosed E.lesionEffectClosed)

end HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse