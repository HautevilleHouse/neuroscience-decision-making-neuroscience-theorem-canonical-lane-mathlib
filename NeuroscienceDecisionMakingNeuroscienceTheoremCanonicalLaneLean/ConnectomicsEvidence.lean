import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

structure ConnectomicsPackage where
  neuronPopulation : Type u
  synapseGraph : Type v
  adjacencyMatrix : Type w
  graphMetrics : Prop
  smallWorldProperty : Prop
  modularStructure : Prop
  hubNeuronIdentification : Prop
  connectomeSynthesis : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  graphMetricsClosed : C.graphMetrics
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure
  hubNeuronIdentificationClosed : C.hubNeuronIdentification
  connectomeSynthesisClosed : C.connectomeSynthesis

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.graphMetrics ∧ C.smallWorldProperty ∧ C.modularStructure ∧ C.hubNeuronIdentification ∧ C.connectomeSynthesis

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) : ConnectomicsClosed C :=
  And.intro E.graphMetricsClosed (And.intro E.smallWorldPropertyClosed (And.intro E.modularStructureClosed (And.intro E.hubNeuronIdentificationClosed E.connectomeSynthesisClosed)))

end NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse
