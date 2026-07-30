import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MeshSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MeshAdmittedObject where
  space : MeshSpace
  initialTriangulation : Prop
  refinementStrategy : Prop
  adaptiveCriteria : Prop
  qualityGuarantees : Prop
  conclusion : initialTriangulation ∧ refinementStrategy ∧ adaptiveCriteria ∧ qualityGuarantees

structure MeshEndgameState where
  object : MeshAdmittedObject

def MeshWitnessClosed (O : MeshAdmittedObject) : Prop :=
  O.conclusion

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse