import HautevilleHouse.ManifoldsMappingsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

def ConstrainedMappingsClosure (A : ManifoldMappingAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mappings_endgame (A : ManifoldMappingAdmissibleClass) :
    ConstrainedMappingsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse