import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure WellposednessPackage where
  existenceOfSolution : Prop
  uniquenessOfSolution : Prop
  continuousDependence : Prop
  stabilityEstimate : Prop

structure WellposednessEvidence (W : WellposednessPackage) where
  existenceOfSolutionClosed : W.existenceOfSolution
  uniquenessOfSolutionClosed : W.uniquenessOfSolution
  continuousDependenceClosed : W.continuousDependence
  stabilityEstimateClosed : W.stabilityEstimate

def WellposednessClosed (W : WellposednessPackage) : Prop :=
  W.existenceOfSolution ∧ W.uniquenessOfSolution ∧ W.continuousDependence ∧ W.stabilityEstimate

theorem wellposedness_closed_from_evidence (W : WellposednessPackage) (E : WellposednessEvidence W) : WellposednessClosed W := by
  exact And.intro E.existenceOfSolutionClosed (And.intro E.uniquenessOfSolutionClosed (And.intro E.continuousDependenceClosed E.stabilityEstimateClosed))

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse