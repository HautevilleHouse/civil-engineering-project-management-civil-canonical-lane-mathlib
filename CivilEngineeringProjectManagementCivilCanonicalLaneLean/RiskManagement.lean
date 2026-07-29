import canonicalLaneMathlib.AdmissibleClass

/-!
# Risk Management Package
-/

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivilCanonicalLaneLean

structure RiskManagementPackage where
  riskIdentification : Prop
  riskAnalysis : Prop
  riskResponsePlanning : Prop
  riskMonitoring : Prop

structure RiskManagementEvidence (R : RiskManagementPackage) where
  riskIdentificationClosed : R.riskIdentification
  riskAnalysisClosed : R.riskAnalysis
  riskResponsePlanningClosed : R.riskResponsePlanning
  riskMonitoringClosed : R.riskMonitoring

def RiskManagementClosed (R : RiskManagementPackage) : Prop :=
  R.riskIdentification ∧ R.riskAnalysis ∧ R.riskResponsePlanning ∧ R.riskMonitoring

theorem risk_management_closed_from_evidence (R : RiskManagementPackage)
    (E : RiskManagementEvidence R) : RiskManagementClosed R := by
  exact And.intro E.riskIdentificationClosed
    (And.intro E.riskAnalysisClosed
      (And.intro E.riskResponsePlanningClosed E.riskMonitoringClosed))

end CivilEngineeringProjectManagementCivilCanonicalLaneLean
end HautevilleHouse