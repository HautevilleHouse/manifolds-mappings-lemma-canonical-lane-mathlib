import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManifoldsMappingsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ManifoldMappingEndgameState where
  object : ManifoldMappingAdmittedObject

def mappingProjection : Projection ManifoldMappingEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem mapping_projection_idempotent (x : ManifoldMappingEndgameState) :
    mappingProjection.toFun (mappingProjection.toFun x) = mappingProjection.toFun x := by
  exact mappingProjection.idempotent x

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse