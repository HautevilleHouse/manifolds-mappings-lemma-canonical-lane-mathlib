import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

def ConstrainedManifoldMappingsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_manifold_mappings_endgame (A : AdmissibleClass) :
    ConstrainedManifoldMappingsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse