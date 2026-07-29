import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure ClimateEconomyIntegratedPackage where
  carbonCycle : Type u
  radiativeForcing : Type v
  temperatureResponse : Type w
  damageFunction : Type x
  integratedAssessmentModel : Type y
  calibration : Prop
  scenarioProjection : Prop
  policyEvaluation : Prop
  climateSensitivity : Prop

structure ClimateEconomyIntegratedEvidence (C : ClimateEconomyIntegratedPackage) where
  calibrationClosed : C.calibration
  scenarioProjectionClosed : C.scenarioProjection
  policyEvaluationClosed : C.policyEvaluation
  climateSensitivityClosed : C.climateSensitivity

def ClimateEconomyIntegratedClosed (C : ClimateEconomyIntegratedPackage) : Prop :=
  C.calibration ∧ C.scenarioProjection ∧ C.policyEvaluation ∧ C.climateSensitivity

theorem climate_economy_integrated_closed_from_evidence (C : ClimateEconomyIntegratedPackage)
    (Ev : ClimateEconomyIntegratedEvidence C) : ClimateEconomyIntegratedClosed C := by
  exact And.intro Ev.calibrationClosed
    (And.intro Ev.scenarioProjectionClosed
      (And.intro Ev.policyEvaluationClosed Ev.climateSensitivityClosed))

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse