import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheorem

structure ConnectomicsInferencePackage where
  connectomeGraph : Type u
  tractographyData : Type v
  graphLaplacian : Type w
  functionalConnectivity : Prop
  smallWorldProperty : Prop
  functionalConnectivityTerm : functionalConnectivity
  smallWorldPropertyTerm : smallWorldProperty

structure ConnectomicsInferenceEvidence (C : ConnectomicsInferencePackage) where
  functionalConnectivityClosed : C.functionalConnectivity
  smallWorldPropertyClosed : C.smallWorldProperty

def ConnectomicsInferenceClosed (C : ConnectomicsInferencePackage) : Prop :=
  C.functionalConnectivity ∧ C.smallWorldProperty

theorem connectomics_inference_closed_from_evidence (C : ConnectomicsInferencePackage) (E : ConnectomicsInferenceEvidence C) :
    ConnectomicsInferenceClosed C := by
  exact And.intro E.functionalConnectivityClosed E.smallWorldPropertyClosed

end NeuroscienceDecisionMakingNeuroscienceTheorem
end HautevilleHouse