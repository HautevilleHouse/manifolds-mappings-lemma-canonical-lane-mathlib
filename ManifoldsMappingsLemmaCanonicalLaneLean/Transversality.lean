import ManifoldsMappingsLemmaCanonicalLaneLean.ImmersionSubmersion

/-!
# Transversality Package
-/

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure TransversalityPackage {M : MappingsStructurePackage}
    {I : ImmersionSubmersionPackage M} where
  transversalCondition : Prop
  preimageSubmanifold : Prop
  dimensionFormula : Prop
  stabilityUnderPerturbation : Prop

structure TransversalityEvidence {M : MappingsStructurePackage}
    {I : ImmersionSubmersionPackage M}
    (T : TransversalityPackage M I) where
  transversalConditionClosed : T.transversalCondition
  preimageSubmanifoldClosed : T.preimageSubmanifold
  dimensionFormulaClosed : T.dimensionFormula
  stabilityUnderPerturbationClosed : T.stabilityUnderPerturbation

def TransversalityClosed {M : MappingsStructurePackage}
    {I : ImmersionSubmersionPackage M}
    (T : TransversalityPackage M I) : Prop :=
  T.transversalCondition ∧ T.preimageSubmanifold ∧
  T.dimensionFormula ∧ T.stabilityUnderPerturbation

theorem transversality_closed_from_evidence
    {M : MappingsStructurePackage} {I : ImmersionSubmersionPackage M}
    (T : TransversalityPackage M I) (E : TransversalityEvidence T) :
    TransversalityClosed T := by
  exact And.intro E.transversalConditionClosed
    (And.intro E.preimageSubmanifoldClosed
      (And.intro E.dimensionFormulaClosed E.stabilityUnderPerturbationClosed))

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse