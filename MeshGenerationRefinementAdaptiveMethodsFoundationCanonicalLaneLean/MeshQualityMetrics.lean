import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.ConvergenceAnalysis

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure MeshQualityMetricsPackage where
  aspectRatio : Prop
  skewness : Prop
  orthogonality : Prop
  smoothness : Prop
  resolution : Prop
  JacobianDeterminant : Prop

structure MeshQualityMetricsEvidence (M : MeshQualityMetricsPackage) where
  aspectRatioClosed : M.aspectRatio
  skewnessClosed : M.skewness
  orthogonalityClosed : M.orthogonality
  smoothnessClosed : M.smoothness
  resolutionClosed : M.resolution
  JacobianDeterminantClosed : M.JacobianDeterminant

def MeshQualityMetricsClosed (M : MeshQualityMetricsPackage) : Prop :=
  M.aspectRatio ∧ M.skewness ∧ M.orthogonality ∧ M.smoothness ∧ M.resolution ∧ M.JacobianDeterminant

theorem mesh_quality_metrics_closed_from_evidence (M : MeshQualityMetricsPackage)
    (E : MeshQualityMetricsEvidence M) : MeshQualityMetricsClosed M := by
  exact And.intro E.aspectRatioClosed
    (And.intro E.skewnessClosed
      (And.intro E.orthogonalityClosed
        (And.intro E.smoothnessClosed
          (And.intro E.resolutionClosed E.JacobianDeterminantClosed))))

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse
