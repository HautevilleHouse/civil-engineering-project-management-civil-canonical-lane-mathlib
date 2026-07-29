import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivil

structure CivilEngineeringAdmittedObject where
  project : String
  scopeDefined : Prop
  budgetApproved : Prop
  scheduleApproved : Prop
  qualityChecklistComplete : Prop
  conclusion : scopeDefined ∧ budgetApproved ∧ scheduleApproved ∧ qualityChecklistComplete

def CivilEngineeringWitnessClosed (O : CivilEngineeringAdmittedObject) : Prop :=
  O.conclusion

end CivilEngineeringProjectManagementCivil
end HautevilleHouse
