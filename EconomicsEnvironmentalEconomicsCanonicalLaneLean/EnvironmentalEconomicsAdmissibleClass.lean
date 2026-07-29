import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure EnvironmentalAdmissibleObject where
  economy : Type u
  initialEndowments : economy -> ℕ
  preferences : economy -> economy → Prop
  productionSets : economy → Set ℕ
  competitiveEquilibriumExists : Prop
  paretoOptimalityHolds : Prop

structure EnvironmentalAdmissibleClass where
  object : EnvironmentalAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : EnvironmentalAdmissibleClass) : Prop :=
  EnvironmentalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse