import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomics

structure CoaseTheoremPackage where
  propertyRights : Type u
  bargainingSolution : Type v
  zeroTransactionCosts : Prop
  efficientOutcome : Prop
  noGovernmentIntervention : Prop

structure CoaseTheoremEvidence (C : CoaseTheoremPackage) where
  zeroTransactionCostsClosed : C.zeroTransactionCosts
  efficientOutcomeClosed : C.efficientOutcome
  noGovernmentInterventionClosed : C.noGovernmentIntervention

def CoaseTheoremClosed (C : CoaseTheoremPackage) : Prop :=
  C.zeroTransactionCosts ∧ C.efficientOutcome ∧ C.noGovernmentIntervention

theorem coase_theorem_closed_from_evidence (C : CoaseTheoremPackage) (Ev : CoaseTheoremEvidence C) : CoaseTheoremClosed C := by
  exact And.intro Ev.zeroTransactionCostsClosed (And.intro Ev.efficientOutcomeClosed Ev.noGovernmentInterventionClosed)

end EconomicsEnvironmentalEconomics
end HautevilleHouse