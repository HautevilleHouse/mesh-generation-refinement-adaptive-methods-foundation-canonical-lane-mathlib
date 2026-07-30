import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure AdaptiveMarkingPackage where
  markingStrategy : Prop
  maximumElementMarked : Prop
  dorflerMarking : Prop
  guaranteeRate : Prop
  markingClosed : Prop

structure AdaptiveMarkingEvidence (M : AdaptiveMarkingPackage) where
  markingStrategyClosed : M.markingStrategy
  maximumElementMarkedClosed : M.maximumElementMarked
  dorflerMarkingClosed : M.dorflerMarking
  guaranteeRateClosed : M.guaranteeRate
  markingClosed : M.markingClosed

def AdaptiveMarkingClosed (M : AdaptiveMarkingPackage) : Prop :=
  M.markingStrategy ∧ M.maximumElementMarked ∧ M.dorflerMarking ∧ M.guaranteeRate ∧ M.markingClosed

theorem adaptive_marking_closed_from_evidence
    (M : AdaptiveMarkingPackage) (E : AdaptiveMarkingEvidence M) :
    AdaptiveMarkingClosed M := by
  exact And.intro E.markingStrategyClosed
    (And.intro E.maximumElementMarkedClosed
      (And.intro E.dorflerMarkingClosed
        (And.intro E.guaranteeRateClosed E.markingClosed)))

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse