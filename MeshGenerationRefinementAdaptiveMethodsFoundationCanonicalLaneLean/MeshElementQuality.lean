import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure MeshElementQualityPackage where
  aspectRatio : Prop
  skewness : Prop
  jacobian : Prop
  orthogonality : Prop
  elementQualityClosed : Prop

structure MeshElementQualityEvidence (Q : MeshElementQualityPackage) where
  aspectRatioClosed : Q.aspectRatio
  skewnessClosed : Q.skewness
  jacobianClosed : Q.jacobian
  orthogonalityClosed : Q.orthogonality
  elementQualityClosed : Q.elementQualityClosed

def MeshElementQualityClosed (Q : MeshElementQualityPackage) : Prop :=
  Q.aspectRatio ∧ Q.skewness ∧ Q.jacobian ∧ Q.orthogonality ∧ Q.elementQualityClosed

theorem mesh_element_quality_closed_from_evidence
    (Q : MeshElementQualityPackage) (E : MeshElementQualityEvidence Q) :
    MeshElementQualityClosed Q := by
  exact And.intro E.aspectRatioClosed
    (And.intro E.skewnessClosed
      (And.intro E.jacobianClosed
        (And.intro E.orthogonalityClosed E.elementQualityClosed)))

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse