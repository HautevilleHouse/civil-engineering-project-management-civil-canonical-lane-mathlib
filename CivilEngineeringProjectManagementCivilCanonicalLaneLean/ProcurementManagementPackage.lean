import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCanonicalLaneLean

structure ProcurementManagementPackage where
  procurementPlanning : Prop
  solicitation : Prop
  sourceSelection : Prop
  contractAdministration : Prop
  contractCloseout : Prop

structure ProcurementManagementEvidence (P : ProcurementManagementPackage) where
  procurementPlanningClosed : P.procurementPlanning
  solicitationClosed : P.solicitation
  sourceSelectionClosed : P.sourceSelection
  contractAdministrationClosed : P.contractAdministration
  contractCloseoutClosed : P.contractCloseout

def ProcurementManagementClosed (P : ProcurementManagementPackage) : Prop :=
  P.procurementPlanning ∧ P.solicitation ∧
  P.sourceSelection ∧ P.contractAdministration ∧ P.contractCloseout

theorem procurement_management_closed_from_evidence (P : ProcurementManagementPackage)
    (E : ProcurementManagementEvidence P) : ProcurementManagementClosed P := by
  exact And.intro E.procurementPlanningClosed
    (And.intro E.solicitationClosed
      (And.intro E.sourceSelectionClosed
        (And.intro E.contractAdministrationClosed E.contractCloseoutClosed)))

end CivilEngineeringProjectManagementCanonicalLaneLean
end HautevilleHouse