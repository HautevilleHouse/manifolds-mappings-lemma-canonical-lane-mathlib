import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure MappingAdmittedObject where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  mapping : sourceManifold → targetManifold
  differentiability : Nat
  conclusion : Prop

structure AdmissibleClass where
  object : MappingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse
