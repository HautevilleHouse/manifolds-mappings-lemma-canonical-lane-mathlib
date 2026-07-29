import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : MappingsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MappingsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse