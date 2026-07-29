import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure EmissionsTradingPackage where
  permitAllocation : Type
  marketClearing : Type
  abatementCostHeterogeneity : Prop
  permitPriceEquilibrium : Prop
  costEffectiveness : Prop
  dynamicEfficiency : Prop

structure EmissionsTradingEvidence (E : EmissionsTradingPackage) where
  abatementCostHeterogeneityClosed : E.abatementCostHeterogeneity
  permitPriceEquilibriumClosed : E.permitPriceEquilibrium
  costEffectivenessClosed : E.costEffectiveness
  dynamicEfficiencyClosed : E.dynamicEfficiency

def EmissionsTradingClosed (E : EmissionsTradingPackage) : Prop :=
  E.abatementCostHeterogeneity ∧ E.permitPriceEquilibrium ∧
  E.costEffectiveness ∧ E.dynamicEfficiency

theorem emissions_trading_closed_from_evidence
    (E : EmissionsTradingPackage) (V : EmissionsTradingEvidence E) :
    EmissionsTradingClosed E := by
  exact And.intro V.abatementCostHeterogeneityClosed
    (And.intro V.permitPriceEquilibriumClosed
      (And.intro V.costEffectivenessClosed V.dynamicEfficiencyClosed))

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse