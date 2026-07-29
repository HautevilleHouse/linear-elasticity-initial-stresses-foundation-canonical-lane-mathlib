import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure InitialStressEquilibriumPackage where
  referenceConfiguration : Type u
  initialStressField : Type v
  equilibriumEquation : Prop
  balanceOfForces : Prop
  boundaryConditions : Prop

structure InitialStressEquilibriumEvidence (I : InitialStressEquilibriumPackage) where
  equilibriumEquationClosed : I.equilibriumEquation
  balanceOfForcesClosed : I.balanceOfForces
  boundaryConditionsClosed : I.boundaryConditions

def InitialStressEquilibriumClosed (I : InitialStressEquilibriumPackage) : Prop :=
  I.equilibriumEquation ∧ I.balanceOfForces ∧ I.boundaryConditions

theorem initial_stress_equilibrium_closed_from_evidence (I : InitialStressEquilibriumPackage) (E : InitialStressEquilibriumEvidence I) : InitialStressEquilibriumClosed I := by
  exact And.intro E.equilibriumEquationClosed (And.intro E.balanceOfForcesClosed E.boundaryConditionsClosed)

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse