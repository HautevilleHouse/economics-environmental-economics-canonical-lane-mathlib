import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomics

structure ExternalitySource where
  firm : Type u
  emissions : Type v
  damageFunction : Type w
  socialCost : Prop
  privateCost : Prop
  divergenceExists : socialCost ≠ privateCost

structure ExternalityEvidence {E : ExternalitySource} where
  socialCostClosed : E.socialCost
  privateCostClosed : E.privateCost
  divergenceClosed : E.divergenceExists

def ExternalityClosed (E : ExternalitySource) : Prop :=
  E.socialCost ∧ E.privateCost ∧ E.divergenceExists

theorem externality_closed_from_evidence {E : ExternalitySource} (Ev : ExternalityEvidence E) : ExternalityClosed E := by
  exact And.intro Ev.socialCostClosed (And.intro Ev.privateCostClosed Ev.divergenceClosed)

end EconomicsEnvironmentalEconomics
end HautevilleHouse