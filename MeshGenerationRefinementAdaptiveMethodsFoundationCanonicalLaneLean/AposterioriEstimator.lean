import canonicalLaneMathlib.AdmissibleClass
import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.AdaptiveRefinementOperator

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure ErrorEstimator (M : PolyhedralMesh) (A : AdaptivityOperator M) where
  residualEstimator : Prop
  hierarchicalBasis : Prop
  recoveryBased : Prop
  localProblemSolve : Prop
  upperBoundReliability : Prop
  lowerBoundEfficiency : Prop

structure ErrorEstimatorEvidence {M : PolyhedralMesh} {A : AdaptivityOperator M}
    (E : ErrorEstimator M A) where
  upperBoundReliabilityClosed : E.upperBoundReliability
  lowerBoundEfficiencyClosed : E.lowerBoundEfficiency

def ErrorEstimatorClosed {M : PolyhedralMesh} {A : AdaptivityOperator M}
    (E : ErrorEstimator M A) : Prop :=
  E.upperBoundReliability ∧ E.lowerBoundEfficiency

theorem error_estimator_closed_from_evidence {M : PolyhedralMesh} {A : AdaptivityOperator M}
    (Est : ErrorEstimator M A) (Ev : ErrorEstimatorEvidence Est) :
    ErrorEstimatorClosed Est := by
  exact And.intro Ev.upperBoundReliabilityClosed Ev.lowerBoundEfficiencyClosed

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse
