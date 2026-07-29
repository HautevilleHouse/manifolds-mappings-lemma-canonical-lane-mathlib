import ManifoldsMappingsLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MappingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse