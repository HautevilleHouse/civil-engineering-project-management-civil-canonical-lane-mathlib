import CivilEngineeringProjectManagementCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCanonicalLaneLean

def ConstrainedCivilEngineeringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_civil_engineering_endgame (A : AdmissibleClass) : ConstrainedCivilEngineeringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CivilEngineeringProjectManagementCanonicalLaneLean
end HautevilleHouse