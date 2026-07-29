import HautevilleHouse.ManifoldsMappingsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MappingsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse