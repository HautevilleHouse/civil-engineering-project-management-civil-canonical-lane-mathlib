import canonicalLaneMathlib.AdmissibleClass

/-!
# Critical Path Method Package
-/

namespace HautevilleHouse
namespace CivilEngineeringProjectManagementCivilCanonicalLaneLean

structure CriticalPathMethodPackage where
  activitySequence : Prop
  dependencyAnalysis : Prop
  floatComputation : Prop
  criticalPathIdentified : Prop

structure CriticalPathMethodEvidence (C : CriticalPathMethodPackage) where
  activitySequenceClosed : C.activitySequence
  dependencyAnalysisClosed : C.dependencyAnalysis
  floatComputationClosed : C.floatComputation
  criticalPathIdentifiedClosed : C.criticalPathIdentified

def CriticalPathMethodClosed (C : CriticalPathMethodPackage) : Prop :=
  C.activitySequence ∧ C.dependencyAnalysis ∧ C.floatComputation ∧ C.criticalPathIdentified

theorem critical_path_method_closed_from_evidence (C : CriticalPathMethodPackage)
    (E : CriticalPathMethodEvidence C) : CriticalPathMethodClosed C := by
  exact And.intro E.activitySequenceClosed
    (And.intro E.dependencyAnalysisClosed
      (And.intro E.floatComputationClosed E.criticalPathIdentifiedClosed))

end CivilEngineeringProjectManagementCivilCanonicalLaneLean
end HautevilleHouse