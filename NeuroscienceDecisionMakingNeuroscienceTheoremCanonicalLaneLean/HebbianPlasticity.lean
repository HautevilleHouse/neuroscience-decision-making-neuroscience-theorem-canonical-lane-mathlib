import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapseStrength : Type u
  preSynapticActivity : Type v
  postSynapticActivity : Type w
  weightUpdateRule : Prop
  correlationDetected : Prop
  learningRate : Prop
  weightUpdateRuleTerm : weightUpdateRule
  correlationDetectedTerm : correlationDetected
  learningRateTerm : learningRate

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  weightUpdateRuleClosed : H.weightUpdateRule
  correlationDetectedClosed : H.correlationDetected
  learningRateClosed : H.learningRate

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.weightUpdateRule ∧ H.correlationDetected ∧ H.learningRate

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
  HebbianPlasticityClosed H := by
  exact And.intro E.weightUpdateRuleClosed
    (And.intro E.correlationDetectedClosed E.learningRateClosed)

end HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse