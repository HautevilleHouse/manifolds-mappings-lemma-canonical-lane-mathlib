import ManifoldsMappingsLemmaCanonicalLaneLean.MathlibObjects

/-!
# Mappings Structure Package
-/

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure MappingsStructurePackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceSmooth : Prop
  targetSmooth : Prop
  mappingsSet : Set (sourceManifold → targetManifold)
  compatibilityCondition : Prop

structure MappingsStructureEvidence (M : MappingsStructurePackage) where
  sourceSmoothClosed : M.sourceSmooth
  targetSmoothClosed : M.targetSmooth
  compatibilityConditionClosed : M.compatibilityCondition

def MappingsStructureClosed (M : MappingsStructurePackage) : Prop :=
  M.sourceSmooth ∧ M.targetSmooth ∧ M.compatibilityCondition

theorem mappings_structure_closed_from_evidence
    (M : MappingsStructurePackage) (E : MappingsStructureEvidence M) :
    MappingsStructureClosed M := by
  exact And.intro E.sourceSmoothClosed (And.intro E.targetSmoothClosed E.compatibilityConditionClosed)

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse