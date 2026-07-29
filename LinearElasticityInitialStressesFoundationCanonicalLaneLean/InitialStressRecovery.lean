import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure StressRecoveryData where
  stressComputationMethod : Type u
  nodalStressAveraging : Prop
  equilibriumProjection : Prop
  errorEstimate : Prop

structure StressRecoveryEvidence (R : StressRecoveryData) where
  stressComputationMethodClosed : R.stressComputationMethod
  nodalStressAveragingClosed : R.nodalStressAveraging
  equilibriumProjectionClosed : R.equilibriumProjection
  errorEstimateClosed : R.errorEstimate

def StressRecoveryClosed (R : StressRecoveryData) : Prop :=
  R.stressComputationMethod ∧ R.nodalStressAveraging ∧
  R.equilibriumProjection ∧ R.errorEstimate

theorem stress_recovery_closed_from_evidence (R : StressRecoveryData)
    (Ev : StressRecoveryEvidence R) : StressRecoveryClosed R := by
  exact And.intro Ev.stressComputationMethodClosed
    (And.intro Ev.nodalStressAveragingClosed
      (And.intro Ev.equilibriumProjectionClosed Ev.errorEstimateClosed))

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse