import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

structure SyndromeDecodingPackage where
  parityCheckMatrix : Type u
  syndromeLength : Nat
  cosetLeaderSet : Type v
  nearestNeighborDecoding : Prop
  syndromeTableComplete : Prop

structure SyndromeDecodingEvidence (S : SyndromeDecodingPackage) where
  nearestNeighborDecodingClosed : S.nearestNeighborDecoding
  syndromeTableCompleteClosed : S.syndromeTableComplete

def SyndromeDecodingClosed (S : SyndromeDecodingPackage) : Prop :=
  S.nearestNeighborDecoding ∧ S.syndromeTableComplete

theorem syndrome_decoding_closed_from_evidence
    (S : SyndromeDecodingPackage) (E : SyndromeDecodingEvidence S) :
    SyndromeDecodingClosed S := by
  exact And.intro E.nearestNeighborDecodingClosed E.syndromeTableCompleteClosed

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse