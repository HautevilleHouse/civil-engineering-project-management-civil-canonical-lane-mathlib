import CivilEngineeringProjectManagementCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CivilEngineeringProjectManagementCanonicalLaneLean
end HautevilleHouse