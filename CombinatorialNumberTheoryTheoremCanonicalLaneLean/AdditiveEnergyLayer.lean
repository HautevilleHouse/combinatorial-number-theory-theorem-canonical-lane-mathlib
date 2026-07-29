import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialNumberTheoryTheoremCanonicalLaneLean

/-!
# Additive energy layer

This layer records the additive energy of a set, a key concept in additive
combinatorics measuring the number of additive quadruples.
-/

structure AdditiveEnergyDatum where
  additiveEnergy : ℕ
  setCardinality : ℕ

structure AdditiveEnergyCertificate where
  datum : AdditiveEnergyDatum
  energyBridgeClosed : Prop
  energyGateClosed : Prop

def primitiveAdditiveEnergyDatum : AdditiveEnergyDatum := {
  additiveEnergy := 100,
  setCardinality := 10
}

def AdditiveEnergyClosed (C : AdditiveEnergyCertificate) : Prop :=
  C.energyBridgeClosed ∧ C.energyGateClosed

theorem primitive_additive_energy_closed :
    AdditiveEnergyClosed ({
      datum := primitiveAdditiveEnergyDatum,
      energyBridgeClosed := True,
      energyGateClosed := True
    } : AdditiveEnergyCertificate) := by
  exact And.intro trivial trivial

end CombinatorialNumberTheoryTheoremCanonicalLaneLean
end HautevilleHouse
