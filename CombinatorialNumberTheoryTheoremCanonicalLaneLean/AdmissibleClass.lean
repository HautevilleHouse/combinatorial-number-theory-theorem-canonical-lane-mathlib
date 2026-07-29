import HautevilleHouse.CombinatorialNumberTheoryTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace CombinatorialNumberTheoryTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse