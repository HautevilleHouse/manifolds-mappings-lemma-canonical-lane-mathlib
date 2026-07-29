import ManifoldsMappingsLemmaCanonicalLaneLean.MappingsStructure

/-!
# Immersion and Submersion Package
-/

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure ImmersionSubmersionPackage {M : MappingsStructurePackage} where
  immersionCondition : Prop
  submersionCondition : Prop
  constantRankCondition : Prop
  localNormalForm : Prop

structure ImmersionSubmersionEvidence {M : MappingsStructurePackage}
    (I : ImmersionSubmersionPackage M) where
  immersionConditionClosed : I.immersionCondition
  submersionConditionClosed : I.submersionCondition
  constantRankConditionClosed : I.constantRankCondition
  localNormalFormClosed : I.localNormalForm

def ImmersionSubmersionClosed {M : MappingsStructurePackage}
    (I : ImmersionSubmersionPackage M) : Prop :=
  I.immersionCondition ∧ I.submersionCondition ∧
  I.constantRankCondition ∧ I.localNormalForm

theorem immersion_submersion_closed_from_evidence
    {M : MappingsStructurePackage} (I : ImmersionSubmersionPackage M)
    (E : ImmersionSubmersionEvidence I) : ImmersionSubmersionClosed I := by
  exact And.intro E.immersionConditionClosed
    (And.intro E.submersionConditionClosed
      (And.intro E.constantRankConditionClosed E.localNormalFormClosed))

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse