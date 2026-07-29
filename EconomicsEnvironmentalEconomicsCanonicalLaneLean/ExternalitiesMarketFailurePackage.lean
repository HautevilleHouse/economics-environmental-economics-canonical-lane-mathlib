import EconomicsEnvironmentalEconomicsCanonicalLaneLean.EnvironmentalEconomicsAdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure ExternalitiesMarketFailurePackage (A : EnvironmentalAdmissibleClass) where
  externalityType : String
  negativeExternality : Prop
  positiveExternality : Prop
  marketFailureDueToExternality : Prop
  coaseTheoremApplicable : Prop

structure ExternalitiesMarketFailureEvidence (A : EnvironmentalAdmissibleClass) (P : ExternalitiesMarketFailurePackage A) where
  negativeExternalityClosed : P.negativeExternality
  positiveExternalityClosed : P.positiveExternality
  marketFailureDueToExternalityClosed : P.marketFailureDueToExternality
  coaseTheoremApplicableClosed : P.coaseTheoremApplicable

def ExternalitiesMarketFailureClosed (A : EnvironmentalAdmissibleClass) (P : ExternalitiesMarketFailurePackage A) : Prop :=
  P.negativeExternality ∧ P.positiveExternality ∧ P.marketFailureDueToExternality ∧ P.coaseTheoremApplicable

theorem externalities_market_failure_closed_from_evidence
    (A : EnvironmentalAdmissibleClass) (P : ExternalitiesMarketFailurePackage A)
    (E : ExternalitiesMarketFailureEvidence A P) : ExternalitiesMarketFailureClosed A P := by
  exact And.intro E.negativeExternalityClosed
    (And.intro E.positiveExternalityClosed
      (And.intro E.marketFailureDueToExternalityClosed E.coaseTheoremApplicableClosed))

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse