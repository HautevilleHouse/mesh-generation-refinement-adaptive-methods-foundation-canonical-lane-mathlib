import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def meshProjection : Projection MeshEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem mesh_projection_idempotent (x : MeshEndgameState) :
    meshProjection.toFun (meshProjection.toFun x) = meshProjection.toFun x := by
  exact meshProjection.idempotent x

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse