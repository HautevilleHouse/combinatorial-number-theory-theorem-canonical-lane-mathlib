import HautevilleHouse.CombinatorialNumberTheoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialNumberTheoryTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  refine ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.operatorModelChecked,
    A.object.spectralPersistenceBridgeChecked,
    A.object.sourceBoundaryLedgerChecked,
    A.object.classicalRemainderCarried⟩

end CombinatorialNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse