import CivilEngineeringProjectManagementCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCanonicalLaneLean

structure RiskAndQualityManagementPackage where
  riskAssessment : Prop
  qualityAssurance : Prop
  qualityControl : Prop
  riskMitigation : Prop
  continuousImprovement : Prop

structure RiskAndQualityManagementEvidence (R : RiskAndQualityManagementPackage) where
  riskAssessmentClosed : R.riskAssessment
  qualityAssuranceClosed : R.qualityAssurance
  qualityControlClosed : R.qualityControl
  riskMitigationClosed : R.riskMitigation
  continuousImprovementClosed : R.continuousImprovement

def RiskAndQualityManagementClosed (R : RiskAndQualityManagementPackage) : Prop :=
  R.riskAssessment ∧ R.qualityAssurance ∧ R.qualityControl ∧ R.riskMitigation ∧ R.continuousImprovement

theorem risk_and_quality_management_closed_from_evidence (R : RiskAndQualityManagementPackage) (E : RiskAndQualityManagementEvidence R) : RiskAndQualityManagementClosed R := by
  exact And.intro E.riskAssessmentClosed (And.intro E.qualityAssuranceClosed (And.intro E.qualityControlClosed (And.intro E.riskMitigationClosed E.continuousImprovementClosed)))

end CivilEngineeringProjectManagementCanonicalLaneLean
end HautevilleHouse