import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure MeshGenerationAdmittedObject where
  triangulation : Type
  qualityMeasure : Prop
  convergenceRate : Prop
  adaptiveCriterion : Prop
  conclusion : adaptiveCriterion

structure MeshGenerationEndgameState where
  object : MeshGenerationAdmittedObject

def MeshGenerationWitnessClosed (O : MeshGenerationAdmittedObject) : Prop :=
  O.adaptiveCriterion

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse
