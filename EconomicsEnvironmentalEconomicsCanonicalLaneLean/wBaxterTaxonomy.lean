import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure WBaxterTaxonomyPackage where
  environmentalGood : Type
  useValue : Prop
  nonUseValue : Prop
  existenceValue : Prop
  optionValue : Prop
  bequestValue : Prop
  totalEconomicValue : Prop

structure WBaxterTaxonomyEvidence (W : WBaxterTaxonomyPackage) where
  useValueClosed : W.useValue
  nonUseValueClosed : W.nonUseValue
  existenceValueClosed : W.existenceValue
  optionValueClosed : W.optionValue
  bequestValueClosed : W.bequestValue
  totalEconomicValueClosed : W.totalEconomicValue

def WBaxterTaxonomyClosed (W : WBaxterTaxonomyPackage) : Prop :=
  W.useValue ∧ W.nonUseValue ∧ W.existenceValue ∧
  W.optionValue ∧ W.bequestValue ∧ W.totalEconomicValue

theorem w_baxter_taxonomy_closed_from_evidence
    (W : WBaxterTaxonomyPackage) (V : WBaxterTaxonomyEvidence W) :
    WBaxterTaxonomyClosed W := by
  exact And.intro V.useValueClosed (And.intro V.nonUseValueClosed
    (And.intro V.existenceValueClosed (And.intro V.optionValueClosed
      (And.intro V.bequestValueClosed V.totalEconomicValueClosed))))

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse