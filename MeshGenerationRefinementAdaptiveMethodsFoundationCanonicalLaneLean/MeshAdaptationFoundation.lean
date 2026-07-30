import HautevilleHouse.MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure MeshConnectivityEstimate where
  elementQuality : Prop
  neighborConsistency : Prop
  localFeaturePreserved : Prop
  connectivityClosed : elementQuality ∧ neighborConsistency ∧ localFeaturePreserved

structure RefinementTriggerCondition where
  errorIndicator : Prop
  regularityThreshold : Prop
  scaleSeparation : Prop
  triggerClosed : errorIndicator ∧ regularityThreshold ∧ scaleSeparation

structure AdaptiveStepEvidence (M : MeshConnectivityEstimate) (R : RefinementTriggerCondition) where
  connectivityEvidence : M.connectivityClosed
  triggerEvidence : R.triggerClosed
  hRefinementApplied : Prop
  rRefinementApplied : Prop
  closureEvidence : connectivityEvidence ∧ triggerEvidence ∧ hRefinementApplied ∧ rRefinementApplied

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse
