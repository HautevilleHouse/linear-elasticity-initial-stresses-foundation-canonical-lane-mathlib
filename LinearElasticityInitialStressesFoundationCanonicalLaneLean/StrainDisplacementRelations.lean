import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure StrainDisplacementPackage where
  displacementField : Type u
  infinitesimalStrain : Type v
  linearizedStrainTensor : Prop
  compatibilityConditions : Prop
  strainDisplacementRelation : Prop

structure StrainDisplacementEvidence (S : StrainDisplacementPackage) where
  linearizedStrainTensorClosed : S.linearizedStrainTensor
  compatibilityConditionsClosed : S.compatibilityConditions
  strainDisplacementRelationClosed : S.strainDisplacementRelation

def StrainDisplacementClosed (S : StrainDisplacementPackage) : Prop :=
  S.linearizedStrainTensor ∧ S.compatibilityConditions ∧ S.strainDisplacementRelation

theorem strain_displacement_closed_from_evidence (S : StrainDisplacementPackage) (E : StrainDisplacementEvidence S) : StrainDisplacementClosed S := by
  exact And.intro E.linearizedStrainTensorClosed (And.intro E.compatibilityConditionsClosed E.strainDisplacementRelationClosed)

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse