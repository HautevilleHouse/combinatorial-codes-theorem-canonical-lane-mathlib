import CombinatorialCodesTheoremCanonicalLaneLean.DecodingGeometry

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

structure DecodingNeighborhood where
  coveringRadius : Nat
  disjointness : Prop
  packingDensity : Nat

structure CanonicalNeighborhoodsPackage (D : DecodingGeometryPackage) where
  sphereCovering : Prop
  listDecodingBound : Prop
  minimumDistanceBound : Prop

theorem canonical_neighborhoods_closed (C : CanonicalNeighborhoodsPackage) : Prop := …

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse