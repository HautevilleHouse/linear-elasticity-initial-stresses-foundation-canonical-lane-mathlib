import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure ConstitutiveLawPackage where
  elasticModulus : Type u
  poissonRatio : Type v
  stressStrainRelation : Prop
  isotropyAssumption : Prop
  linearElasticity : Prop

structure ConstitutiveLawEvidence (C : ConstitutiveLawPackage) where
  stressStrainRelationClosed : C.stressStrainRelation
  isotropyAssumptionClosed : C.isotropyAssumption
  linearElasticityClosed : C.linearElasticity

def ConstitutiveLawClosed (C : ConstitutiveLawPackage) : Prop :=
  C.stressStrainRelation ∧ C.isotropyAssumption ∧ C.linearElasticity

theorem constitutive_law_closed_from_evidence (C : ConstitutiveLawPackage)
    (E : ConstitutiveLawEvidence C) : ConstitutiveLawClosed C := by
  exact And.intro E.stressStrainRelationClosed (And.intro E.isotropyAssumptionClosed E.linearElasticityClosed)

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse