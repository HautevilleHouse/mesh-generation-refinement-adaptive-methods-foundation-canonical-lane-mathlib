import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure MeshRefinementStrategiesPackage where
  hRefinement : Prop
  pRefinement : Prop
  hpRefinement : Prop
  rRefinement : Prop
  refinementClosed : Prop

structure MeshRefinementStrategiesEvidence (M : MeshRefinementStrategiesPackage) where
  hRefinementClosed : M.hRefinement
  pRefinementClosed : M.pRefinement
  hpRefinementClosed : M.hpRefinement
  rRefinementClosed : M.rRefinement
  refinementClosed : M.refinementClosed

def MeshRefinementStrategiesClosed (M : MeshRefinementStrategiesPackage) : Prop :=
  M.hRefinement ∧ M.pRefinement ∧ M.hpRefinement ∧ M.rRefinement ∧ M.refinementClosed

theorem mesh_refinement_strategies_closed_from_evidence
    (M : MeshRefinementStrategiesPackage) (E : MeshRefinementStrategiesEvidence M) :
    MeshRefinementStrategiesClosed M := by
  exact And.intro E.hRefinementClosed
    (And.intro E.pRefinementClosed
      (And.intro E.hpRefinementClosed
        (And.intro E.rRefinementClosed E.refinementClosed)))

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse