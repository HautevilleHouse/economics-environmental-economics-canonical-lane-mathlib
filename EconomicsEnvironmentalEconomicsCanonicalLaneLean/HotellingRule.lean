import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure HotellingRulePackage where
  resourcePrice : Type
  extractionCost : Type
  discountRate : Type
  pricePathOptimal : Prop
  scarcityRentNonnegative : Prop
  royaltyEqualsMarginalUserCost : Prop

structure HotellingRuleEvidence (H : HotellingRulePackage) where
  pricePathOptimalClosed : H.pricePathOptimal
  scarcityRentNonnegativeClosed : H.scarcityRentNonnegative
  royaltyEqualsMarginalUserCostClosed : H.royaltyEqualsMarginalUserCost

def HotellingRuleClosed (H : HotellingRulePackage) : Prop :=
  H.pricePathOptimal ∧ H.scarcityRentNonnegative ∧ H.royaltyEqualsMarginalUserCost

theorem hotelling_rule_closed_from_evidence
    (H : HotellingRulePackage) (V : HotellingRuleEvidence H) :
    HotellingRuleClosed H := by
  exact And.intro V.pricePathOptimalClosed (And.intro V.scarcityRentNonnegativeClosed V.royaltyEqualsMarginalUserCostClosed)

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse