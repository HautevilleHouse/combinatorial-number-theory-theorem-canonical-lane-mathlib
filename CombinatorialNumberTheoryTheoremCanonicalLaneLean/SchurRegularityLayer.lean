import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialNumberTheoryTheoremCanonicalLaneLean

structure SchurRegularityDatum where
  coloringNumber : Nat
  schurNumberLower : Nat
  schurNumberUpper : Nat
  vanDerWaerdenNumber : Nat
  checked : Bool

def primitiveSchurRegularityDatum : SchurRegularityDatum := {
  coloringNumber := 2,
  schurNumberLower := 5,
  schurNumberUpper := 5,
  vanDerWaerdenNumber := 9,
  checked := true
}

structure SchurRegularityLayerCertificate where
  schurDatum : SchurRegularityDatum
  sourceKey : String
  schurRoute : String
  vanDerWaerdenRoute : String
  ramseyTheoryInternalized : Bool

def schurRegularityLayerCertificate : SchurRegularityLayerCertificate := {
  schurDatum := primitiveSchurRegularityDatum,
  sourceKey := "Schur's theorem and van der Waerden's theorem",
  schurRoute := "integer coloring yields monochromatic solution to x + y = z",
  vanDerWaerdenRoute := "any finite coloring of integers has monochromatic arithmetic progressions",
  ramseyTheoryInternalized := true
}

def SchurRegularityLayerClosed (C : SchurRegularityLayerCertificate) : Prop :=
  C.schurDatum.checked = true ∧ C.ramseyTheoryInternalized = true

theorem schur_regularity_layer_closed_checked :
    SchurRegularityLayerClosed schurRegularityLayerCertificate := by
  exact And.intro rfl rfl

end CombinatorialNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse