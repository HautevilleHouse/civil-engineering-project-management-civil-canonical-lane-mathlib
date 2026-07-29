import canonicalLaneMathlib.AdmissibleClass

/-!
# Earned Value Management Package
-/

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivilCanonicalLaneLean

structure EarnedValueManagementPackage where
  plannedValue : Prop
  earnedValue : Prop
  actualCost : Prop
  performanceIndices : Prop

structure EarnedValueManagementEvidence (E : EarnedValueManagementPackage) where
  plannedValueClosed : E.plannedValue
  earnedValueClosed : E.earnedValue
  actualCostClosed : E.actualCost
  performanceIndicesClosed : E.performanceIndices

def EarnedValueManagementClosed (E : EarnedValueManagementPackage) : Prop :=
  E.plannedValue ∧ E.earnedValue ∧ E.actualCost ∧ E.performanceIndices

theorem earned_value_management_closed_from_evidence (E : EarnedValueManagementPackage)
    (Ev : EarnedValueManagementEvidence E) : EarnedValueManagementClosed E := by
  exact And.intro Ev.plannedValueClosed
    (And.intro Ev.earnedValueClosed
      (And.intro Ev.actualCostClosed Ev.performanceIndicesClosed))

end CivilEngineeringProjectManagementCivilCanonicalLaneLean
end HautevilleHouse