import ManifoldsMappingsLemmaCanonicalLaneLean.SmoothMappingsPackage

/-!
# Inverse Function Theorem Package
-/

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure InverseFunctionTheoremPackage {G : RiemannianCurvaturePackage}
    {M : MathlibObjects.MappingEndgameState}
    (S : SmoothMappingsPackage M) where
  derivativeInvertible : Prop
  localInverseExists : Prop
  localInverseSmooth : Prop

structure InverseFunctionTheoremEvidence {G : RiemannianCurvaturePackage}
    {M : MathlibObjects.MappingEndgameState}
    {S : SmoothMappingsPackage M}
    (I : InverseFunctionTheoremPackage S) where
  derivativeInvertibleClosed : I.derivativeInvertible
  localInverseExistsClosed : I.localInverseExists
  localInverseSmoothClosed : I.localInverseSmooth

def InverseFunctionTheoremClosed {G : RiemannianCurvaturePackage}
    {M : MathlibObjects.MappingEndgameState}
    {S : SmoothMappingsPackage M}
    (I : InverseFunctionTheoremPackage S) : Prop :=
  I.derivativeInvertible ∧ I.localInverseExists ∧ I.localInverseSmooth

theorem inverse_function_theorem_closed_from_evidence
    {G : RiemannianCurvaturePackage} {M : MathlibObjects.MappingEndgameState}
    {S : SmoothMappingsPackage M}
    (I : InverseFunctionTheoremPackage S) (E : InverseFunctionTheoremEvidence I) :
    InverseFunctionTheoremClosed I := by
  exact And.intro E.derivativeInvertibleClosed
    (And.intro E.localInverseExistsClosed E.localInverseSmoothClosed)

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse