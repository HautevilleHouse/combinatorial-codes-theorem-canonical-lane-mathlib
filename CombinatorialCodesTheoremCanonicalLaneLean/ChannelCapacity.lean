import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

structure ChannelCapacityPackage (C : CodesPackage) where
  noiseModel : Type u
  mutualInformation : Prop
  shannonCapacity : ℕ
  achievableRate : Prop
  capacityAchievingCodes : Prop

structure ChannelCapacityEvidence {C : CodesPackage} (Ch : ChannelCapacityPackage C) where
  mutualInformationClosed : Ch.mutualInformation
  shannonCapacityClosed : Ch.shannonCapacity
  achievableRateClosed : Ch.achievableRate
  capacityAchievingCodesClosed : Ch.capacityAchievingCodes

def ChannelCapacityClosed {C : CodesPackage} (Ch : ChannelCapacityPackage C) : Prop :=
  Ch.mutualInformation ∧ Ch.shannonCapacity ∧ Ch.achievableRate ∧ Ch.capacityAchievingCodes

theorem channel_capacity_closed_from_evidence
    {C : CodesPackage} (Ch : ChannelCapacityPackage C)
    (E : ChannelCapacityEvidence Ch) : ChannelCapacityClosed Ch := by
  exact And.intro E.mutualInformationClosed
    (And.intro E.shannonCapacityClosed
      (And.intro E.achievableRateClosed E.capacityAchievingCodesClosed))

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse