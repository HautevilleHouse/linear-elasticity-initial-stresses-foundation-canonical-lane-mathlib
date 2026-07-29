import LinearElasticityInitialStressesFoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure ElasticitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ElasticityAdmittedObject where
  space : ElasticitySpace
  linearElasticBody : Prop
  initialStressState : Prop
  stressModel : Type
  stressTopology : TopologicalSpace stressModel
  stressEquilibrium : Prop
  conclusion : stressEquilibrium

structure ElasticityEndgameState where
  object : ElasticityAdmittedObject

def ElasticityWitnessClosed (O : ElasticityAdmittedObject) : Prop :=
  O.stressEquilibrium

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse
