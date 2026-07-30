import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure ErrorEstimationPackage where
  aPosterioriErrorIndicator : Prop
  residualErrorEstimate : Prop
  dualWeightedResidual : Prop
  supApproximation : Prop
  errorEstimationClosed : Prop

structure ErrorEstimationEvidence (E : ErrorEstimationPackage) where
  aPosterioriErrorIndicatorClosed : E.aPosterioriErrorIndicator
  residualErrorEstimateClosed : E.residualErrorEstimate
  dualWeightedResidualClosed : E.dualWeightedResidual
  supApproximationClosed : E.supApproximation
  errorEstimationClosed : E.errorEstimationClosed

def ErrorEstimationClosed (E : ErrorEstimationPackage) : Prop :=
  E.aPosterioriErrorIndicator ∧ E.residualErrorEstimate ∧
  E.dualWeightedResidual ∧ E.supApproximation ∧ E.errorEstimationClosed

theorem error_estimation_closed_from_evidence
    (E : ErrorEstimationPackage) (Ev : ErrorEstimationEvidence E) :
    ErrorEstimationClosed E := by
  exact And.intro Ev.aPosterioriErrorIndicatorClosed
    (And.intro Ev.residualErrorEstimateClosed
      (And.intro Ev.dualWeightedResidualClosed
        (And.intro Ev.supApproximationClosed Ev.errorEstimationClosed)))

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse