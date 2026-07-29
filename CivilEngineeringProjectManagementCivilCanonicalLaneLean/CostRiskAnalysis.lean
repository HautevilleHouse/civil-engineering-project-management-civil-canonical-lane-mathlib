import HautevilleHouse.CivilEngineeringProjectManagementCivil.CivilEngineeringBridgeGate

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivil

structure CostRiskPackage (P : CivilEngineeringAdmittedObject) where
  baseCostEstimated : Prop
  contingencyReserve : Prop
  riskRegisterComplete : Prop
  costOverrunThresholds : Prop
  baseCostEstimatedClosed : baseCostEstimated
  contingencyReserveClosed : contingencyReserve
  riskRegisterCompleteClosed : riskRegisterComplete
  costOverrunThresholdsClosed : costOverrunThresholds

def CostRiskClosed (P : CivilEngineeringAdmittedObject) (C : CostRiskPackage P) : Prop :=
  C.baseCostEstimated ∧ C.contingencyReserve ∧ C.riskRegisterComplete ∧ C.costOverrunThresholds

theorem cost_risk_closed_from_evidence (P : CivilEngineeringAdmittedObject) (C : CostRiskPackage P) : CostRiskClosed P C := by
  exact And.intro C.baseCostEstimatedClosed (And.intro C.contingencyReserveClosed (And.intro C.riskRegisterCompleteClosed C.costOverrunThresholdsClosed))

end CivilEngineeringProjectManagementCivil
end HautevilleHouse
