import LinearElasticityInitialStressesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ElasticityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse
