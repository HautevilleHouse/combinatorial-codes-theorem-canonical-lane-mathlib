import CombinatorialCodesTheoremCanonicalLaneLean.MathlibObjects

/-!
# Code Construction Package
-/

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

structure CodeConstructionPackage {C : CodeExistencePackage}
    {X : CodeExistenceEvidence C} (Y : CodeConstructionsPackage X) where
  codeType : Type u
  length : Nat
  dimension : Nat
  distance : Nat
  generatorMatrix : Matrix (Fin dimension) (Fin length) (Fin 2)
  parityCheck : Matrix (Fin (length - dimension)) (Fin length) (Fin 2)
  codeConstructionValid : Prop
  dimensionConsistent : dimension ≤ length
  distanceBounded : distance ≤ length

def CodeConstructionClosed {C : CodeExistencePackage}
    {X : CodeExistenceEvidence C} {Y : CodeConstructionsPackage X}
    (Z : CodeConstructionPackage Y) : Prop :=
  Z.codeConstructionValid ∧ Z.dimensionConsistent ∧ Z.distanceBounded

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse