import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

structure NeuromodulatoryGatingPackage where
  neuromodulatorTypes : Type u
  receptorDynamics : Type v
  modulationEffect : Prop
  gainControl : Prop
  decisionBiasing : Prop

structure NeuromodulatoryGatingEvidence (N : NeuromodulatoryGatingPackage) where
  modulationEffectClosed : N.modulationEffect
  gainControlClosed : N.gainControl
  decisionBiasingClosed : N.decisionBiasing

def NeuromodulatoryGatingClosed (N : NeuromodulatoryGatingPackage) : Prop :=
  N.modulationEffect ∧ N.gainControl ∧ N.decisionBiasing

theorem neuromodulatory_gating_closed_from_evidence (N : NeuromodulatoryGatingPackage) (E : NeuromodulatoryGatingEvidence N) :
    NeuromodulatoryGatingClosed N := by
  exact And.intro E.modulationEffectClosed
    (And.intro E.gainControlClosed E.decisionBiasingClosed)

end HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse