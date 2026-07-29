import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure ManifoldMappingAdmittedObject where
  sourceManifold : Type u
  targetManifold : Type v
  mapping : sourceManifold → targetManifold
  mappingSmooth : Prop
  mappingProper : Prop
  mappingHadamard : Prop
  conclusion : mappingHadamard

structure ManifoldMappingAdmissibleClass where
  object : ManifoldMappingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : ManifoldMappingAdmissibleClass) : Prop := 
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse