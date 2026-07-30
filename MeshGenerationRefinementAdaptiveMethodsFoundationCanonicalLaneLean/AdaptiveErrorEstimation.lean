import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.RefinementStrategies

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure AdaptiveErrorEstimationPackage where
  aPosterioriEstimator : Prop
  residualBased : Prop
  recoveryBased : Prop
  hierarchicalBasis : Prop
  goalOriented : Prop
  markingCriterion : Prop

structure AdaptiveErrorEstimationEvidence (E : AdaptiveErrorEstimationPackage) where
  aPosterioriEstimatorClosed : E.aPosterioriEstimator
  residualBasedClosed : E.residualBased
  recoveryBasedClosed : E.recoveryBased
  hierarchicalBasisClosed : E.hierarchicalBasis
  goalOrientedClosed : E.goalOriented
  markingCriterionClosed : E.markingCriterion

def AdaptiveErrorEstimationClosed (E : AdaptiveErrorEstimationPackage) : Prop :=
  E.aPosterioriEstimator ∧ E.residualBased ∧ E.recoveryBased ∧
  E.hierarchicalBasis ∧ E.goalOriented ∧ E.markingCriterion

theorem adaptive_error_estimation_closed_from_evidence (E : AdaptiveErrorEstimationPackage)
    (Ev : AdaptiveErrorEstimationEvidence E) : AdaptiveErrorEstimationClosed E := by
  exact And.intro Ev.aPosterioriEstimatorClosed
    (And.intro Ev.residualBasedClosed
      (And.intro Ev.recoveryBasedClosed
        (And.intro Ev.hierarchicalBasisClosed
          (And.intro Ev.goalOrientedClosed Ev.markingCriterionClosed))))

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse
