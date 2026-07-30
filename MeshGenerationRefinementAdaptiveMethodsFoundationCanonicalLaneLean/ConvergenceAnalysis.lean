import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure ConvergenceAnalysisPackage where
  errorReductionRate : Prop
  optimalComplexity : Prop
  saturationProperty : Prop
  contractionFactor : Prop
  analysisClosed : Prop

structure ConvergenceAnalysisEvidence (C : ConvergenceAnalysisPackage) where
  errorReductionRateClosed : C.errorReductionRate
  optimalComplexityClosed : C.optimalComplexity
  saturationPropertyClosed : C.saturationProperty
  contractionFactorClosed : C.contractionFactor
  analysisClosed : C.analysisClosed

def ConvergenceAnalysisClosed (C : ConvergenceAnalysisPackage) : Prop :=
  C.errorReductionRate ∧ C.optimalComplexity ∧
  C.saturationProperty ∧ C.contractionFactor ∧ C.analysisClosed

theorem convergence_analysis_closed_from_evidence
    (C : ConvergenceAnalysisPackage) (E : ConvergenceAnalysisEvidence C) :
    ConvergenceAnalysisClosed C := by
  exact And.intro E.errorReductionRateClosed
    (And.intro E.optimalComplexityClosed
      (And.intro E.saturationPropertyClosed
        (And.intro E.contractionFactorClosed E.analysisClosed)))

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse