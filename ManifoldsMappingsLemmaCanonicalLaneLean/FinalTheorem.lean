import ManifoldsMappingsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

def ConstrainedMappingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mapping_endgame (A : AdmissibleClass) :
    ConstrainedMappingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse