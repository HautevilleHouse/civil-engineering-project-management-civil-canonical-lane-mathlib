import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCanonicalLaneLean

structure ScheduleManagementPackage where
  activityDefinition : Prop
  activitySequencing : Prop
  durationEstimating : Prop
  scheduleDevelopment : Prop
  scheduleControl : Prop

structure ScheduleManagementEvidence (S : ScheduleManagementPackage) where
  activityDefinitionClosed : S.activityDefinition
  activitySequencingClosed : S.activitySequencing
  durationEstimatingClosed : S.durationEstimating
  scheduleDevelopmentClosed : S.scheduleDevelopment
  scheduleControlClosed : S.scheduleControl

def ScheduleManagementClosed (S : ScheduleManagementPackage) : Prop :=
  S.activityDefinition ∧ S.activitySequencing ∧
  S.durationEstimating ∧ S.scheduleDevelopment ∧ S.scheduleControl

theorem schedule_management_closed_from_evidence (S : ScheduleManagementPackage)
    (E : ScheduleManagementEvidence S) : ScheduleManagementClosed S := by
  exact And.intro E.activityDefinitionClosed
    (And.intro E.activitySequencingClosed
      (And.intro E.durationEstimatingClosed
        (And.intro E.scheduleDevelopmentClosed E.scheduleControlClosed)))

end CivilEngineeringProjectManagementCanonicalLaneLean
end HautevilleHouse