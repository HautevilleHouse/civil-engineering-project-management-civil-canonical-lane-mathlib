import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivilCanonicalLaneLean

structure CostEstimationPackage where
  quantityTakeoff : Prop
  unitRates : Prop
  contingency : Prop
  escalation : Prop
  totalCostValid : Prop

structure CostEstimationEvidence (C : CostEstimationPackage) where
  quantityTakeoffClosed : C.quantityTakeoff
  unitRatesClosed : C.unitRates
  contingencyClosed : C.contingency
  escalationClosed : C.escalation
  totalCostValidClosed : C.totalCostValid

def CostEstimationClosed (C : CostEstimationPackage) : Prop :=
  C.quantityTakeoff ∧ C.unitRates ∧ C.contingency ∧ C.escalation ∧ C.totalCostValid

theorem cost_estimation_closed_from_evidence (C : CostEstimationPackage) (E : CostEstimationEvidence C) : CostEstimationClosed C := by
  exact And.intro E.quantityTakeoffClosed
    (And.intro E.unitRatesClosed
      (And.intro E.contingencyClosed
        (And.intro E.escalationClosed E.totalCostValidClosed)))

end CivilEngineeringProjectManagementCivilCanonicalLaneLean
end HautevilleHouse