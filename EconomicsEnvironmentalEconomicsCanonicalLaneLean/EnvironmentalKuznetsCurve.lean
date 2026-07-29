import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomics

structure EnvironmentalKuznetsCurveHypothesis where
  income : Type u
  pollution : Type v
  invertedU : Prop
  turningPoint : Prop
  scaleEffect : Prop
  compositionEffect : Prop
  techniqueEffect : Prop

structure EKCEvidence (E : EnvironmentalKuznetsCurveHypothesis) where
  invertedUClosed : E.invertedU
  turningPointClosed : E.turningPoint
  scaleEffectClosed : E.scaleEffect
  compositionEffectClosed : E.compositionEffect
  techniqueEffectClosed : E.techniqueEffect

def EKCClosed (E : EnvironmentalKuznetsCurveHypothesis) : Prop :=
  E.invertedU ∧ E.turningPoint ∧ E.scaleEffect ∧ E.compositionEffect ∧ E.techniqueEffect

theorem ekc_closed_from_evidence (E : EnvironmentalKuznetsCurveHypothesis) (Ev : EKCEvidence E) : EKCClosed E := by
  exact And.intro Ev.invertedUClosed (And.intro Ev.turningPointClosed (And.intro Ev.scaleEffectClosed (And.intro Ev.compositionEffectClosed Ev.techniqueEffectClosed)))

end EconomicsEnvironmentalEconomics
end HautevilleHouse