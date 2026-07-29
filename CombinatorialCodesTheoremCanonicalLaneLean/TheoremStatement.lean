import HautevilleHouse.CombinatorialCodesTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

structure CodesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CodeAdmittedObject where
  space : CodesSpace
  finiteGraph : Prop
  codeProperty : Prop
  conclusion : codeProperty

def CodeWitnessClosed (O : CodeAdmittedObject) : Prop :=
  O.codeProperty

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse