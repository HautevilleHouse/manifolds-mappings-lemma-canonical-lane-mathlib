import ManifoldsMappingsLemmaCanonicalLaneLean.RiemannianCurvature

/-!
# Smooth Mappings Package
-/

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure SmoothMappingsPackage {G : RiemannianCurvaturePackage}
    (M : MathlibObjects.MappingEndgameState) where
  sourceManifold : Type u
  targetManifold : Type v
  mappingFunction : sourceManifold → targetManifold
  smoothnessCondition : Prop
  differentialNondegeneracy : Prop
  inverseMappingExists : Prop

structure SmoothMappingsEvidence {G : RiemannianCurvaturePackage}
    {M : MathlibObjects.MappingEndgameState}
    (S : SmoothMappingsPackage M) where
  smoothnessConditionClosed : S.smoothnessCondition
  differentialNondegeneracyClosed : S.differentialNondegeneracy
  inverseMappingExistsClosed : S.inverseMappingExists

def SmoothMappingsClosed {G : RiemannianCurvaturePackage}
    {M : MathlibObjects.MappingEndgameState}
    (S : SmoothMappingsPackage M) : Prop :=
  S.smoothnessCondition ∧ S.differentialNondegeneracy ∧ S.inverseMappingExists

theorem smooth_mappings_closed_from_evidence
    {G : RiemannianCurvaturePackage} {M : MathlibObjects.MappingEndgameState}
    (S : SmoothMappingsPackage M) (E : SmoothMappingsEvidence S) :
    SmoothMappingsClosed S := by
  exact And.intro E.smoothnessConditionClosed
    (And.intro E.differentialNondegeneracyClosed E.inverseMappingExistsClosed)

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse