import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure DeformationCompatibility where
  displacementField : Type u
  strainTensor : Type v
  infinitesimalStrainRelation : Prop
  compatibilityEquations : Prop
  simplyConnectedDomain : Prop
  integrabilityCondition : Prop

structure DeformationCompatibilityEvidence (D : DeformationCompatibility) where
  infinitesimalStrainRelationClosed : D.infinitesimalStrainRelation
  compatibilityEquationsClosed : D.compatibilityEquations
  simplyConnectedDomainClosed : D.simplyConnectedDomain
  integrabilityConditionClosed : D.integrabilityCondition

def DeformationCompatibilityClosed (D : DeformationCompatibility) : Prop :=
  D.infinitesimalStrainRelation ∧ D.compatibilityEquations ∧
  D.simplyConnectedDomain ∧ D.integrabilityCondition

theorem deformation_compatibility_closed_from_evidence (D : DeformationCompatibility)
    (E : DeformationCompatibilityEvidence D) : DeformationCompatibilityClosed D := by
  exact And.intro E.infinitesimalStrainRelationClosed
    (And.intro E.compatibilityEquationsClosed
      (And.intro E.simplyConnectedDomainClosed E.integrabilityConditionClosed))

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse