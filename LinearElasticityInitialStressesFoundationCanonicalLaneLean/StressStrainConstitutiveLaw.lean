import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure StressStrainPackage where
  strainTensor : Type u
  stressTensor : Type v
  elasticityTensor : Type w
  hookesLaw : Prop
  linearElasticResponse : Prop
  strainEnergyDensity : Prop

structure StressStrainEvidence (S : StressStrainPackage) where
  hookesLawClosed : S.hookesLaw
  linearElasticResponseClosed : S.linearElasticResponse
  strainEnergyDensityClosed : S.strainEnergyDensity

def StressStrainClosed (S : StressStrainPackage) : Prop :=
  S.hookesLaw ∧ S.linearElasticResponse ∧ S.strainEnergyDensity

theorem stress_strain_closed_from_evidence (S : StressStrainPackage) (E : StressStrainEvidence S) : StressStrainClosed S := by
  exact And.intro E.hookesLawClosed (And.intro E.linearElasticResponseClosed E.strainEnergyDensityClosed)

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse