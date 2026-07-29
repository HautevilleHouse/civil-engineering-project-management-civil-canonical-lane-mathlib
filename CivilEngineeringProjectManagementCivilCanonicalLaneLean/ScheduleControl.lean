import HautevilleHouse.CivilEngineeringProjectManagementCivil.CostRiskAnalysis

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivil

structure ScheduleControlPackage (P : CivilEngineeringAdmittedObject) where
  criticalPathIdentified : Prop
  milestoneScheduleDefined : Prop
  resourceAllocationPlan : Prop
  scheduleReserveDays : Prop
  criticalPathIdentifiedClosed : criticalPathIdentified
  milestoneScheduleDefinedClosed : milestoneScheduleDefined
  resourceAllocationPlanClosed : resourceAllocationPlan
  scheduleReserveDaysClosed : scheduleReserveDays

def ScheduleControlClosed (P : CivilEngineeringAdmittedObject) (S : ScheduleControlPackage P) : Prop :=
  S.criticalPathIdentified ∧ S.milestoneScheduleDefined ∧ S.resourceAllocationPlan ∧ S.scheduleReserveDays

theorem schedule_control_closed_from_evidence (P : CivilEngineeringAdmittedObject) (S : ScheduleControlPackage P) : ScheduleControlClosed P S := by
  exact And.intro S.criticalPathIdentifiedClosed (And.intro S.milestoneScheduleDefinedClosed (And.intro S.resourceAllocationPlanClosed S.scheduleReserveDaysClosed))

end CivilEngineeringProjectManagementCivil
end HautevilleHouse
