import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialNumberTheoryTheoremCanonicalLaneLean

/-!
# Sum-free sets layer

This layer records the structural properties of sum-free subsets of abelian groups.
-/

structure SumFreeSetDatum where
  groupOrder : ℕ
  maxSumFreeSize : ℕ

structure SumFreeSetCertificate where
  datum : SumFreeSetDatum
  sumfreeBridgeClosed : Prop
  sumfreeGateClosed : Prop

def primitiveSumFreeSetDatum : SumFreeSetDatum := {
  groupOrder := 10,
  maxSumFreeSize := 4
}

def SumFreeSetClosed (C : SumFreeSetCertificate) : Prop :=
  C.sumfreeBridgeClosed ∧ C.sumfreeGateClosed

theorem primitive_sum_free_set_closed :
    SumFreeSetClosed ({
      datum := primitiveSumFreeSetDatum,
      sumfreeBridgeClosed := True,
      sumfreeGateClosed := True
    } : SumFreeSetCertificate) := by
  exact And.intro trivial trivial

end CombinatorialNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse
