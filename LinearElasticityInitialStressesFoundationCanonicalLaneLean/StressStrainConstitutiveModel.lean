import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure StressStrainConstitutiveModel where
  elasticityTensor : Type u
  stiffnessTensor : Type v
  complianceTensor : Type w
  linearElasticRelation : Prop
  isotropicSymmetry : Prop
  positiveDefiniteStiffness : Prop

structure StressStrainConstitutiveEvidence (M : StressStrainConstitutiveModel) where
  linearElasticRelationClosed : M.linearElasticRelation
  isotropicSymmetryClosed : M.isotropicSymmetry
  positiveDefiniteStiffnessClosed : M.positiveDefiniteStiffness

def StressStrainConstitutiveClosed (M : StressStrainConstitutiveModel) : Prop :=
  M.linearElasticRelation ∧ M.isotropicSymmetry ∧ M.positiveDefiniteStiffness

theorem stress_strain_constitutive_closed_from_evidence (M : StressStrainConstitutiveModel)
    (E : StressStrainConstitutiveEvidence M) : StressStrainConstitutiveClosed M := by
  exact And.intro E.linearElasticRelationClosed
    (And.intro E.isotropicSymmetryClosed E.positiveDefiniteStiffnessClosed)

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse