import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

structure CodeAdmittedObject where
  alphabet : Type u
  alphabetFinite : Fintype alphabet
  codeLength : Nat
  codeFamily : Set (alphabet ^ codeLength)
  minimumDistance : Nat
  isLinear : Prop
  dimension : Nat
  
structure CodesAdmissibleClass where
  object : CodeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : CodesAdmissibleClass) : Prop :=
  CodeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse