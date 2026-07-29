import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivil

structure StakeholderCommunicationPackage where
  stakeholderRegister : Type
  communicationPlan : Type
  engagementStrategy : Prop
  reportingSchedule : Prop
  feedbackLoop : Prop

structure StakeholderCommunicationEvidence (S : StakeholderCommunicationPackage) where
  stakeholderRegisterClosed : S.stakeholderRegister
  communicationPlanClosed : S.communicationPlan
  engagementStrategyClosed : S.engagementStrategy
  reportingScheduleClosed : S.reportingSchedule
  feedbackLoopClosed : S.feedbackLoop

def StakeholderCommunicationClosed (S : StakeholderCommunicationPackage) : Prop :=
  S.stakeholderRegister ∧ S.communicationPlan ∧
  S.engagementStrategy ∧ S.reportingSchedule ∧ S.feedbackLoop

theorem stakeholder_communication_closed_from_evidence
    (S : StakeholderCommunicationPackage)
    (E : StakeholderCommunicationEvidence S) : StakeholderCommunicationClosed S := by
  exact And.intro E.stakeholderRegisterClosed
    (And.intro E.communicationPlanClosed
      (And.intro E.engagementStrategyClosed
        (And.intro E.reportingScheduleClosed E.feedbackLoopClosed)))

end CivilEngineeringProjectManagementCivil
end HautevilleHouse