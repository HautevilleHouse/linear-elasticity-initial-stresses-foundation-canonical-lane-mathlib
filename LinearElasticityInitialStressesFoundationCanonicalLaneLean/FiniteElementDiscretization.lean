import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearElasticityInitialStressesFoundationCanonicalLaneLean

structure ShapeFunctionSpace where
  basisFunctions : Type u
  continuityRequirements : Prop
  completenessCondition : Prop
  polynomialDegree : Prop

structure StiffnessMatrixAssembly where
  elementStiffness : Prop
  globalAssemblyProcedure : Prop
  initialStressVectorAssembly : Prop
  boundaryConditionApplication : Prop

structure DiscretizationEvidence (S : ShapeFunctionSpace) (M : StiffnessMatrixAssembly) where
  shapeFunctionsClosed : S.basisFunctions ∧ S.continuityRequirements ∧ S.completenessCondition ∧ S.polynomialDegree
  stiffnessAssemblyClosed : M.elementStiffness ∧ M.globalAssemblyProcedure ∧ M.initialStressVectorAssembly ∧ M.boundaryConditionApplication

def DiscretizationClosed (S : ShapeFunctionSpace) (M : StiffnessMatrixAssembly) : Prop :=
  (S.basisFunctions ∧ S.continuityRequirements ∧ S.completenessCondition ∧ S.polynomialDegree) ∧
  (M.elementStiffness ∧ M.globalAssemblyProcedure ∧ M.initialStressVectorAssembly ∧ M.boundaryConditionApplication)

theorem discretization_closed_from_evidence (S : ShapeFunctionSpace) (M : StiffnessMatrixAssembly)
    (Ev : DiscretizationEvidence S M) : DiscretizationClosed S M := by
  exact Ev.shapeFunctionsClosed ∧ Ev.stiffnessAssemblyClosed

end LinearElasticityInitialStressesFoundationCanonicalLaneLean
end HautevilleHouse