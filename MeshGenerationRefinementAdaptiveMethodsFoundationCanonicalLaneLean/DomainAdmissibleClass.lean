import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : MeshGenerationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MeshGenerationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse
