import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure EquilibriumEquations where
  bodyForces : Type u
  stressDivergence : Type v
  equilibriumPDE : Prop
  boundaryConditions : Prop
  weakFormulation : Prop
  existenceOfSolution : Prop

structure EquilibriumEvidence (E : EquilibriumEquations) where
  equilibriumPDEClosed : E.equilibriumPDE
  boundaryConditionsClosed : E.boundaryConditions
  weakFormulationClosed : E.weakFormulation
  existenceOfSolutionClosed : E.existenceOfSolution

def EquilibriumClosed (E : EquilibriumEquations) : Prop :=
  E.equilibriumPDE ∧ E.boundaryConditions ∧
  E.weakFormulation ∧ E.existenceOfSolution

theorem equilibrium_closed_from_evidence (E : EquilibriumEquations)
    (Ev : EquilibriumEvidence E) : EquilibriumClosed E := by
  exact And.intro Ev.equilibriumPDEClosed
    (And.intro Ev.boundaryConditionsClosed
      (And.intro Ev.weakFormulationClosed Ev.existenceOfSolutionClosed))

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse