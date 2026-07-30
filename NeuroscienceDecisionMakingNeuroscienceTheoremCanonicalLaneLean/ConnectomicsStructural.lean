import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

structure ConnectomicsPackage where
  neuronGraph : Type u
  synapseWeight : Type v
  connectivityMatrix : Type w
  graphConnectivityProperties : Prop
  smallWorldProperty : Prop
  modularStructure : Prop
  graphConnectivityPropertiesTerm : graphConnectivityProperties
  smallWorldPropertyTerm : smallWorldProperty
  modularStructureTerm : modularStructure

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  graphConnectivityPropertiesClosed : C.graphConnectivityProperties
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.graphConnectivityProperties ∧ C.smallWorldProperty ∧ C.modularStructure

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
  ConnectomicsClosed C := by
  exact And.intro E.graphConnectivityPropertiesClosed
    (And.intro E.smallWorldPropertyClosed E.modularStructureClosed)

end HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse