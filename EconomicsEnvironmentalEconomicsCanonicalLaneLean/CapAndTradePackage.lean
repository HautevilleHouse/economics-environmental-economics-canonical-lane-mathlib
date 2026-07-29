import EconomicsEnvironmentalEconomicsCanonicalLaneLean.ExternalitiesMarketFailurePackage

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure CapAndTradePackage (A : EnvironmentalAdmissibleClass) (P : ExternalitiesMarketFailurePackage A) where
  emissionCap : ℕ
  permitAllocation : String
  marketForPermits : Prop
  costEffective : Prop
  environmentalEffectiveness : Prop

structure CapAndTradeEvidence (A : EnvironmentalAdmissibleClass) (P : ExternalitiesMarketFailurePackage A) (C : CapAndTradePackage A P) where
  marketForPermitsClosed : C.marketForPermits
  costEffectiveClosed : C.costEffective
  environmentalEffectivenessClosed : C.environmentalEffectiveness

def CapAndTradeClosed (A : EnvironmentalAdmissibleClass) (P : ExternalitiesMarketFailurePackage A) (C : CapAndTradePackage A P) : Prop :=
  C.marketForPermits ∧ C.costEffective ∧ C.environmentalEffectiveness

theorem cap_and_trade_closed_from_evidence
    (A : EnvironmentalAdmissibleClass) (P : ExternalitiesMarketFailurePackage A)
    (C : CapAndTradePackage A P) (E : CapAndTradeEvidence A P C) :
    CapAndTradeClosed A P C := by
  exact And.intro E.marketForPermitsClosed
    (And.intro E.costEffectiveClosed E.environmentalEffectivenessClosed)

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse