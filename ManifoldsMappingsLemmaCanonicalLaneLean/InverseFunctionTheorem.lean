import canonicalLaneMathlib.ImmersionSubmersionFoundations

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure InverseFunctionPackage where
  source : Type u
  target : Type v
  sourceSmooth : Prop
  targetSmooth : Prop
  derivativeInvertibleAtPoint : Prop
  localDiffeomorphism : Prop
  derivativeInvertibleClosed : derivativeInvertibleAtPoint
  localDiffeomorphismClosed : localDiffeomorphism

structure InverseFunctionEvidence (P : InverseFunctionPackage) where
  derivativeInvertibleClosed : P.derivativeInvertibleAtPoint
  localDiffeomorphismClosed : P.localDiffeomorphism

def InverseFunctionClosed (P : InverseFunctionPackage) : Prop :=
  P.derivativeInvertibleAtPoint ∧ P.localDiffeomorphism

theorem inverse_function_closed_from_evidence
    (P : InverseFunctionPackage) (E : InverseFunctionEvidence P) :
    InverseFunctionClosed P := by
  exact And.intro E.derivativeInvertibleClosed E.localDiffeomorphismClosed

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse