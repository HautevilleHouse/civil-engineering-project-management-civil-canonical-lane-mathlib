import HautevilleHouse.CivilEngineeringProjectManagementCivil.CivilEngineeringAdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivil

-- Bridge: the project scope is defined and budget is approved, satisfying the closure condition
structure BridgeEvidence (O : CivilEngineeringAdmittedObject) where
  scopeDefinedClosed : O.scopeDefined
  budgetApprovedClosed : O.budgetApproved
  scheduleApprovedClosed : O.scheduleApproved
  qualityChecklistCompleteClosed : O.qualityChecklistComplete

def bridgeClosed (A : AdmissibleClass) : Prop := False

def gateClosed (A : AdmissibleClass) : Prop := False

end CivilEngineeringProjectManagementCivil
end HautevilleHouse
