import canonicalLaneMathlib.AdmissibleClass

/-!
# Sustainability Assessment Package
-/

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivilCanonicalLaneLean

structure SustainabilityAssessmentPackage where
  environmentalImpact : Prop
  socialImpact : Prop
  economicImpact : Prop
  sustainabilityMetrics : Prop

structure SustainabilityAssessmentEvidence (S : SustainabilityAssessmentPackage) where
  environmentalImpactClosed : S.environmentalImpact
  socialImpactClosed : S.socialImpact
  economicImpactClosed : S.economicImpact
  sustainabilityMetricsClosed : S.sustainabilityMetrics

def SustainabilityAssessmentClosed (S : SustainabilityAssessmentPackage) : Prop :=
  S.environmentalImpact ∧ S.socialImpact ∧ S.economicImpact ∧ S.sustainabilityMetrics

theorem sustainability_assessment_closed_from_evidence (S : SustainabilityAssessmentPackage)
    (E : SustainabilityAssessmentEvidence S) : SustainabilityAssessmentClosed S := by
  exact And.intro E.environmentalImpactClosed
    (And.intro E.socialImpactClosed
      (And.intro E.economicImpactClosed E.sustainabilityMetricsClosed))

end CivilEngineeringProjectManagementCivilCanonicalLaneLean
end HautevilleHouse