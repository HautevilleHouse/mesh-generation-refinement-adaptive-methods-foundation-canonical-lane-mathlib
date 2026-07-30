import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MeshGenerationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse
