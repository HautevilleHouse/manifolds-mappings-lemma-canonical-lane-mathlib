import canonicalLaneMathlib.InverseFunctionTheorem

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure ConstantRankPackage where
  source : Type u
  target : Type v
  sourceSmooth : Prop
  targetSmooth : Prop
  constantRankCondition : Prop
  constantRankNormalForm : Prop
  constantRankConditionClosed : constantRankCondition
  constantRankNormalFormClosed : constantRankNormalForm

structure ConstantRankEvidence (P : ConstantRankPackage) where
  constantRankConditionClosed : P.constantRankCondition
  constantRankNormalFormClosed : P.constantRankNormalForm

def ConstantRankClosed (P : ConstantRankPackage) : Prop :=
  P.constantRankCondition ∧ P.constantRankNormalForm

theorem constant_rank_closed_from_evidence
    (P : ConstantRankPackage) (E : ConstantRankEvidence P) :
    ConstantRankClosed P := by
  exact And.intro E.constantRankConditionClosed E.constantRankNormalFormClosed

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse