import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsEnvironmentalEconomics.EnvironmentalExternality
import HautevilleHouse.EconomicsEnvironmentalEconomics.PigouvianTax
import HautevilleHouse.EconomicsEnvironmentalEconomics.CoaseTheorem
import HautevilleHouse.EconomicsEnvironmentalEconomics.TragedyOfTheCommons
import HautevilleHouse.EconomicsEnvironmentalEconomics.CapAndTrade
import HautevilleHouse.EconomicsEnvironmentalEconomics.EnvironmentalKuznetsCurve

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomics

structure AdmissibleClass where
  object : EconomicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EconomicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EconomicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedEconomicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_economics_endgame (A : AdmissibleClass) : ConstrainedEconomicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

structure EconomicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EconomicsAdmittedObject where
  space : EconomicsSpace
  environmentalEquilibrium : Prop
  socialWelfareMaximized : Prop
  sustainabilityCondition : Prop
  policyInstrument : Type
  conclusion : sustainabilityCondition

structure EconomicsEndgameState where
  object : EconomicsAdmittedObject

def EconomicsWitnessClosed (O : EconomicsAdmittedObject) : Prop :=
  O.sustainabilityCondition

end EconomicsEnvironmentalEconomics
end HautevilleHouse