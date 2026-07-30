import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

structure NeuralFieldTheoryPackage (A : AdmissibleClass) where
  populationActivity : A.object -> Prop
  synapticKernel : Prop
  firingRateFunction : Prop
  fieldEquationFormulated : Prop
  patternFormationCondition : Prop

structure NeuralFieldTheoryEvidence {A : AdmissibleClass} (N : NeuralFieldTheoryPackage A) where
  populationActivityClosed : N.populationActivity
  synapticKernelClosed : N.synapticKernel
  firingRateFunctionClosed : N.firingRateFunction
  fieldEquationFormulatedClosed : N.fieldEquationFormulated
  patternFormationConditionClosed : N.patternFormationCondition

def NeuralFieldTheoryClosed {A : AdmissibleClass} (N : NeuralFieldTheoryPackage A) : Prop :=
  N.populationActivity ∧ N.synapticKernel ∧ N.firingRateFunction ∧ N.fieldEquationFormulated ∧ N.patternFormationCondition

theorem neural_field_theory_closed_from_evidence
    {A : AdmissibleClass} (N : NeuralFieldTheoryPackage A) (E : NeuralFieldTheoryEvidence N) :
    NeuralFieldTheoryClosed N := by
  exact And.intro E.populationActivityClosed
    (And.intro E.synapticKernelClosed
      (And.intro E.firingRateFunctionClosed
        (And.intro E.fieldEquationFormulatedClosed E.patternFormationConditionClosed)))

end NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse