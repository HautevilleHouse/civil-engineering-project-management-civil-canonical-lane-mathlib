import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivil

structure ProjectSchedulePackage where
  criticalPathActivity : Type
  durationEstimates : Type
  earlyStartLateFinish : Prop
  totalFloat : Prop
  scheduleRiskMargin : Prop

structure ProjectScheduleEvidence (P : ProjectSchedulePackage) where
  criticalPathActivityClosed : P.criticalPathActivity
  durationEstimatesClosed : P.durationEstimates
  earlyStartLateFinishClosed : P.earlyStartLateFinish
  totalFloatClosed : P.totalFloat
  scheduleRiskMarginClosed : P.scheduleRiskMargin

def ProjectScheduleClosed (P : ProjectSchedulePackage) : Prop :=
  P.criticalPathActivity ∧ P.durationEstimates ∧
  P.earlyStartLateFinish ∧ P.totalFloat ∧ P.scheduleRiskMargin

theorem project_schedule_closed_from_evidence (P : ProjectSchedulePackage)
    (E : ProjectScheduleEvidence P) : ProjectScheduleClosed P := by
  exact And.intro E.criticalPathActivityClosed
    (And.intro E.durationEstimatesClosed
      (And.intro E.earlyStartLateFinishClosed
        (And.intro E.totalFloatClosed E.scheduleRiskMarginClosed)))

end CivilEngineeringProjectManagementCivil
end HautevilleHouse