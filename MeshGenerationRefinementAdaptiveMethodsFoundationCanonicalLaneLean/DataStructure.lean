import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure MeshGraph where
  halfEdge : Type u
  parentChild : Type v
  nestedHierarchy : Prop
  localModification : Prop
  parallelDistribution : Prop

structure MeshGraphEvidence (G : MeshGraph) where
  nestedHierarchyClosed : G.nestedHierarchy
  localModificationClosed : G.localModification
  parallelDistributionClosed : G.parallelDistribution

def MeshGraphClosed (G : MeshGraph) : Prop :=
  G.nestedHierarchy ∧ G.localModification ∧ G.parallelDistribution

theorem mesh_graph_closed_from_evidence (G : MeshGraph) (E : MeshGraphEvidence G) :
    MeshGraphClosed G := by
  exact And.intro E.nestedHierarchyClosed
    (And.intro E.localModificationClosed E.parallelDistributionClosed)

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse
