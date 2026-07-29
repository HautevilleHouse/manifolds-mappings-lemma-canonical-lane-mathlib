import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManifoldsMappingsLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

def bridgeClosed (A : ManifoldMappingAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : ManifoldMappingAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse