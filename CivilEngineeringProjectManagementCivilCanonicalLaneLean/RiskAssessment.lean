import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivilCanonicalLaneLean

structure RiskAssessmentPackage where
  riskIdentification : Prop
  riskAnalysis : Prop
  riskResponsePlanning : Prop
  riskMonitoring : Prop

structure RiskAssessmentEvidence (R : RiskAssessmentPackage) where
  riskIdentificationClosed : R.riskIdentification
  riskAnalysisClosed : R.riskAnalysis
  riskResponsePlanningClosed : R.riskResponsePlanning
  riskMonitoringClosed : R.riskMonitoring

def RiskAssessmentClosed (R : RiskAssessmentPackage) : Prop :=
  R.riskIdentification ∧ R.riskAnalysis ∧ R.riskResponsePlanning ∧ R.riskMonitoring

theorem risk_assessment_closed_from_evidence (R : RiskAssessmentPackage) (E : RiskAssessmentEvidence R) : RiskAssessmentClosed R := by
  exact And.intro E.riskIdentificationClosed
    (And.intro E.riskAnalysisClosed
      (And.intro E.riskResponsePlanningClosed E.riskMonitoringClosed))

end CivilEngineeringProjectManagementCivilCanonicalLaneLean
end HautevilleHouse