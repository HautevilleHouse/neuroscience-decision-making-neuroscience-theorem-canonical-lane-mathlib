import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

structure HebbianLearningPackage (A : AdmissibleClass) where
  synapsePlasticity : A.object -> Prop
  correlationRule : Prop
  weightDynamics : Prop
  stabilityCondition : Prop
  learningConvergence : Prop

structure HebbianLearningEvidence {A : AdmissibleClass} (H : HebbianLearningPackage A) where
  synapsePlasticityClosed : H.synapsePlasticity
  correlationRuleClosed : H.correlationRule
  weightDynamicsClosed : H.weightDynamics
  stabilityConditionClosed : H.stabilityCondition
  learningConvergenceClosed : H.learningConvergence

def HebbianLearningClosed {A : AdmissibleClass} (H : HebbianLearningPackage A) : Prop :=
  H.synapsePlasticity ∧ H.correlationRule ∧ H.weightDynamics ∧ H.stabilityCondition ∧ H.learningConvergence

theorem hebbian_learning_closed_from_evidence
    {A : AdmissibleClass} (H : HebbianLearningPackage A) (E : HebbianLearningEvidence H) :
    HebbianLearningClosed H := by
  exact And.intro E.synapsePlasticityClosed
    (And.intro E.correlationRuleClosed
      (And.intro E.weightDynamicsClosed
        (And.intro E.stabilityConditionClosed E.learningConvergenceClosed)))

end NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse