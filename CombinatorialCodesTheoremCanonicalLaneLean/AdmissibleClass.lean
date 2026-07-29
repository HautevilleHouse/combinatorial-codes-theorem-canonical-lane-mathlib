import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CodesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CodesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse