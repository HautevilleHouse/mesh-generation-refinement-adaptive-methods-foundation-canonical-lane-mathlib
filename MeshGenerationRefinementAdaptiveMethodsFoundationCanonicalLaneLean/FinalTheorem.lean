import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

def ConstrainedMeshGenerationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mesh_generation_endgame (A : AdmissibleClass) :
    ConstrainedMeshGenerationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse
