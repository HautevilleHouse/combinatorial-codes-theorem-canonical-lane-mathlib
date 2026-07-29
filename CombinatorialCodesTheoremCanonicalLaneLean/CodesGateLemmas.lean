import CombinatorialCodesTheoremCanonicalLaneLean.CodesBridgeLemmas

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

def gateClosed (A : CodesAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CodesAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse