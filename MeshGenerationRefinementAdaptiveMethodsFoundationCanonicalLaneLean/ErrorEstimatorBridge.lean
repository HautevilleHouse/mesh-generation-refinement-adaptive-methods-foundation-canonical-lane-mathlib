import HautevilleHouse.MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure ResidualErrorEstimator where
  interiorResidual : Prop
  jumpResidual : Prop
  oscillationTerm : Prop
  estimatorClosed : interiorResidual ∧ jumpResidual ∧ oscillationTerm

structure RecoveryBasedEstimator where
  recoveredGradient : Prop
  exactGradientProjection : Prop
  effectivityIndex : Prop
  estimatorClosed : recoveredGradient ∧ exactGradientProjection ∧ effectivityIndex

structure ErrorEstimatorEvidence (R : ResidualErrorEstimator) (S : RecoveryBasedEstimator) where
  residualClosed : R.estimatorClosed
  recoveryClosed : S.estimatorClosed
  reliabilityConstant : Prop
  efficiencyConstant : Prop
  bridgeEvidence : residualClosed ∧ recoveryClosed ∧ reliabilityConstant ∧ efficiencyConstant

theorem error_estimator_bridge_gate (R : ResidualErrorEstimator) (S : RecoveryBasedEstimator)
    (E : ErrorEstimatorEvidence R S) : E.residualClosed ∧ E.recoveryClosed := by
  exact And.intro E.residualClosed E.recoveryClosed

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse
