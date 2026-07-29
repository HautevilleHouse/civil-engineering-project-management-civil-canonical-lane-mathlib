import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCanonicalLaneLean

structure QualityManagementPackage where
  qualityPolicy : Prop
  qualityAssurance : Prop
  qualityControl : Prop
  continuousImprovement : Prop
  nonConformanceManagement : Prop

structure QualityManagementEvidence (Q : QualityManagementPackage) where
  qualityPolicyClosed : Q.qualityPolicy
  qualityAssuranceClosed : Q.qualityAssurance
  qualityControlClosed : Q.qualityControl
  continuousImprovementClosed : Q.continuousImprovement
  nonConformanceManagementClosed : Q.nonConformanceManagement

def QualityManagementClosed (Q : QualityManagementPackage) : Prop :=
  Q.qualityPolicy ∧ Q.qualityAssurance ∧
  Q.qualityControl ∧ Q.continuousImprovement ∧ Q.nonConformanceManagement

theorem quality_management_closed_from_evidence (Q : QualityManagementPackage)
    (E : QualityManagementEvidence Q) : QualityManagementClosed Q := by
  exact And.intro E.qualityPolicyClosed
    (And.intro E.qualityAssuranceClosed
      (And.intro E.qualityControlClosed
        (And.intro E.continuousImprovementClosed E.nonConformanceManagementClosed)))

end CivilEngineeringProjectManagementCanonicalLaneLean
end HautevilleHouse