import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NeuroscienceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
  bridgeClosed A := by
  exact A.object.conclusion

end HautevilleHouse.NeuroscienceDecisionMakingNeuroscienceTheoremCanonicalLaneLean
end HautevilleHouse