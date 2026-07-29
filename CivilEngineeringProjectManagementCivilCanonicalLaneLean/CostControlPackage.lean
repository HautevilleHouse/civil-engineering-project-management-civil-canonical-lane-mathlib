import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivil

structure CostControlPackage where
  budgetBaseline : Type
  earnedValueMetrics : Type
  costPerformanceIndex : Prop
  estimateAtCompletion : Prop
  contingencyReserve : Prop

structure CostControlEvidence (C : CostControlPackage) where
  budgetBaselineClosed : C.budgetBaseline
  earnedValueMetricsClosed : C.earnedValueMetrics
  costPerformanceIndexClosed : C.costPerformanceIndex
  estimateAtCompletionClosed : C.estimateAtCompletion
  contingencyReserveClosed : C.contingencyReserve

def CostControlClosed (C : CostControlPackage) : Prop :=
  C.budgetBaseline ∧ C.earnedValueMetrics ∧
  C.costPerformanceIndex ∧ C.estimateAtCompletion ∧ C.contingencyReserve

theorem cost_control_closed_from_evidence (C : CostControlPackage)
    (E : CostControlEvidence C) : CostControlClosed C := by
  exact And.intro E.budgetBaselineClosed
    (And.intro E.earnedValueMetricsClosed
      (And.intro E.costPerformanceIndexClosed
        (And.intro E.estimateAtCompletionClosed E.contingencyReserveClosed)))

end CivilEngineeringProjectManagementCivil
end HautevilleHouse