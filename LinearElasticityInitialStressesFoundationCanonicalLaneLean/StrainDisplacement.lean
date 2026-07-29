import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure StrainDisplacementPackage where
  displacementField : Type u
  strainTensor : Type v
  linearRelation : Prop
  smallStrainAssumption : Prop
  kinematicCompatibility : Prop

structure StrainDisplacementEvidence (S : StrainDisplacementPackage) where
  linearRelationClosed : S.linearRelation
  smallStrainAssumptionClosed : S.smallStrainAssumption
  kinematicCompatibilityClosed : S.kinematicCompatibility

def StrainDisplacementClosed (S : StrainDisplacementPackage) : Prop :=
  S.linearRelation ∧ S.smallStrainAssumption ∧ S.kinematicCompatibility

theorem strain_displacement_closed_from_evidence (S : StrainDisplacementPackage)
    (E : StrainDisplacementEvidence S) : StrainDisplacementClosed S := by
  exact And.intro E.linearRelationClosed (And.intro E.smallStrainAssumptionClosed E.kinematicCompatibilityClosed)

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse