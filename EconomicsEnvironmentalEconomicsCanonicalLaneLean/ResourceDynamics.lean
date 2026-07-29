import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure ResourceDynamicsPackage where
  stockVariable : Type
  harvestFunction : Type
  regenerationFunction : Type
  steadyStateExistence : Prop
  optimalHarvestPolicy : Prop
  sustainabilityCondition : Prop

structure ResourceDynamicsEvidence (R : ResourceDynamicsPackage) where
  steadyStateExistenceClosed : R.steadyStateExistence
  optimalHarvestPolicyClosed : R.optimalHarvestPolicy
  sustainabilityConditionClosed : R.sustainabilityCondition

def ResourceDynamicsClosed (R : ResourceDynamicsPackage) : Prop :=
  R.steadyStateExistence ∧ R.optimalHarvestPolicy ∧ R.sustainabilityCondition

theorem resource_dynamics_closed_from_evidence
    (R : ResourceDynamicsPackage) (V : ResourceDynamicsEvidence R) :
    ResourceDynamicsClosed R := by
  exact And.intro V.steadyStateExistenceClosed (And.intro V.optimalHarvestPolicyClosed V.sustainabilityConditionClosed)

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse