import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCanonicalLaneLean

structure ProjectPlanningPackage where
  scopeDefinition : Prop
  workBreakdownStructure : Prop
  scheduleDevelopment : Prop
  resourceAllocation : Prop
  riskManagementPlan : Prop

structure ProjectPlanningEvidence (P : ProjectPlanningPackage) where
  scopeDefinitionClosed : P.scopeDefinition
  workBreakdownStructureClosed : P.workBreakdownStructure
  scheduleDevelopmentClosed : P.scheduleDevelopment
  resourceAllocationClosed : P.resourceAllocation
  riskManagementPlanClosed : P.riskManagementPlan

def ProjectPlanningClosed (P : ProjectPlanningPackage) : Prop :=
  P.scopeDefinition ∧ P.workBreakdownStructure ∧
  P.scheduleDevelopment ∧ P.resourceAllocation ∧ P.riskManagementPlan

theorem project_planning_closed_from_evidence (P : ProjectPlanningPackage)
    (E : ProjectPlanningEvidence P) : ProjectPlanningClosed P := by
  exact And.intro E.scopeDefinitionClosed
    (And.intro E.workBreakdownStructureClosed
      (And.intro E.scheduleDevelopmentClosed
        (And.intro E.resourceAllocationClosed E.riskManagementPlanClosed)))

end CivilEngineeringProjectManagementCanonicalLaneLean
end HautevilleHouse