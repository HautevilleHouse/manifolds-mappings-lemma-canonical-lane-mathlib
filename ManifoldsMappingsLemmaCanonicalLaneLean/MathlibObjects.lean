import ManifoldsMappingsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ManifoldSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedObject where
  source : ManifoldSpace
  target : ManifoldSpace
  mapping : carrier source → carrier target
  smoothMapping : Prop
  localDiffeomorphism : Prop
  conclusion : smoothMapping ∧ localDiffeomorphism

structure MappingEndgameState where
  object : AdmittedObject

def MappingWitnessClosed (O : AdmittedObject) : Prop :=
  O.smoothMapping ∧ O.localDiffeomorphism

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse