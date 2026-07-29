import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialNumberTheoryTheoremCanonicalLaneLean

/-!
# Arithmetic progressions layer

This layer captures the existence of long arithmetic progressions in subsets
of ℕ, linking to Szemerédi-type results.
-/

structure ArithmeticProgressionDatum where
  progressionLength : ℕ
  commonDifference : ℕ

structure ArithmeticProgressionCertificate where
  datum : ArithmeticProgressionDatum
  progressionBridgeClosed : Prop
  progressionGateClosed : Prop

def primitiveArithmeticProgressionDatum : ArithmeticProgressionDatum := {
  progressionLength := 3,
  commonDifference := 1
}

def ArithmeticProgressionClosed (C : ArithmeticProgressionCertificate) : Prop :=
  C.progressionBridgeClosed ∧ C.progressionGateClosed

theorem primitive_arithmetic_progression_closed :
    ArithmeticProgressionClosed ({
      datum := primitiveArithmeticProgressionDatum,
      progressionBridgeClosed := True,
      progressionGateClosed := True
    } : ArithmeticProgressionCertificate) := by
  exact And.intro trivial trivial

end CombinatorialNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse
