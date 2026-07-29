import EconomicsEnvironmentalEconomicsCanonicalLaneLean.ExternalitiesMarketFailurePackage

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure PigouvianTaxSolutionPackage (A : EnvironmentalAdmissibleClass) (P : ExternalitiesMarketFailurePackage A) where
  taxRate : ℚ
  taxCorrectsExternality : Prop
  revenueRecycled : Prop
  efficiencyImproved : Prop
  distributionalEffects : Prop

structure PigouvianTaxSolutionEvidence (A : EnvironmentalAdmissibleClass) (P : ExternalitiesMarketFailurePackage A) (S : PigouvianTaxSolutionPackage A P) where
  taxCorrectsExternalityClosed : S.taxCorrectsExternality
  revenueRecycledClosed : S.revenueRecycled
  efficiencyImprovedClosed : S.efficiencyImproved
  distributionalEffectsClosed : S.distributionalEffects

def PigouvianTaxSolutionClosed (A : EnvironmentalAdmissibleClass) (P : ExternalitiesMarketFailurePackage A) (S : PigouvianTaxSolutionPackage A P) : Prop :=
  S.taxCorrectsExternality ∧ S.revenueRecycled ∧ S.efficiencyImproved ∧ S.distributionalEffects

theorem pigouvian_tax_solution_closed_from_evidence
    (A : EnvironmentalAdmissibleClass) (P : ExternalitiesMarketFailurePackage A)
    (S : PigouvianTaxSolutionPackage A P) (E : PigouvianTaxSolutionEvidence A P S) :
    PigouvianTaxSolutionClosed A P S := by
  exact And.intro E.taxCorrectsExternalityClosed
    (And.intro E.revenueRecycledClosed
      (And.intro E.efficiencyImprovedClosed E.distributionalEffectsClosed))

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse