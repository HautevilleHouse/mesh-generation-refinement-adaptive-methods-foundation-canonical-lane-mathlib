import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean

structure MeshDomain where
  vertices : Nat
  cells : Nat
  dimension : Nat
  geometryType : String

structure MeshDomainEvidence (M : MeshDomain) where
  verticesClosed : M.vertices ≥ 1
  cellsClosed : M.cells ≥ 1
  dimensionClosed : M.dimension = 2 ∨ M.dimension = 3
  geometryTypeClosed : M.geometryType ∈ {"simplicial", "hexahedral", "tetrahedral"}

def MeshDomainClosed (M : MeshDomain) : Prop :=
  M.vertices ≥ 1 ∧ M.cells ≥ 1 ∧ (M.dimension = 2 ∨ M.dimension = 3) ∧
  M.geometryType ∈ {"simplicial", "hexahedral", "tetrahedral"}

theorem mesh_domain_closed_from_evidence (M : MeshDomain) (E : MeshDomainEvidence M) :
    MeshDomainClosed M := by
  exact And.intro E.verticesClosed (And.intro E.cellsClosed (And.intro E.dimensionClosed E.geometryTypeClosed))

end MeshGenerationRefinementAdaptiveMethodsFoundationCanonicalLaneLean
end HautevilleHouse