import CombinatorialCodesTheoremCanonicalLaneLean.CanonicalNeighborhoods

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

structure AsymptoticBoundsPackage (C : CanonicalNeighborhoodsPackage) where
  gilbertVarshamovBound : Prop
  mcelieceRodemichRumseyWelchBound : Prop
  upperBoundClosed : Prop
  lowerBoundClosed : Prop

theorem asymptotic_bounds_closed (A : AsymptoticBoundsPackage) : Prop := …

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse