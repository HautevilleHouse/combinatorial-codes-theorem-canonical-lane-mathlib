import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BinaryCode where
  length : Nat
  codewords : List (Fin 2 ^ length)
  nonempty : codewords ≠ []

def hammingDistance (a b : Fin 2 ^ n) : Nat := …

structure CodeAdmittedObject where
  code : BinaryCode
  linear : Prop
  decodingCapacity : Prop
  conclusion : decodingCapacity

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse