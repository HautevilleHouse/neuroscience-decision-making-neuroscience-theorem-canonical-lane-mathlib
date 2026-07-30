import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

structure DecisionCircuitPackage where
  sensoryInput : Type u
  accumulator : Type v
  thresholdUnit : Type w
  driftDiffusionEquation : Prop
  decisionThreshold : Prop
  reactionTimeDistribution : Prop
  driftDiffusionEquationTerm : driftDiffusionEquation
  decisionThresholdTerm : decisionThreshold
  reactionTimeDistributionTerm : reactionTimeDistribution

structure DecisionCircuitEvidence (D : DecisionCircuitPackage) where
  driftDiffusionEquationClosed : D.driftDiffusionEquation
  decisionThresholdClosed : D.decisionThreshold
  reactionTimeDistributionClosed : D.reactionTimeDistribution

def DecisionCircuitClosed (D : DecisionCircuitPackage) : Prop :=
  D.driftDiffusionEquation ∧ D.decisionThreshold ∧ D.reactionTimeDistribution

theorem decision_circuit_closed_from_evidence (D : DecisionCircuitPackage) (E : DecisionCircuitEvidence D) :
  DecisionCircuitClosed D := by
  exact And.intro E.driftDiffusionEquationClosed
    (And.intro E.decisionThresholdClosed E.reactionTimeDistributionClosed)

end HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse