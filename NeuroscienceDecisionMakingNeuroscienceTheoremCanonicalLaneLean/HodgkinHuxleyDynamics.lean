import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  sodiumChannel : Type v
  potassiumChannel : Type w
  leakageChannel : Type x
  conductanceEquations : Prop
  capacitanceEquation : Prop
  actionPotentialGenerated : Prop
  conductanceEquationsTerm : conductanceEquations
  capacitanceEquationTerm : capacitanceEquation
  actionPotentialGeneratedTerm : actionPotentialGenerated

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  conductanceEquationsClosed : H.conductanceEquations
  capacitanceEquationClosed : H.capacitanceEquation
  actionPotentialGeneratedClosed : H.actionPotentialGenerated

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.conductanceEquations ∧ H.capacitanceEquation ∧ H.actionPotentialGenerated

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
  HodgkinHuxleyClosed H := by
  exact And.intro E.conductanceEquationsClosed
    (And.intro E.capacitanceEquationClosed E.actionPotentialGeneratedClosed)

end HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse