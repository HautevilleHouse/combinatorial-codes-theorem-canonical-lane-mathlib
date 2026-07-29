import canonicalLaneMathlib.AdmissibleClass

/-!
# Deep Analytic Construction for Combinatorial Codes Theorem
-/

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

structure CodesDeepConstruction where
  alphaStructure : Prop
  betaStructure : Prop
  gammaStructure : Prop
  deltaStructure : Prop
  epsilonStructure : Prop
  zetaProperty : Prop
  etaProperty : Prop
  thetaProperty : Prop
  iotaProperty : Prop
  kappaProperty : Prop
  lambdaRelation : Prop
  muRelation : Prop
  nuRelation : Prop
  xiRelation : Prop
  omicronRelation : Prop
  alphaStructureTerm : alphaStructure
  betaStructureTerm : betaStructure
  gammaStructureTerm : gammaStructure
  deltaStructureTerm : deltaStructure
  epsilonStructureTerm : epsilonStructure
  zetaPropertyTerm : zetaProperty
  etaPropertyTerm : etaProperty
  thetaPropertyTerm : thetaProperty
  iotaPropertyTerm : iotaProperty
  kappaPropertyTerm : kappaProperty
  lambdaRelationFromConstruction : alphaStructure → betaStructure → gammaStructure → lambdaRelation
  muRelationFromConstruction : deltaStructure → epsilonStructure → zetaProperty → muRelation
  nuRelationFromConstruction : etaProperty → thetaProperty → iotaProperty → nuRelation
  xiRelationFromConstruction : kappaProperty → lambdaRelation → muRelation → xiRelation
  omicronRelationFromConstruction : nuRelation → xiRelation → omicronRelation

def CodesDeepConstruction.toFoundational (C : CodesDeepConstruction) : Prop :=
  C.lambdaRelation ∧ C.muRelation ∧ C.nuRelation ∧ C.xiRelation ∧ C.omicronRelation

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse