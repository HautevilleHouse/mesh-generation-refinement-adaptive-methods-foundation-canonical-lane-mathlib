import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure MeshRefinementPackage where
  refinementStrategy : String
  refinementFraction : ℝ
  preserveBoundary : Prop

structure MeshRefinementEvidence (R : MeshRefinementPackage) where
  refinementStrategyClosed : R.refinementStrategy ∈ {"h-refinement", "p-refinement", "hp-refinement"}
  refinementFractionClosed : R.refinementFraction > 0 ∧ R.refinementFraction < 1
  preserveBoundaryClosed : R.preserveBoundary

def MeshRefinementClosed (R : MeshRefinementPackage) : Prop :=
  R.refinementStrategy ∈ {"h-refinement", "p-refinement", "hp-refinement"} ∧
  R.refinementFraction > 0 ∧ R.refinementFraction < 1 ∧
  R.preserveBoundary

theorem mesh_refinement_closed_from_evidence (R : MeshRefinementPackage) (E : MeshRefinementEvidence R) :
    MeshRefinementClosed R := by
  exact And.intro E.refinementStrategyClosed (And.intro E.refinementFractionClosed E.preserveBoundaryClosed)

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse