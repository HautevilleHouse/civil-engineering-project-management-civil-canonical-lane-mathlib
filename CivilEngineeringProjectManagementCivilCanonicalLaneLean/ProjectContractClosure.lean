import CivilEngineeringProjectManagementCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCanonicalLaneLean

structure ProjectContractPackage where
  contractTypes : List String
  riskAllocation : Prop
  paymentTerms : Prop
  disputeResolution : Prop
  performanceBonds : Prop

structure ProjectContractEvidence (C : ProjectContractPackage) where
  riskAllocationClosed : C.riskAllocation
  paymentTermsClosed : C.paymentTerms
  disputeResolutionClosed : C.disputeResolution
  performanceBondsClosed : C.performanceBonds

def ProjectContractClosed (C : ProjectContractPackage) : Prop :=
  C.riskAllocation ∧ C.paymentTerms ∧ C.disputeResolution ∧ C.performanceBonds

theorem project_contract_closed_from_evidence (C : ProjectContractPackage) (E : ProjectContractEvidence C) : ProjectContractClosed C := by
  exact And.intro E.riskAllocationClosed (And.intro E.paymentTermsClosed (And.intro E.disputeResolutionClosed E.performanceBondsClosed))

end CivilEngineeringProjectManagementCanonicalLaneLean
end HautevilleHouse