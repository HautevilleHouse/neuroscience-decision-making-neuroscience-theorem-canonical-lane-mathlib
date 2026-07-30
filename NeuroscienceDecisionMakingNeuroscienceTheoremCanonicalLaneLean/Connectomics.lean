import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

structure ConnectomicsPackage where
  neuronPopulation : Type u
  synapseGraph : Type v
  connectivityMatrix : Type w
  graphProperties : Prop
  smallWorldProperty : Prop
  modularStructure : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  connectivityMatrixClosed : C.connectivityMatrix
  graphPropertiesClosed : C.graphProperties
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.connectivityMatrix ∧ C.graphProperties ∧ C.smallWorldProperty ∧ C.modularStructure

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage)
    (E : ConnectomicsEvidence C) : ConnectomicsClosed C := by
  exact And.intro E.connectivityMatrixClosed (And.intro E.graphPropertiesClosed
    (And.intro E.smallWorldPropertyClosed E.modularStructureClosed))

end NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse