import ManifoldsMappingsLemmaCanonicalLaneLean.Transversality

/-!
# Mappings Lemma Package
-/

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure MappingsLemmaPackage {M : MappingsStructurePackage}
    {I : ImmersionSubmersionPackage M}
    {T : TransversalityPackage M I} where
  localDiffeomorphismCondition : Prop
  inverseFunctionTheoremApplied : Prop
  rankTheoremApplied : Prop
  mappingLemmaStatement : Prop

structure MappingsLemmaEvidence {M : MappingsStructurePackage}
    {I : ImmersionSubmersionPackage M}
    {T : TransversalityPackage M I}
    (L : MappingsLemmaPackage M I T) where
  localDiffeomorphismConditionClosed : L.localDiffeomorphismCondition
  inverseFunctionTheoremAppliedClosed : L.inverseFunctionTheoremApplied
  rankTheoremAppliedClosed : L.rankTheoremApplied
  mappingLemmaStatementClosed : L.mappingLemmaStatement

def MappingsLemmaClosed {M : MappingsStructurePackage}
    {I : ImmersionSubmersionPackage M}
    {T : TransversalityPackage M I}
    (L : MappingsLemmaPackage M I T) : Prop :=
  L.localDiffeomorphismCondition ∧ L.inverseFunctionTheoremApplied ∧
  L.rankTheoremApplied ∧ L.mappingLemmaStatement

theorem mappings_lemma_closed_from_evidence
    {M : MappingsStructurePackage} {I : ImmersionSubmersionPackage M}
    {T : TransversalityPackage M I} (L : MappingsLemmaPackage M I T)
    (E : MappingsLemmaEvidence L) : MappingsLemmaClosed L := by
  exact And.intro E.localDiffeomorphismConditionClosed
    (And.intro E.inverseFunctionTheoremAppliedClosed
      (And.intro E.rankTheoremAppliedClosed E.mappingLemmaStatementClosed))

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse