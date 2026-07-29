import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivil

structure QualityAssurancePackage where
  qualityPlan : Type
  inspectionProtocol : Type
  nonConformanceTracking : Prop
  correctiveActionWorkflow : Prop
  qualityMetricsTarget : Prop

structure QualityAssuranceEvidence (Q : QualityAssurancePackage) where
  qualityPlanClosed : Q.qualityPlan
  inspectionProtocolClosed : Q.inspectionProtocol
  nonConformanceTrackingClosed : Q.nonConformanceTracking
  correctiveActionWorkflowClosed : Q.correctiveActionWorkflow
  qualityMetricsTargetClosed : Q.qualityMetricsTarget

def QualityAssuranceClosed (Q : QualityAssurancePackage) : Prop :=
  Q.qualityPlan ∧ Q.inspectionProtocol ∧
  Q.nonConformanceTracking ∧ Q.correctiveActionWorkflow ∧ Q.qualityMetricsTarget

theorem quality_assurance_closed_from_evidence (Q : QualityAssurancePackage)
    (E : QualityAssuranceEvidence Q) : QualityAssuranceClosed Q := by
  exact And.intro E.qualityPlanClosed
    (And.intro E.inspectionProtocolClosed
      (And.intro E.nonConformanceTrackingClosed
        (And.intro E.correctiveActionWorkflowClosed E.qualityMetricsTargetClosed)))

end CivilEngineeringProjectManagementCivil
end HautevilleHouse