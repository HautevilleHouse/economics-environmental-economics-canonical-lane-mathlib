import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomics

structure CapAndTradeSystem where
  cap : Type u
  permits : Type v
  market : Type w
  capBinding : Prop
  permitAllocation : Prop
  tradeEquilibrium : Prop

structure CapAndTradeEvidence (C : CapAndTradeSystem) where
  capBindingClosed : C.capBinding
  permitAllocationClosed : C.permitAllocation
  tradeEquilibriumClosed : C.tradeEquilibrium

def CapAndTradeClosed (C : CapAndTradeSystem) : Prop :=
  C.capBinding ∧ C.permitAllocation ∧ C.tradeEquilibrium

theorem cap_and_trade_closed_from_evidence (C : CapAndTradeSystem) (Ev : CapAndTradeEvidence C) : CapAndTradeClosed C := by
  exact And.intro Ev.capBindingClosed (And.intro Ev.permitAllocationClosed Ev.tradeEquilibriumClosed)

end EconomicsEnvironmentalEconomics
end HautevilleHouse