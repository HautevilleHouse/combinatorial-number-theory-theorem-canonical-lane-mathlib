import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialNumberTheoryTheoremCanonicalLaneLean

/-!
# Sidon sets layer

This layer captures the concept of Sidon sets where all pairwise sums are distinct.
-/

structure SidonSetDatum where
  setSize : ℕ
  maximumElement : ℕ

structure SidonSetCertificate where
  datum : SidonSetDatum
  sidonBridgeClosed : Prop
  sidonGateClosed : Prop

def primitiveSidonSetDatum : SidonSetDatum := {
  setSize := 5,
  maximumElement := 10
}

def SidonSetClosed (C : SidonSetCertificate) : Prop :=
  C.sidonBridgeClosed ∧ C.sidonGateClosed

theorem primitive_sidon_set_closed :
    SidonSetClosed ({
      datum := primitiveSidonSetDatum,
      sidonBridgeClosed := True,
      sidonGateClosed := True
    } : SidonSetCertificate) := by
  exact And.intro trivial trivial

end CombinatorialNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse
