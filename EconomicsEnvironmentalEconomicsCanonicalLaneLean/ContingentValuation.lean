import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure ContingentValuationPackage where
  surveyInstrument : Type
  willingnessToPay : Type
  hypotheticalBias : Prop
  scopeInsensitivity : Prop
  bidFunction : Prop
  aggregationConsistent : Prop

structure ContingentValuationEvidence (C : ContingentValuationPackage) where
  hypotheticalBiasClosed : C.hypotheticalBias
  scopeInsensitivityClosed : C.scopeInsensitivity
  bidFunctionClosed : C.bidFunction
  aggregationConsistentClosed : C.aggregationConsistent

def ContingentValuationClosed (C : ContingentValuationPackage) : Prop :=
  C.hypotheticalBias ∧ C.scopeInsensitivity ∧ C.bidFunction ∧ C.aggregationConsistent

theorem contingent_valuation_closed_from_evidence
    (C : ContingentValuationPackage) (V : ContingentValuationEvidence C) :
    ContingentValuationClosed C := by
  exact And.intro V.hypotheticalBiasClosed (And.intro V.scopeInsensitivityClosed
    (And.intro V.bidFunctionClosed V.aggregationConsistentClosed))

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse