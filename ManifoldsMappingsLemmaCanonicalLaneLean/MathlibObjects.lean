import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ManifoldsMappingsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MappingsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MappingsAdmittedObject where
  source : MappingsSpace
  target : MappingsSpace
  mapping : source.carrier → target.carrier
  smooth : Prop
  differentialInjective : Prop
  differentialSurjective : Prop
  conclusion : smooth ∧ differentialInjective ∧ differentialSurjective

structure MappingsEndgameState where
  object : MappingsAdmittedObject

def MappingsWitnessClosed (O : MappingsAdmittedObject) : Prop :=
  O.smooth ∧ O.differentialInjective ∧ O.differentialSurjective

end ManifoldsMappingsLemmaCanonicalLaneLean
end HautevilleHouse