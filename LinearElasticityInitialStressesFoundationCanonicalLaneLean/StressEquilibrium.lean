import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure StressEquilibriumPackage where
  equilibriumEquations : Prop
  bodyForce : Type u
  tractionBoundary : Prop
  stressCompatibility : Prop

structure StressEquilibriumEvidence (E : StressEquilibriumPackage) where
  equilibriumEquationsClosed : E.equilibriumEquations
  tractionBoundaryClosed : E.tractionBoundary
  stressCompatibilityClosed : E.stressCompatibility

def StressEquilibriumClosed (E : StressEquilibriumPackage) : Prop :=
  E.equilibriumEquations ∧ E.tractionBoundary ∧ E.stressCompatibility

theorem stress_equilibrium_closed_from_evidence (E : StressEquilibriumPackage)
    (Ev : StressEquilibriumEvidence E) : StressEquilibriumClosed E := by
  exact And.intro Ev.equilibriumEquationsClosed (And.intro Ev.tractionBoundaryClosed Ev.stressCompatibilityClosed)

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse