import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure NaturalResourceDynamicsPackage where
  resourceStock : Type u
  growthFunction : resourceStock -> Prop
  extractionRate : Prop
  sustainabilityCondition : Prop
  hotellingRule : Prop
  steadyState : Prop

structure NaturalResourceDynamicsEvidence (N : NaturalResourceDynamicsPackage) where
  growthFunctionClosed : N.growthFunction
  extractionRateClosed : N.extractionRate
  sustainabilityConditionClosed : N.sustainabilityCondition
  hotellingRuleClosed : N.hotellingRule
  steadyStateClosed : N.steadyState

def NaturalResourceDynamicsClosed (N : NaturalResourceDynamicsPackage) : Prop :=
  N.growthFunction ∧ N.extractionRate ∧ N.sustainabilityCondition ∧ N.hotellingRule ∧ N.steadyState

theorem natural_resource_dynamics_closed_from_evidence (N : NaturalResourceDynamicsPackage)
    (Ev : NaturalResourceDynamicsEvidence N) : NaturalResourceDynamicsClosed N := by
  exact And.intro Ev.growthFunctionClosed
    (And.intro Ev.extractionRateClosed
      (And.intro Ev.sustainabilityConditionClosed
        (And.intro Ev.hotellingRuleClosed Ev.steadyStateClosed)))

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse