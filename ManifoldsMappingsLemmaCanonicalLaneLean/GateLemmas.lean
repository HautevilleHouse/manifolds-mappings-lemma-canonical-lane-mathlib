import HautevilleHouse.ManifoldsMappingsLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

def gateClosed (A : ManifoldMappingAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ManifoldMappingAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse