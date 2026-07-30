import MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure MeshGenerationAlgorithmsPackage where
  delaunayTriangulation : Prop
  advancingFrontMethod : Prop
  octreeMeshGeneration : Prop
  voronoiBasedMeshing : Prop
  generationClosed : Prop

structure MeshGenerationAlgorithmsEvidence (G : MeshGenerationAlgorithmsPackage) where
  delaunayTriangulationClosed : G.delaunayTriangulation
  advancingFrontMethodClosed : G.advancingFrontMethod
  octreeMeshGenerationClosed : G.octreeMeshGeneration
  voronoiBasedMeshingClosed : G.voronoiBasedMeshing
  generationClosed : G.generationClosed

def MeshGenerationAlgorithmsClosed (G : MeshGenerationAlgorithmsPackage) : Prop :=
  G.delaunayTriangulation ∧ G.advancingFrontMethod ∧
  G.octreeMeshGeneration ∧ G.voronoiBasedMeshing ∧ G.generationClosed

theorem mesh_generation_algorithms_closed_from_evidence
    (G : MeshGenerationAlgorithmsPackage) (E : MeshGenerationAlgorithmsEvidence G) :
    MeshGenerationAlgorithmsClosed G := by
  exact And.intro E.delaunayTriangulationClosed
    (And.intro E.advancingFrontMethodClosed
      (And.intro E.octreeMeshGenerationClosed
        (And.intro E.voronoiBasedMeshingClosed E.generationClosed)))

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse