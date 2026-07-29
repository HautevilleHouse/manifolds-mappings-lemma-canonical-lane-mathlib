import canonicalLaneMathlib.ConstantRankTheorem

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure TransversalityPackage where
  source : Type u
  target : Type v
  submanifold : Type w
  sourceSmooth : Prop
  targetSmooth : Prop
  submanifoldEmbedded : Prop
  transversalCondition : Prop
  intersectionSubmanifold : Prop
  transversalConditionClosed : transversalCondition
  intersectionSubmanifoldClosed : intersectionSubmanifold

structure TransversalityEvidence (P : TransversalityPackage) where
  transversalConditionClosed : P.transversalCondition
  intersectionSubmanifoldClosed : P.intersectionSubmanifold

def TransversalityClosed (P : TransversalityPackage) : Prop :=
  P.transversalCondition ∧ P.intersectionSubmanifold

theorem transversality_closed_from_evidence
    (P : TransversalityPackage) (E : TransversalityEvidence P) :
    TransversalityClosed P := by
  exact And.intro E.transversalConditionClosed E.intersectionSubmanifoldClosed

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse