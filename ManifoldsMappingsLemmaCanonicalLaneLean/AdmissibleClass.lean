import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ManifoldMappingsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ManifoldMappingsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse