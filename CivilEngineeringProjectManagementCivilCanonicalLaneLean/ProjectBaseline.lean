import canonicalLaneMathlib.AdmissibleClass

/-!
# Project Baseline Package
-/

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivilCanonicalLaneLean

structure ProjectBaselinePackage where
  initialSchedule : Prop
  costEstimate : Prop
  resourceAllocation : Prop
  riskAssessment : Prop

structure ProjectBaselineEvidence (Z : ProjectBaselinePackage) where
  initialScheduleClosed : Z.initialSchedule
  costEstimateClosed : Z.costEstimate
  resourceAllocationClosed : Z.resourceAllocation
  riskAssessmentClosed : Z.riskAssessment

def ProjectBaselineClosed (Z : ProjectBaselinePackage) : Prop :=
  Z.initialSchedule ∧ Z.costEstimate ∧ Z.resourceAllocation ∧ Z.riskAssessment

theorem project_baseline_closed_from_evidence (Z : ProjectBaselinePackage)
    (E : ProjectBaselineEvidence Z) : ProjectBaselineClosed Z := by
  exact And.intro E.initialScheduleClosed
    (And.intro E.costEstimateClosed
      (And.intro E.resourceAllocationClosed E.riskAssessmentClosed))

end CivilEngineeringProjectManagementCivilCanonicalLaneLean
end HautevilleHouse