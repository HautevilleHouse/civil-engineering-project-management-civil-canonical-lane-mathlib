import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivil

structure ResourceAllocationPackage where
  resourcePool : Type
  demandForecast : Type
  allocationOptimization : Prop
  levelingConstraint : Prop
  utilizationTarget : Prop

structure ResourceAllocationEvidence (R : ResourceAllocationPackage) where
  resourcePoolClosed : R.resourcePool
  demandForecastClosed : R.demandForecast
  allocationOptimizationClosed : R.allocationOptimization
  levelingConstraintClosed : R.levelingConstraint
  utilizationTargetClosed : R.utilizationTarget

def ResourceAllocationClosed (R : ResourceAllocationPackage) : Prop :=
  R.resourcePool ∧ R.demandForecast ∧
  R.allocationOptimization ∧ R.levelingConstraint ∧ R.utilizationTarget

theorem resource_allocation_closed_from_evidence (R : ResourceAllocationPackage)
    (E : ResourceAllocationEvidence R) : ResourceAllocationClosed R := by
  exact And.intro E.resourcePoolClosed
    (And.intro E.demandForecastClosed
      (And.intro E.allocationOptimizationClosed
        (And.intro E.levelingConstraintClosed E.utilizationTargetClosed)))

end CivilEngineeringProjectManagementCivil
end HautevilleHouse