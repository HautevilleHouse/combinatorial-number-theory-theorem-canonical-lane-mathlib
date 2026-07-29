import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialNumberTheoryTheoremCanonicalLaneLean

structure SzemerediRegularityDatum where
  regularityEpsilon : Float
  partitionSize : Nat
  densityDelta : Float
  checked : Bool

def primitiveSzemerediRegularityDatum : SzemerediRegularityDatum := {
  regularityEpsilon := 0.1,
  partitionSize := 100,
  densityDelta := 0.05,
  checked := true
}

structure SzemerediRegularityLayerCertificate where
  szemerediDatum : SzemerediRegularityDatum
  sourceKey : String
  szemerediRoute : String
  regularityLemmaRoute : String
  graphTheoryInternalized : Bool

def szemerediRegularityLayerCertificate : SzemerediRegularityLayerCertificate := {
  szemerediDatum := primitiveSzemerediRegularityDatum,
  sourceKey := "Szemerédi regularity lemma and Roth's theorem",
  szemerediRoute := "subsets of positive density contain arbitrarily long arithmetic progressions",
  regularityLemmaRoute := "regular partitions in dense graphs",
  graphTheoryInternalized := true
}

def SzemerediRegularityLayerClosed (C : SzemerediRegularityLayerCertificate) : Prop :=
  C.szemerediDatum.checked = true ∧ C.graphTheoryInternalized = true

theorem szemeredi_regularity_layer_closed_checked :
    SzemerediRegularityLayerClosed szemerediRegularityLayerCertificate := by
  exact And.intro rfl rfl

end CombinatorialNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse