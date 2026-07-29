import HautevilleHouse.ManifoldsMappingsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure InverseFunctionPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  mapping : sourceManifold → targetManifold
  point : sourceManifold
  derivativeInvertible : Prop
  localInverseExists : Prop
  inverseSmoothness : Prop

structure InverseFunctionEvidence (P : InverseFunctionPackage) where
  derivativeInvertibleClosed : P.derivativeInvertible
  localInverseExistsClosed : P.localInverseExists
  inverseSmoothnessClosed : P.inverseSmoothness

def InverseFunctionClosed (P : InverseFunctionPackage) : Prop :=
  P.derivativeInvertible ∧ P.localInverseExists ∧ P.inverseSmoothness

theorem inverse_function_closed_from_evidence (P : InverseFunctionPackage)
    (E : InverseFunctionEvidence P) : InverseFunctionClosed P := by
  exact And.intro E.derivativeInvertibleClosed
    (And.intro E.localInverseExistsClosed E.inverseSmoothnessClosed)

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse
