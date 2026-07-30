import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure AdaptiveErrorEstimator where
  errorIndicator : String
  tolerances : ℝ
  convergenceRate : ℝ

structure AdaptiveErrorEstimatorEvidence (E : AdaptiveErrorEstimator) where
  errorIndicatorClosed : E.errorIndicator ∈ {"residual", "recovery", "hierarchical"}
  tolerancesClosed : E.tolerances > 0
  convergenceRateClosed : E.convergenceRate > 0

def AdaptiveErrorEstimatorClosed (E : AdaptiveErrorEstimator) : Prop :=
  E.errorIndicator ∈ {"residual", "recovery", "hierarchical"} ∧
  E.tolerances > 0 ∧
  E.convergenceRate > 0

theorem adaptive_error_estimator_closed_from_evidence (E : AdaptiveErrorEstimator) (Ev : AdaptiveErrorEstimatorEvidence E) :
    AdaptiveErrorEstimatorClosed E := by
  exact And.intro Ev.errorIndicatorClosed (And.intro Ev.tolerancesClosed Ev.convergenceRateClosed)

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse