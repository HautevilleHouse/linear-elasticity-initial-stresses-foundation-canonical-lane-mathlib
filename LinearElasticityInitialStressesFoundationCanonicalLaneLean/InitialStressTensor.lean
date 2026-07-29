import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure InitialStressTensorPackage where
  bodyForceDensity : Type u
  tractionVector : Type v
  cauchyStressTensor : Type w
  initialStressField : Type x
  equilibriumCondition : Prop
  symmetryCondition : Prop
  boundaryConsistency : Prop

def InitialStressTensorClosed (pkg : InitialStressTensorPackage) : Prop :=
  pkg.equilibriumCondition ∧ pkg.symmetryCondition ∧ pkg.boundaryConsistency

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse