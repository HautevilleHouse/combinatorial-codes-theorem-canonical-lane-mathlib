import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Set.Basic
import Mathlib.Data.Vector

/-!
# Coding Objects Package
-/

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

structure CodingSpace where
  carrier : Type
  alphabet : Finset carrier
  length : ℕ

def VectorSpace (C : CodingSpace) : Type := Vector C.carrier C.length

structure Code (C : CodingSpace) where
  codewords : Set (VectorSpace C)
  nonempty : codewords.Nonempty
  minDistance : ℕ
  minDistancePos : minDistance ≥ 1

def CodeBounded (C : CodingSpace) (K : Code C) : Prop :=
  K.codewords.Finite

structure CodingAdmittedObject where
  space : CodingSpace
  code : Code space
  bounded : CodeBounded space code
  conclusion : CodeBounded space code

def CodingWitnessClosed (O : CodingAdmittedObject) : Prop :=
  O.bounded

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse
