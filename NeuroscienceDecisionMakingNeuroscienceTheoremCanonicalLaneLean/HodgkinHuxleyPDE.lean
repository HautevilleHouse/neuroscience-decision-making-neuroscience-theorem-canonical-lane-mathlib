import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

structure HodgkinHuxleyPDEPackage (A : AdmissibleClass) where
  membranePotential : A.object -> Prop
  sodiumChannelDynamics : Prop
  potassiumChannelDynamics : Prop
  leakChannelDynamics : Prop
  pdeSystemFormulated : Prop

structure HodgkinHuxleyPDEEvidence {A : AdmissibleClass} (H : HodgkinHuxleyPDEPackage A) where
  membranePotentialClosed : H.membranePotential
  sodiumChannelDynamicsClosed : H.sodiumChannelDynamics
  potassiumChannelDynamicsClosed : H.potassiumChannelDynamics
  leakChannelDynamicsClosed : H.leakChannelDynamics
  pdeSystemFormulatedClosed : H.pdeSystemFormulated

def HodgkinHuxleyPDEClosed {A : AdmissibleClass} (H : HodgkinHuxleyPDEPackage A) : Prop :=
  H.membranePotential ∧ H.sodiumChannelDynamics ∧ H.potassiumChannelDynamics ∧ H.leakChannelDynamics ∧ H.pdeSystemFormulated

theorem hodgkin_huxley_pde_closed_from_evidence
    {A : AdmissibleClass} (H : HodgkinHuxleyPDEPackage A) (E : HodgkinHuxleyPDEEvidence H) :
    HodgkinHuxleyPDEClosed H := by
  exact And.intro E.membranePotentialClosed
    (And.intro E.sodiumChannelDynamicsClosed
      (And.intro E.potassiumChannelDynamicsClosed
        (And.intro E.leakChannelDynamicsClosed E.pdeSystemFormulatedClosed)))

end NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse