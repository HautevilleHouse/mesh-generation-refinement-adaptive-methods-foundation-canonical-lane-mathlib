import canonicalLaneMathlib.AdmissibleClass
import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.MeshGeometryDomain

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure AdaptivityOperator (M : PolyhedralMesh) where
  refinementIndicator : M.vertices → ℝ
  markingStrategy : Set M.cells
  bisectionClosure : Prop
  longestEdgeRefinement : Prop
  qualityGuarantee : Prop

structure AdaptivityEvidence {M : PolyhedralMesh} (A : AdaptivityOperator M) where
  refinementIndicatorClosed : A.refinementIndicator = 1
  markingStrategyClosed : A.markingStrategy ∈ Set.univ
  bisectionClosureClosed : A.bisectionClosure
  longestEdgeRefinementClosed : A.longestEdgeRefinement
  qualityGuaranteeClosed : A.qualityGuarantee

def AdaptivityClosed {M : PolyhedralMesh} (A : AdaptivityOperator M) : Prop :=
  A.bisectionClosure ∧ A.longestEdgeRefinement ∧ A.qualityGuarantee

theorem adaptivity_closed_from_evidence {M : PolyhedralMesh}
    (A : AdaptivityOperator M) (E : AdaptivityEvidence A) : AdaptivityClosed A := by
  exact And.intro E.bisectionClosureClosed
    (And.intro E.longestEdgeRefinementClosed E.qualityGuaranteeClosed)

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse
