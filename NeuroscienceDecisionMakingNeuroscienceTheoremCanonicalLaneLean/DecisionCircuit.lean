import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheorem

structure DecisionCircuitPackage where
  neuralPopulation : Type u
  evidenceAccumulation : Type v
  decisionThreshold : Type w
  hebbianPlasticity : Prop
  winnerTakeAll : Prop
  hebbianPlasticityTerm : hebbianPlasticity
  winnerTakeAllTerm : winnerTakeAll

structure DecisionCircuitEvidence (D : DecisionCircuitPackage) where
  hebbianPlasticityClosed : D.hebbianPlasticity
  winnerTakeAllClosed : D.winnerTakeAll

def DecisionCircuitClosed (D : DecisionCircuitPackage) : Prop :=
  D.hebbianPlasticity ∧ D.winnerTakeAll

theorem decision_circuit_closed_from_evidence (D : DecisionCircuitPackage) (E : DecisionCircuitEvidence D) :
    DecisionCircuitClosed D := by
  exact And.intro E.hebbianPlasticityClosed E.winnerTakeAllClosed

end NeuroscienceDecisionMakingNeuroscienceTheorem
end HautevilleHouse