import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

structure AdvancedCodesPackage (C : CodesPackage) where
  reedSolomonCodes : Prop
  convolutionalCodes : Prop
  turboCodes : Prop
  ldpcCodes : Prop
  polarCodes : Prop
  performanceGuarantees : Prop

structure AdvancedCodesEvidence {C : CodesPackage} (A : AdvancedCodesPackage C) where
  reedSolomonCodesClosed : A.reedSolomonCodes
  convolutionalCodesClosed : A.convolutionalCodes
  turboCodesClosed : A.turboCodes
  ldpcCodesClosed : A.ldpcCodes
  polarCodesClosed : A.polarCodes
  performanceGuaranteesClosed : A.performanceGuarantees

def AdvancedCodesClosed {C : CodesPackage} (A : AdvancedCodesPackage C) : Prop :=
  A.reedSolomonCodes ∧ A.convolutionalCodes ∧ A.turboCodes ∧
  A.ldpcCodes ∧ A.polarCodes ∧ A.performanceGuarantees

theorem advanced_codes_closed_from_evidence
    {C : CodesPackage} (A : AdvancedCodesPackage C)
    (E : AdvancedCodesEvidence A) : AdvancedCodesClosed A := by
  exact And.intro E.reedSolomonCodesClosed
    (And.intro E.convolutionalCodesClosed
      (And.intro E.turboCodesClosed
        (And.intro E.ldpcCodesClosed
          (And.intro E.polarCodesClosed E.performanceGuaranteesClosed))))

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse