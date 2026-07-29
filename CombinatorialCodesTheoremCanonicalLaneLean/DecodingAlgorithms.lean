import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

structure DecodingAlgorithmPackage (C : CodesPackage) where
  nearestNeighborDecoding : Prop
  syndromeDecoding : Prop
  beliefPropagation : Prop
  complexityMeasure : ℕ
  errorProbability : Prop

structure DecodingAlgorithmEvidence {C : CodesPackage} (D : DecodingAlgorithmPackage C) where
  nearestNeighborDecodingClosed : D.nearestNeighborDecoding
  syndromeDecodingClosed : D.syndromeDecoding
  beliefPropagationClosed : D.beliefPropagation
  complexityMeasureClosed : D.complexityMeasure
  errorProbabilityClosed : D.errorProbability

def DecodingAlgorithmsClosed {C : CodesPackage} (D : DecodingAlgorithmPackage C) : Prop :=
  D.nearestNeighborDecoding ∧ D.syndromeDecoding ∧ D.beliefPropagation ∧
  D.complexityMeasure ∧ D.errorProbability

theorem decoding_algorithms_closed_from_evidence
    {C : CodesPackage} (D : DecodingAlgorithmPackage C)
    (E : DecodingAlgorithmEvidence D) : DecodingAlgorithmsClosed D := by
  exact And.intro E.nearestNeighborDecodingClosed
    (And.intro E.syndromeDecodingClosed
      (And.intro E.beliefPropagationClosed
        (And.intro E.complexityMeasureClosed E.errorProbabilityClosed)))

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse