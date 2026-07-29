import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure StressConcentrationBridgePackage where
  stressConcentrationFactor : Prop
  notchGeometry : Prop
  initialStressField : Prop
  stressRedistribution : Prop
  materialStability : Prop

def StressConcentrationBridgeClosed (pkg : StressConcentrationBridgePackage) : Prop :=
  pkg.stressConcentrationFactor ∧ pkg.notchGeometry ∧ pkg.initialStressField ∧
  pkg.stressRedistribution ∧ pkg.materialStability

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse