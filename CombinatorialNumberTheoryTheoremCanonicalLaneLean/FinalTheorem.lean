import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialNumberTheoryTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CombinatorialNumberTheoryTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CombinatorialNumberTheoryTheoremCanonicalLaneLean

def ConstrainedCombinatorialNumberTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_combinatorial_number_theory_closure (A : AdmissibleClass) :
    ConstrainedCombinatorialNumberTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse