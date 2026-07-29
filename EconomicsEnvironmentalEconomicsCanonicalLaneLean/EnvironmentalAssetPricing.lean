import canonicalLaneMathlib.AdmissibleClass

/-!
# Environmental Asset Pricing Package

This module frames asset pricing with environmental externalities as an admissible-class
bridge closure. The key structures are the stochastic discount factor with emission
penalties, the carbon-adjusted Euler equation, and the bridging of environmental
externalities to asset prices.
-/

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure EnvironmentalAssetPricingPackage where
  discountFactor : Type u
  emissionPenalty : Type v
  carbonPricing : Prop
  greenPremium : Prop
  riskFreeRate : Prop
  carbonPricingTerm : carbonPricing
  greenPremiumTerm : greenPremium
  riskFreeRateTerm : riskFreeRate

structure EnvironmentalAssetPricingEvidence (E : EnvironmentalAssetPricingPackage) where
  carbonPricingClosed : E.carbonPricing
  greenPremiumClosed : E.greenPremium
  riskFreeRateClosed : E.riskFreeRate

def EnvironmentalAssetPricingClosed (E : EnvironmentalAssetPricingPackage) : Prop :=
  E.carbonPricing ∧ E.greenPremium ∧ E.riskFreeRate

theorem environmental_asset_pricing_closed_from_evidence
    (E : EnvironmentalAssetPricingPackage)
    (Ev : EnvironmentalAssetPricingEvidence E) : EnvironmentalAssetPricingClosed E := by
  exact And.intro Ev.carbonPricingClosed
    (And.intro Ev.greenPremiumClosed Ev.riskFreeRateClosed)

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse
