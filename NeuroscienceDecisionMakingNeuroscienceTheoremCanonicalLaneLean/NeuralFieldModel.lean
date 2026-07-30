import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheorem

structure NeuralFieldPackage where
  brainRegion : Type u
  timeDomain : Type v
  membranePotential : Type w
  firingRate : Type x
  connectivityKernel : Type y
  stimulusInput : Type z
  hhIonChannelDynamics : Prop
  hhIonChannelDynamicsTerm : hhIonChannelDynamics

structure NeuralFieldEvidence (N : NeuralFieldPackage) where
  hhIonChannelDynamicsClosed : N.hhIonChannelDynamics

def NeuralFieldClosed (N : NeuralFieldPackage) : Prop :=
  N.hhIonChannelDynamics

theorem neural_field_closed_from_evidence (N : NeuralFieldPackage) (E : NeuralFieldEvidence N) :
    NeuralFieldClosed N := by
  exact E.hhIonChannelDynamicsClosed

end NeuroscienceDecisionMakingNeuroscienceTheorem
end HautevilleHouse