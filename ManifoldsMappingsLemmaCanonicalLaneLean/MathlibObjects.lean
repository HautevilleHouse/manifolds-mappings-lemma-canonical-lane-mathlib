import ManifoldsMappingsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MappingsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MappingsAdmittedObject where
  space : MappingsSpace
  sourceManifold : Type
  targetManifold : Type
  mapping : sourceManifold → targetManifold
  smoothMapping : Prop
  conclusion : smoothMapping

structure MappingsEndgameState where
  object : MappingsAdmittedObject

def MappingsWitnessClosed (O : MappingsAdmittedObject) : Prop :=
  O.smoothMapping

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse