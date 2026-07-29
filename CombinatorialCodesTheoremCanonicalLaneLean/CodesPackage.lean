import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

structure CodesPackage where
  alphabet : Type u
  codewords : Set (List alphabet)
  lengthFunction : List alphabet → ℕ
  minimumDistance : ℕ
  errorCorrectionCapability : ℕ
  encodingMap : Type v
  decodingMap : Type w
  linearStructure : Prop
  cyclicStructure : Prop
  generatorPolynomial : Prop

structure CodesEvidence (C : CodesPackage) where
  linearStructureClosed : C.linearStructure
  cyclicStructureClosed : C.cyclicStructure
  generatorPolynomialClosed : C.generatorPolynomial

def CodesClosed (C : CodesPackage) : Prop :=
  C.linearStructure ∧ C.cyclicStructure ∧ C.generatorPolynomial

theorem codes_closed_from_evidence (C : CodesPackage) (E : CodesEvidence C) :
    CodesClosed C := by
  exact And.intro E.linearStructureClosed (And.intro E.cyclicStructureClosed E.generatorPolynomialClosed)

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse