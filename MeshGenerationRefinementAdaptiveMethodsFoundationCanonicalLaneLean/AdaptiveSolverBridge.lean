import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure AdaptiveSolverBridge where
  solverType : String
  adaptivityCoupled : Prop
  convergenceGuaranteed : Prop

structure AdaptiveSolverBridgeEvidence (B : AdaptiveSolverBridge) where
  solverTypeClosed : B.solverType ∈ {"finite element", "finite volume", "spectral"}
  adaptivityCoupledClosed : B.adaptivityCoupled
  convergenceGuaranteedClosed : B.convergenceGuaranteed

def AdaptiveSolverBridgeClosed (B : AdaptiveSolverBridge) : Prop :=
  B.solverType ∈ {"finite element", "finite volume", "spectral"} ∧
  B.adaptivityCoupled ∧
  B.convergenceGuaranteed

theorem adaptive_solver_bridge_closed_from_evidence (B : AdaptiveSolverBridge) (E : AdaptiveSolverBridgeEvidence B) :
    AdaptiveSolverBridgeClosed B := by
  exact And.intro E.solverTypeClosed (And.intro E.adaptivityCoupledClosed E.convergenceGuaranteedClosed)

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse