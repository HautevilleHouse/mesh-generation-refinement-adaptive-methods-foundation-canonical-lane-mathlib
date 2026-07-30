import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.MeshGenerationCore

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure RefinementStrategyPackage where
  hRefinement : Prop
  pRefinement : Prop
  hpRefinement : Prop
  rRefinement : Prop
  anisotropicRefinement : Prop

structure RefinementStrategyEvidence (R : RefinementStrategyPackage) where
  hRefinementClosed : R.hRefinement
  pRefinementClosed : R.pRefinement
  hpRefinementClosed : R.hpRefinement
  rRefinementClosed : R.rRefinement
  anisotropicRefinementClosed : R.anisotropicRefinement

def RefinementStrategyClosed (R : RefinementStrategyPackage) : Prop :=
  R.hRefinement ∧ R.pRefinement ∧ R.hpRefinement ∧ R.rRefinement ∧ R.anisotropicRefinement

theorem refinement_strategy_closed_from_evidence (R : RefinementStrategyPackage)
    (E : RefinementStrategyEvidence R) : RefinementStrategyClosed R := by
  exact And.intro E.hRefinementClosed
    (And.intro E.pRefinementClosed
      (And.intro E.hpRefinementClosed
        (And.intro E.rRefinementClosed E.anisotropicRefinementClosed)))

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse
