import canonicalLaneMathlib.AdmissibleClass

/-!
# Primitive Code Structure with Algebraic Bodies
-/

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

structure CodePrimitive where
  Point : Type
  CodeSpace : Type
  structureMaps : Type
  algebraicClosure : Prop
  algebraicClosureTerm : algebraicClosure

structure AlgebraicCodesPackage where
  code : CodePrimitive
  constraintType : Prop
  constraintTypeTerm : constraintType

def AlgebraicCodesClosed (P : AlgebraicCodesPackage) : Prop :=
  P.code.algebraicClosure ∧ P.constraintType

theorem algebraic_codes_closed_from_primitive (P : AlgebraicCodesPackage) : AlgebraicCodesClosed P := by
  exact And.intro P.code.algebraicClosureTerm P.constraintTypeTerm

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse