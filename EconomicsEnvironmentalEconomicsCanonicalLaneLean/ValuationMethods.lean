import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure ValuationMethodsPackage where
  contingentValuation : Type u
  hedonicPricing : Type v
  travelCost : Type w
  choiceExperiment : Type x
  benefitTransfer : Type y
  willingnessToPay : Prop
  consumerSurplus : Prop
  nonMarketValue : Prop

structure ValuationMethodsEvidence (V : ValuationMethodsPackage) where
  willingnessToPayClosed : V.willingnessToPay
  consumerSurplusClosed : V.consumerSurplus
  nonMarketValueClosed : V.nonMarketValue

def ValuationMethodsClosed (V : ValuationMethodsPackage) : Prop :=
  V.willingnessToPay ∧ V.consumerSurplus ∧ V.nonMarketValue

theorem valuation_methods_closed_from_evidence (V : ValuationMethodsPackage)
    (Ev : ValuationMethodsEvidence V) : ValuationMethodsClosed V := by
  exact And.intro Ev.willingnessToPayClosed
    (And.intro Ev.consumerSurplusClosed Ev.nonMarketValueClosed)

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse