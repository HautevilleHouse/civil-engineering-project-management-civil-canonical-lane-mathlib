import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivilCanonicalLaneLean

structure ScheduleManagementPackage where
  workBreakdownStructure : Prop
  criticalPathMethod : Prop
  resourceAllocation : Prop
  scheduleCompression : Prop
  delayAnalysis : Prop

structure ScheduleManagementEvidence (S : ScheduleManagementPackage) where
  workBreakdownStructureClosed : S.workBreakdownStructure
  criticalPathMethodClosed : S.criticalPathMethod
  resourceAllocationClosed : S.resourceAllocation
  scheduleCompressionClosed : S.scheduleCompression
  delayAnalysisClosed : S.delayAnalysis

def ScheduleManagementClosed (S : ScheduleManagementPackage) : Prop :=
  S.workBreakdownStructure ∧ S.criticalPathMethod ∧ S.resourceAllocation ∧ S.scheduleCompression ∧ S.delayAnalysis

theorem schedule_management_closed_from_evidence (S : ScheduleManagementPackage) (E : ScheduleManagementEvidence S) : ScheduleManagementClosed S := by
  exact And.intro E.workBreakdownStructureClosed
    (And.intro E.criticalPathMethodClosed
      (And.intro E.resourceAllocationClosed
        (And.intro E.scheduleCompressionClosed E.delayAnalysisClosed)))

end CivilEngineeringProjectManagementCivilCanonicalLaneLean
end HautevilleHouse