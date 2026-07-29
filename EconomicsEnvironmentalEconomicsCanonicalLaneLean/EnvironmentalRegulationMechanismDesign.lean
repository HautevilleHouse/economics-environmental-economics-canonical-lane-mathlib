import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure EnvironmentalRegulationMechanismDesignPackage where
  regulator : Type u
  firms : Type v
  informationStructure : Type w
  regulatoryInstrument : Type x
  incentiveCompatibility : Prop
  revelationPrinciple : Prop
  optimalTariff : Prop
  outputQuota : Prop
  tradablePermit : Prop
  enforcement : Prop

structure EnvironmentalRegulationMechanismDesignEvidence 
    (R : EnvironmentalRegulationMechanismDesignPackage) where
  incentiveCompatibilityClosed : R.incentiveCompatibility
  revelationPrincipleClosed : R.revelationPrinciple
  optimalTariffClosed : R.optimalTariff
  outputQuotaClosed : R.outputQuota
  tradablePermitClosed : R.tradablePermit
  enforcementClosed : R.enforcement

def EnvironmentalRegulationMechanismDesignClosed 
    (R : EnvironmentalRegulationMechanismDesignPackage) : Prop :=
  R.incentiveCompatibility ∧ R.revelationPrinciple ∧ R.optimalTariff ∧ R.outputQuota ∧ R.tradablePermit ∧ R.enforcement

theorem environmental_regulation_mechanism_design_closed_from_evidence
    (R : EnvironmentalRegulationMechanismDesignPackage)
    (Ev : EnvironmentalRegulationMechanismDesignEvidence R) : 
    EnvironmentalRegulationMechanismDesignClosed R := by
  exact And.intro Ev.incentiveCompatibilityClosed
    (And.intro Ev.revelationPrincipleClosed
      (And.intro Ev.optimalTariffClosed
        (And.intro Ev.outputQuotaClosed
          (And.intro Ev.tradablePermitClosed Ev.enforcementClosed))))

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse