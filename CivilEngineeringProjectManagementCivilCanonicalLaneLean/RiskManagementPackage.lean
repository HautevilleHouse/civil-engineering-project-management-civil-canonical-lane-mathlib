import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivil

structure RiskManagementPackage where
  riskRegister : Type
  probabilityImpactMatrix : Type
  riskResponsePlan : Prop
  contingencyAllocation : Prop
  residualRiskAcceptance : Prop

structure RiskManagementEvidence (R : RiskManagementPackage) where
  riskRegisterClosed : R.riskRegister
  probabilityImpactMatrixClosed : R.probabilityImpactMatrix
  riskResponsePlanClosed : R.riskResponsePlan
  contingencyAllocationClosed : R.contingencyAllocation
  residualRiskAcceptanceClosed : R.residualRiskAcceptance

def RiskManagementClosed (R : RiskManagementPackage) : Prop :=
  R.riskRegister ∧ R.probabilityImpactMatrix ∧
  R.riskResponsePlan ∧ R.contingencyAllocation ∧ R.residualRiskAcceptance

theorem risk_management_closed_from_evidence (R : RiskManagementPackage)
    (E : RiskManagementEvidence R) : RiskManagementClosed R := by
  exact And.intro E.riskRegisterClosed
    (And.intro E.probabilityImpactMatrixClosed
      (And.intro E.riskResponsePlanClosed
        (And.intro E.contingencyAllocationClosed E.residualRiskAcceptanceClosed)))

end CivilEngineeringProjectManagementCivil
end HautevilleHouse