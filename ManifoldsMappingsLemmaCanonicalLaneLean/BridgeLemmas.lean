import HautevilleHouse.ManifoldsMappingsLemmaCanonicalLaneLean.MappingAdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse
