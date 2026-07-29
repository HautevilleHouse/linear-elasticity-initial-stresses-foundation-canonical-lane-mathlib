import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure InitialStressField where
  stressTensor : Type u
  referenceConfiguration : Type v
  initialStressDistribution : Prop
  equilibriumCondition : Prop
  boundaryTractionConsistent : Prop
  selfEquilibrated : Prop

structure InitialStressEvidence (S : InitialStressField) where
  initialStressDistributionClosed : S.initialStressDistribution
  equilibriumConditionClosed : S.equilibriumCondition
  boundaryTractionConsistentClosed : S.boundaryTractionConsistent
  selfEquilibratedClosed : S.selfEquilibrated

def InitialStressClosed (S : InitialStressField) : Prop :=
  S.initialStressDistribution ∧ S.equilibriumCondition ∧
  S.boundaryTractionConsistent ∧ S.selfEquilibrated

theorem initial_stress_closed_from_evidence (S : InitialStressField)
    (E : InitialStressEvidence S) : InitialStressClosed S := by
  exact And.intro E.initialStressDistributionClosed
    (And.intro E.equilibriumConditionClosed
      (And.intro E.boundaryTractionConsistentClosed E.selfEquilibratedClosed))

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse