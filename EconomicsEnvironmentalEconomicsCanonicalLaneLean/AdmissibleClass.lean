import EconomicsEnvironmentalEconomicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure AdmissibleClass where
  object : EnvironmentalEconomicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EnvironmentalEconomicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse