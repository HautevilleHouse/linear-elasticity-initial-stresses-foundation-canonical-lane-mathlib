import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

def ConstrainedLinearElasticityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_linear_elasticity_endgame (A : AdmissibleClass) :
    ConstrainedLinearElasticityClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse