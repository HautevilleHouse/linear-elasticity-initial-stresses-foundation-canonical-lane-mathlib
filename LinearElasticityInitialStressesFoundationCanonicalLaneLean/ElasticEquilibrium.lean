import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure ElasticEquilibriumPackage where
  bodyForces : Type u
  tractionBoundary : Type v
  displacementBoundary : Type w
  equilibriumEquations : Prop
  compatibilityConditions : Prop
  stressStrainLaw : Prop

structure ElasticEquilibriumEvidence (E : ElasticEquilibriumPackage) where
  equilibriumEquationsClosed : E.equilibriumEquations
  compatibilityConditionsClosed : E.compatibilityConditions
  stressStrainLawClosed : E.stressStrainLaw

def ElasticEquilibriumClosed (E : ElasticEquilibriumPackage) : Prop :=
  E.equilibriumEquations ∧ E.compatibilityConditions ∧ E.stressStrainLaw

theorem elastic_equilibrium_closed_from_evidence (E : ElasticEquilibriumPackage)
    (Ev : ElasticEquilibriumEvidence E) : ElasticEquilibriumClosed E := by
  exact And.intro Ev.equilibriumEquationsClosed
    (And.intro Ev.compatibilityConditionsClosed Ev.stressStrainLawClosed)

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse