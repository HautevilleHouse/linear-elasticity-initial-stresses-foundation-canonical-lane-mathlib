import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure SuperpositionData where
  externalLoadResponse : Prop
  initialStressResponse : Prop
  totalResponseLinearCombination : Prop
  decompositionUniqueness : Prop

structure SuperpositionEvidence (S : SuperpositionData) where
  externalLoadResponseClosed : S.externalLoadResponse
  initialStressResponseClosed : S.initialStressResponse
  totalResponseLinearCombinationClosed : S.totalResponseLinearCombination
  decompositionUniquenessClosed : S.decompositionUniqueness

def SuperpositionClosed (S : SuperpositionData) : Prop :=
  S.externalLoadResponse ∧ S.initialStressResponse ∧
  S.totalResponseLinearCombination ∧ S.decompositionUniqueness

theorem superposition_closed_from_evidence (S : SuperpositionData)
    (Ev : SuperpositionEvidence S) : SuperpositionClosed S := by
  exact And.intro Ev.externalLoadResponseClosed
    (And.intro Ev.initialStressResponseClosed
      (And.intro Ev.totalResponseLinearCombinationClosed Ev.decompositionUniquenessClosed))

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse