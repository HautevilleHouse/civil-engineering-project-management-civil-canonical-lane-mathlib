import CivilEngineeringProjectManagementCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.contractClosed ∧ A.object.scheduleClosed ∧ A.object.riskClosed ∧ A.object.stakeholderClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.contractClosed (And.intro A.object.scheduleClosed (And.intro A.object.riskClosed A.object.stakeholderClosed))

end CivilEngineeringProjectManagementCanonicalLaneLean
end HautevilleHouse