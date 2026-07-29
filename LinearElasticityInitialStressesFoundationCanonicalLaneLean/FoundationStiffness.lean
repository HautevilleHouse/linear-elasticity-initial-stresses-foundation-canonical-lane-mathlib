import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure FoundationStiffnessPackage where
  stiffnessMatrix : Type u
  foundationReaction : Prop
  contactInterface : Prop
  winklerAssumption : Prop

structure FoundationStiffnessEvidence (F : FoundationStiffnessPackage) where
  foundationReactionClosed : F.foundationReaction
  contactInterfaceClosed : F.contactInterface
  winklerAssumptionClosed : F.winklerAssumption

def FoundationStiffnessClosed (F : FoundationStiffnessPackage) : Prop :=
  F.foundationReaction ∧ F.contactInterface ∧ F.winklerAssumption

theorem foundation_stiffness_closed_from_evidence (F : FoundationStiffnessPackage)
    (E : FoundationStiffnessEvidence F) : FoundationStiffnessClosed F := by
  exact And.intro E.foundationReactionClosed (And.intro E.contactInterfaceClosed E.winklerAssumptionClosed)

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse