import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsEnvironmentalEconomics.EnvironmentalExternality

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomics

structure PigouvianTaxPackage {E : ExternalitySource} (ext : ExternalityClosed E) where
  marginalDamage : Type u
  taxRate : Type v
  taxEqualsMarginalDamage : Prop
  efficiencyRestored : Prop

structure PigouvianTaxEvidence {E : ExternalitySource} {ext : ExternalityClosed E} (P : PigouvianTaxPackage ext) where
  taxEqualsMarginalDamageClosed : P.taxEqualsMarginalDamage
  efficiencyRestoredClosed : P.efficiencyRestored

def PigouvianTaxClosed {E : ExternalitySource} {ext : ExternalityClosed E} (P : PigouvianTaxPackage ext) : Prop :=
  P.taxEqualsMarginalDamage ∧ P.efficiencyRestored

theorem pigouvian_tax_closed_from_evidence {E : ExternalitySource} {ext : ExternalityClosed E} (P : PigouvianTaxPackage ext) (Ev : PigouvianTaxEvidence P) : PigouvianTaxClosed P := by
  exact And.intro Ev.taxEqualsMarginalDamageClosed Ev.efficiencyRestoredClosed

end EconomicsEnvironmentalEconomics
end HautevilleHouse