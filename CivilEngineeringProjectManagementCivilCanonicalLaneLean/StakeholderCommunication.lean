import HautevilleHouse.CivilEngineeringProjectManagementCivil.QualityAssurance

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivil

structure StakeholderCommunicationPackage (P : CivilEngineeringAdmittedObject) where
  communicationPlanDeveloped : Prop
  stakeholderRegisterMaintained : Prop
  meetingScheduleDefined : Prop
  reportingCadenceDefined : Prop
  communicationPlanDevelopedClosed : communicationPlanDeveloped
  stakeholderRegisterMaintainedClosed : stakeholderRegisterMaintained
  meetingScheduleDefinedClosed : meetingScheduleDefined
  reportingCadenceDefinedClosed : reportingCadenceDefined

def StakeholderCommunicationClosed (P : CivilEngineeringAdmittedObject) (S : StakeholderCommunicationPackage P) : Prop :=
  S.communicationPlanDeveloped ∧ S.stakeholderRegisterMaintained ∧ S.meetingScheduleDefined ∧ S.reportingCadenceDefined

theorem stakeholder_communication_closed_from_evidence (P : CivilEngineeringAdmittedObject) (S : StakeholderCommunicationPackage P) : StakeholderCommunicationClosed P S := by
  exact And.intro S.communicationPlanDevelopedClosed (And.intro S.stakeholderRegisterMaintainedClosed (And.intro S.meetingScheduleDefinedClosed S.reportingCadenceDefinedClosed))

end CivilEngineeringProjectManagementCivil
end HautevilleHouse
