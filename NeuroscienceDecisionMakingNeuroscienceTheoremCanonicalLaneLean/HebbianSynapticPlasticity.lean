import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  preSynapticActivity : Type u
  postSynapticActivity : Type v
  synapticWeight : Type w
  weightUpdateRule : Prop
  correlationDependence : Prop
  stabilityCondition : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  weightUpdateRuleClosed : H.weightUpdateRule
  correlationDependenceClosed : H.correlationDependence
  stabilityConditionClosed : H.stabilityCondition

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.weightUpdateRule ∧ H.correlationDependence ∧ H.stabilityCondition

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.weightUpdateRuleClosed
    (And.intro E.correlationDependenceClosed E.stabilityConditionClosed)

end HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse