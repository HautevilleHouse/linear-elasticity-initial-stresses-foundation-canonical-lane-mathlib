import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : ElasticityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ElasticityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse
