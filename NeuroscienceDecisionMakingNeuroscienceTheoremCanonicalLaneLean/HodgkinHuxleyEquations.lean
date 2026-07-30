import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

structure HodgkinHuxleyEquationsPackage where
  membraneVoltage : Type u
  potassiumConductance : Type v
  sodiumConductance : Type w
  leakConductance : Type x
  timeParameter : Type y
  voltageEquation : Prop
  gatingDynamics : Prop
  stimuliApplied : Prop
  equilibriumRestored : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyEquationsPackage) where
  voltageEquationClosed : H.voltageEquation
  gatingDynamicsClosed : H.gatingDynamics
  stimuliAppliedClosed : H.stimuliApplied
  equilibriumRestoredClosed : H.equilibriumRestored

def HodgkinHuxleyClosed (H : HodgkinHuxleyEquationsPackage) : Prop :=
  H.voltageEquation ∧ H.gatingDynamics ∧ H.stimuliApplied ∧ H.equilibriumRestored

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyEquationsPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.voltageEquationClosed (And.intro E.gatingDynamicsClosed
    (And.intro E.stimuliAppliedClosed E.equilibriumRestoredClosed))

end NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse