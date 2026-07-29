import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure ImmersionSubmersionPackage where
  source : Type u
  target : Type v
  sourceSmooth : Prop
  targetSmooth : Prop
  immersion : Prop
  submersion : Prop
  constantRank : Prop
  immersionClosed : immersion
  submersionClosed : submersion
  constantRankClosed : constantRank

structure ImmersionSubmersionEvidence (P : ImmersionSubmersionPackage) where
  immersionClosed : P.immersion
  submersionClosed : P.submersion
  constantRankClosed : P.constantRank

def ImmersionSubmersionClosed (P : ImmersionSubmersionPackage) : Prop :=
  P.immersion ∧ P.submersion ∧ P.constantRank

theorem immersion_submersion_closed_from_evidence
    (P : ImmersionSubmersionPackage) (E : ImmersionSubmersionEvidence P) :
    ImmersionSubmersionClosed P := by
  exact And.intro E.immersionClosed (And.intro E.submersionClosed E.constantRankClosed)

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse