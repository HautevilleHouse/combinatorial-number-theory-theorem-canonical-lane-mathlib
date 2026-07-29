import HautevilleHouse.CombinatorialNumberTheoryTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CombinatorialNumberTheoryTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CombinatorialNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse