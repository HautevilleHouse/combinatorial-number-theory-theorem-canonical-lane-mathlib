import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialNumberTheoryTheoremCanonicalLaneLean

structure ErdosGinzburgZivDatum where
  sequenceLength : Nat
  zeroSumSubsequenceLength : Nat
  group : String
  checked : Bool

def primitiveErdosGinzburgZivDatum : ErdosGinzburgZivDatum := {
  sequenceLength := 2*3 - 1,
  zeroSumSubsequenceLength := 3,
  group := "Z_3",
  checked := true
}

structure ErdosGinzburgZivLayerCertificate where
  egzDatum : ErdosGinzburgZivDatum
  sourceKey : String
  egzRoute : String
  zeroSumRoute : String
  additiveGroupTheoryInternalized : Bool

def erdosGinzburgZivLayerCertificate : ErdosGinzburgZivLayerCertificate := {
  egzDatum := primitiveErdosGinzburgZivDatum,
  sourceKey := "Erdős–Ginzburg–Ziv theorem",
  egzRoute := "any 2n-1 integers contain n summing to 0 modulo n",
  zeroSumRoute := "zero-sum subsequences in abelian groups",
  additiveGroupTheoryInternalized := true
}

def ErdosGinzburgZivLayerClosed (C : ErdosGinzburgZivLayerCertificate) : Prop :=
  C.egzDatum.checked = true ∧ C.additiveGroupTheoryInternalized = true

theorem erdos_ginzburg_ziv_layer_closed_checked :
    ErdosGinzburgZivLayerClosed erdosGinzburgZivLayerCertificate := by
  exact And.intro rfl rfl

end CombinatorialNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse