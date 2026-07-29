import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "manifolds-mappings-lemma-canonical-lane",
  theoremName := "Manifolds Mappings Lemma",
  theoremObject := "Canonical manifold mapping results",
  classicalBoundary := "open",
  manifoldConstrainedStatement := "manifold-constrained mapping lemma internalized through admissible class bridge and gate",
  certificateLane := "manifold_constrained",
  carriedRemainder := "carried source boundary remains open"
}

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse