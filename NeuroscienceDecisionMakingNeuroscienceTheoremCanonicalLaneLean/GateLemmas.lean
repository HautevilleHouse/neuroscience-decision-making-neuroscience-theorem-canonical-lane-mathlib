import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
  gateClosed A := by
  exact A.gateWitness

end HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse