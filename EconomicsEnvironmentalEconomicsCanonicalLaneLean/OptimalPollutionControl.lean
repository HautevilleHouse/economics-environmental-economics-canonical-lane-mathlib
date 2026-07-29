import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure OptimalPollutionControlPackage where
  pollutionStock : Type u
  emissionTrajectory : Type v
  socialPlannerObjective : Prop
  pontryaginConditions : Prop
  shadowPrice : Prop
  emissionTax : Prop
  abatementCost : Prop
  policyIntervention : Prop

structure OptimalPollutionControlEvidence (P : OptimalPollutionControlPackage) where
  socialPlannerObjectiveClosed : P.socialPlannerObjective
  pontryaginConditionsClosed : P.pontryaginConditions
  shadowPriceClosed : P.shadowPrice
  emissionTaxClosed : P.emissionTax
  abatementCostClosed : P.abatementCost
  policyInterventionClosed : P.policyIntervention

def OptimalPollutionControlClosed (P : OptimalPollutionControlPackage) : Prop :=
  P.socialPlannerObjective ∧ P.pontryaginConditions ∧ P.shadowPrice ∧ P.emissionTax ∧ P.abatementCost ∧ P.policyIntervention

theorem optimal_pollution_control_closed_from_evidence (P : OptimalPollutionControlPackage)
    (Ev : OptimalPollutionControlEvidence P) : OptimalPollutionControlClosed P := by
  exact And.intro Ev.socialPlannerObjectiveClosed
    (And.intro Ev.pontryaginConditionsClosed
      (And.intro Ev.shadowPriceClosed
        (And.intro Ev.emissionTaxClosed
          (And.intro Ev.abatementCostClosed Ev.policyInterventionClosed))))

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse