import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure EnvironmentalExternalitiesPackage where
  productionTechnology : Type
  emissionFunction : Type
  damageFunction : Type
  externalityValued : Prop
  abatementCost : Prop
  socialCostCurve : Prop

structure EnvironmentalExternalitiesEvidence (E : EnvironmentalExternalitiesPackage) where
  externalityValuedClosed : E.externalityValued
  abatementCostClosed : E.abatementCost
  socialCostCurveClosed : E.socialCostCurve

def EnvironmentalExternalitiesClosed (E : EnvironmentalExternalitiesPackage) : Prop :=
  E.externalityValued ∧ E.abatementCost ∧ E.socialCostCurve

theorem environmental_externalities_closed_from_evidence
    (E : EnvironmentalExternalitiesPackage) (V : EnvironmentalExternalitiesEvidence E) :
    EnvironmentalExternalitiesClosed E := by
  exact And.intro V.externalityValuedClosed (And.intro V.abatementCostClosed V.socialCostCurveClosed)

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse