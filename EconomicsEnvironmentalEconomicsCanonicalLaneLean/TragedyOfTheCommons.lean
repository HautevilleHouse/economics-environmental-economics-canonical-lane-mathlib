import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomics

structure CommonPoolResource where
  resource : Type u
  users : Type v
  rivalrous : Prop
  nonExcludable : Prop
  overuseEquilibrium : Prop
  socialOptimumDifferent : Prop

structure CommonsEvidence (C : CommonPoolResource) where
  rivalrousClosed : C.rivalrous
  nonExcludableClosed : C.nonExcludable
  overuseEquilibriumClosed : C.overuseEquilibrium
  socialOptimumDifferentClosed : C.socialOptimumDifferent

def CommonsTragedyClosed (C : CommonPoolResource) : Prop :=
  C.rivalrous ∧ C.nonExcludable ∧ C.overuseEquilibrium ∧ C.socialOptimumDifferent

theorem commons_tragedy_closed_from_evidence (C : CommonPoolResource) (Ev : CommonsEvidence C) : CommonsTragedyClosed C := by
  exact And.intro Ev.rivalrousClosed (And.intro Ev.nonExcludableClosed (And.intro Ev.overuseEquilibriumClosed Ev.socialOptimumDifferentClosed))

end EconomicsEnvironmentalEconomics
end HautevilleHouse