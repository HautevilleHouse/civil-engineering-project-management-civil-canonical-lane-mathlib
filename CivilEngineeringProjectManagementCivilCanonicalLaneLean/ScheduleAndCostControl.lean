import CivilEngineeringProjectManagementCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCanonicalLaneLean

structure ScheduleAndCostControlPackage where
  criticalPathMethod : Prop
  earnedValueManagement : Prop
  costEstimation : Prop
  scheduleBaseline : Prop
  varianceAnalysis : Prop

structure ScheduleAndCostControlEvidence (S : ScheduleAndCostControlPackage) where
  criticalPathMethodClosed : S.criticalPathMethod
  earnedValueManagementClosed : S.earnedValueManagement
  costEstimationClosed : S.costEstimation
  scheduleBaselineClosed : S.scheduleBaseline
  varianceAnalysisClosed : S.varianceAnalysis

def ScheduleAndCostControlClosed (S : ScheduleAndCostControlPackage) : Prop :=
  S.criticalPathMethod ∧ S.earnedValueManagement ∧ S.costEstimation ∧ S.scheduleBaseline ∧ S.varianceAnalysis

theorem schedule_and_cost_control_closed_from_evidence (S : ScheduleAndCostControlPackage) (E : ScheduleAndCostControlEvidence S) : ScheduleAndCostControlClosed S := by
  exact And.intro E.criticalPathMethodClosed (And.intro E.earnedValueManagementClosed (And.intro E.costEstimationClosed (And.intro E.scheduleBaselineClosed E.varianceAnalysisClosed)))

end CivilEngineeringProjectManagementCanonicalLaneLean
end HautevilleHouse