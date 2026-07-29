import CivilEngineeringProjectManagementCanonicalLaneLean.CivilEngineeringProjectManagementCanonicalLaneLean

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCanonicalLaneLean

structure CivilEngineeringAdmittedObject where
  project : String
  contractClosed : ProjectContractClosed (ProjectContractPackage.mk [] True True True True)
  scheduleClosed : ScheduleAndCostControlClosed (ScheduleAndCostControlPackage.mk True True True True True)
  riskClosed : RiskAndQualityManagementClosed (RiskAndQualityManagementPackage.mk True True True True True)
  stakeholderClosed : StakeholderAndCommunicationManagementClosed (StakeholderAndCommunicationManagementPackage.mk True True True True True)

structure AdmissibleClass where
  object : CivilEngineeringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end CivilEngineeringProjectManagementCanonicalLaneLean
end HautevilleHouse