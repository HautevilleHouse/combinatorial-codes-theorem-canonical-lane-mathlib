import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

def ConstrainedCodesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_codes_endgame (A : AdmissibleClass) :
    ConstrainedCodesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse