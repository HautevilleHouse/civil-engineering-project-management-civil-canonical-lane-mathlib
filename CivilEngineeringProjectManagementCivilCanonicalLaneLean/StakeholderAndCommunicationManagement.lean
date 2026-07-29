import CivilEngineeringProjectManagementCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCanonicalLaneLean

structure StakeholderAndCommunicationManagementPackage where
  stakeholderIdentification : Prop
  communicationPlan : Prop
  engagementStrategy : Prop
  conflictResolution : Prop
  reportingStructure : Prop

structure StakeholderAndCommunicationManagementEvidence (S : StakeholderAndCommunicationManagementPackage) where
  stakeholderIdentificationClosed : S.stakeholderIdentification
  communicationPlanClosed : S.communicationPlan
  engagementStrategyClosed : S.engagementStrategy
  conflictResolutionClosed : S.conflictResolution
  reportingStructureClosed : S.reportingStructure

def StakeholderAndCommunicationManagementClosed (S : StakeholderAndCommunicationManagementPackage) : Prop :=
  S.stakeholderIdentification ∧ S.communicationPlan ∧ S.engagementStrategy ∧ S.conflictResolution ∧ S.reportingStructure

theorem stakeholder_and_communication_management_closed_from_evidence (S : StakeholderAndCommunicationManagementPackage) (E : StakeholderAndCommunicationManagementEvidence S) : StakeholderAndCommunicationManagementClosed S := by
  exact And.intro E.stakeholderIdentificationClosed (And.intro E.communicationPlanClosed (And.intro E.engagementStrategyClosed (And.intro E.conflictResolutionClosed E.reportingStructureClosed)))

end CivilEngineeringProjectManagementCanonicalLaneLean
end HautevilleHouse