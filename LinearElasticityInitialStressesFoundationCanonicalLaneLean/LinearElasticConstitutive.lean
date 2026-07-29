import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure ElasticityTensor where
  rankFourTensor : Type u
  minorSymmetries : Prop
  majorSymmetry : Prop
  positiveDefiniteness : Prop

structure ElasticityTensorEvidence (T : ElasticityTensor) where
  minorSymmetriesClosed : T.minorSymmetries
  majorSymmetryClosed : T.majorSymmetry
  positiveDefinitenessClosed : T.positiveDefiniteness

def ElasticityTensorClosed (T : ElasticityTensor) : Prop :=
  T.minorSymmetries ∧ T.majorSymmetry ∧ T.positiveDefiniteness

theorem elasticity_tensor_closed_from_evidence (T : ElasticityTensor)
    (Ev : ElasticityTensorEvidence T) : ElasticityTensorClosed T := by
  exact And.intro Ev.minorSymmetriesClosed
    (And.intro Ev.majorSymmetryClosed Ev.positiveDefinitenessClosed)

structure StressStrainRelation (T : ElasticityTensor) where
  linearMapping : T.rankFourTensor → Prop
  hookesLawForm : Prop
  initialStressContribution : Prop

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse