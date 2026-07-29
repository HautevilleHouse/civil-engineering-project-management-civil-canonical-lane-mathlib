import HautevilleHouse.CivilEngineeringProjectManagementCivil.ScheduleControl

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivil

structure QualityAssurancePackage (P : CivilEngineeringAdmittedObject) where
  inspectionPlanDeveloped : Prop
  testingProtocolDefined : Prop
  nonConformanceReporting : Prop
  qualityAuditSchedule : Prop
  inspectionPlanDevelopedClosed : inspectionPlanDeveloped
  testingProtocolDefinedClosed : testingProtocolDefined
  nonConformanceReportingClosed : nonConformanceReporting
  qualityAuditScheduleClosed : qualityAuditSchedule

def QualityAssuranceClosed (P : CivilEngineeringAdmittedObject) (Q : QualityAssurancePackage P) : Prop :=
  Q.inspectionPlanDeveloped ∧ Q.testingProtocolDefined ∧ Q.nonConformanceReporting ∧ Q.qualityAuditSchedule

theorem quality_assurance_closed_from_evidence (P : CivilEngineeringAdmittedObject) (Q : QualityAssurancePackage P) : QualityAssuranceClosed P Q := by
  exact And.intro Q.inspectionPlanDevelopedClosed (And.intro Q.testingProtocolDefinedClosed (And.intro Q.nonConformanceReportingClosed Q.qualityAuditScheduleClosed))

end CivilEngineeringProjectManagementCivil
end HautevilleHouse
