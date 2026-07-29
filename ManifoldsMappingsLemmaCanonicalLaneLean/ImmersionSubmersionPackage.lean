import HautevilleHouse.ManifoldsMappingsLemmaCanonicalLaneLean.DifferentialTopologyPackage

/-!
# Immersion and Submersion Package
-/

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure ImmersionSubmersionPackage {D : DifferentialTopologyPackage} where
  sourceManifold : Type u
  targetManifold : Type v
  mapping : sourceManifold → targetManifold
  immersionAtPoints : Prop
  submersionAtPoints : Prop
  rankConstant : Prop
  regularValueCondition : Prop

structure ImmersionSubmersionEvidence {D : DifferentialTopologyPackage} (I : ImmersionSubmersionPackage D) where
  immersionAtPointsClosed : I.immersionAtPoints
  submersionAtPointsClosed : I.submersionAtPoints
  rankConstantClosed : I.rankConstant
  regularValueConditionClosed : I.regularValueCondition

def ImmersionSubmersionClosed {D : DifferentialTopologyPackage} (I : ImmersionSubmersionPackage D) : Prop :=
  I.immersionAtPoints ∧ I.submersionAtPoints ∧ I.rankConstant ∧ I.regularValueCondition

theorem immersion_submersion_closed_from_evidence {D : DifferentialTopologyPackage} (I : ImmersionSubmersionPackage D) (E : ImmersionSubmersionEvidence I) :
    ImmersionSubmersionClosed I := by
  exact And.intro E.immersionAtPointsClosed (And.intro E.submersionAtPointsClosed (And.intro E.rankConstantClosed E.regularValueConditionClosed))

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse