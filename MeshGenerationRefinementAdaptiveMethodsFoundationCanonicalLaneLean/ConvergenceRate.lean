import canonicalLaneMathlib.AdmissibleClass
import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.AposterioriEstimator

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure ConvergenceTheory (M : PolyhedralMesh) (A : AdaptivityOperator M)
    (Est : ErrorEstimator M A) where
  dorflerMarking : Prop
  contractionProperty : Prop
  optimalCardinality : Prop
  algebraicRate : Prop
  exponentialRate : Prop

structure ConvergenceEvidence {M : PolyhedralMesh} {A : AdaptivityOperator M}
    {Est : ErrorEstimator M A} (C : ConvergenceTheory M A Est) where
  dorflerMarkingClosed : C.dorflerMarking
  contractionPropertyClosed : C.contractionProperty
  optimalCardinalityClosed : C.optimalCardinality
  algebraicRateClosed : C.algebraicRate
  exponentialRateClosed : C.exponentialRate

def ConvergenceClosed {M : PolyhedralMesh} {A : AdaptivityOperator M}
    {Est : ErrorEstimator M A} (C : ConvergenceTheory M A Est) : Prop :=
  C.dorflerMarking ∧ C.contractionProperty ∧ C.optimalCardinality ∧
  C.algebraicRate ∧ C.exponentialRate

theorem convergence_closed_from_evidence {M : PolyhedralMesh} {A : AdaptivityOperator M}
    {Est : ErrorEstimator M A} (C : ConvergenceTheory M A Est)
    (Ev : ConvergenceEvidence C) : ConvergenceClosed C := by
  exact And.intro Ev.dorflerMarkingClosed
    (And.intro Ev.contractionPropertyClosed
      (And.intro Ev.optimalCardinalityClosed
        (And.intro Ev.algebraicRateClosed Ev.exponentialRateClosed)))

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse
