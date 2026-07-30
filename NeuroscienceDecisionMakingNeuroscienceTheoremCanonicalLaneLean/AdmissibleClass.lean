import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : NeuroscienceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeuroscienceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

structure NeuroscienceAdmittedObject where
  objectType : Type u
  evidence : Prop
  conclusion : evidence

def NeuroscienceWitnessClosed (O : NeuroscienceAdmittedObject) : Prop :=
  O.evidence

end HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse