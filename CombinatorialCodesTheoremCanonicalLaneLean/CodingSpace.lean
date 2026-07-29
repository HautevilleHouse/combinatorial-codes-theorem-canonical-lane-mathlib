import canonicalLaneMathlib.AdmissibleClass

/-!
# Coding Space Package
-/

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

structure CodingSpacePackage where
  alphabet : Type u
  alphabetFinite : Fintype alphabet
  blockLength : ℕ
  codeSet : Set (Vector alphabet blockLength)
  codeSize : ℕ
  minimumDistance : ℕ
  codeSetNonempty : codeSet.Nonempty
  minimumDistancePositive : minimumDistance ≥ 1

structure CodingSpaceEvidence (C : CodingSpacePackage) where
  alphabetFiniteClosed : C.alphabetFinite
  codeSetNonemptyClosed : C.codeSetNonempty
  minimumDistancePositiveClosed : C.minimumDistancePositive

def CodingSpaceClosed (C : CodingSpacePackage) : Prop :=
  C.alphabetFinite ∧ C.codeSetNonempty ∧ C.minimumDistancePositive

theorem coding_space_closed_from_evidence (C : CodingSpacePackage) (E : CodingSpaceEvidence C) :
    CodingSpaceClosed C := by
  exact And.intro E.alphabetFiniteClosed (And.intro E.codeSetNonemptyClosed E.minimumDistancePositiveClosed)

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse
