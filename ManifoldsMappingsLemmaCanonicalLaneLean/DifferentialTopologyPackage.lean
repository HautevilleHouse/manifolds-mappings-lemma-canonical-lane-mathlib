import HautevilleHouse.ManifoldsMappingsLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Differential Topology Package
-/

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

structure DifferentialTopologyPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  tangentBundle : Type v
  differentialStructure : Prop
  inverseFunctionTheorem : Prop
  implicitFunctionTheorem : Prop

structure DifferentialTopologyEvidence (D : DifferentialTopologyPackage) where
  smoothStructureClosed : D.smoothStructure
  differentialStructureClosed : D.differentialStructure
  inverseFunctionTheoremClosed : D.inverseFunctionTheorem
  implicitFunctionTheoremClosed : D.implicitFunctionTheorem

def DifferentialTopologyClosed (D : DifferentialTopologyPackage) : Prop :=
  D.smoothStructure ∧ D.differentialStructure ∧ D.inverseFunctionTheorem ∧ D.implicitFunctionTheorem

theorem differential_topology_closed_from_evidence (D : DifferentialTopologyPackage) (E : DifferentialTopologyEvidence D) :
    DifferentialTopologyClosed D := by
  exact And.intro E.smoothStructureClosed (And.intro E.differentialStructureClosed (And.intro E.inverseFunctionTheoremClosed E.implicitFunctionTheoremClosed))

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse