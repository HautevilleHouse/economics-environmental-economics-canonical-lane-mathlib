import EconomicsEnvironmentalEconomicsCanonicalLaneLean.EnvironmentalEconomicsAdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure EnvironmentalKuznetsCurvePackage (A : EnvironmentalAdmissibleClass) where
  invertedUHypothesis : Prop
  turningPointIncome : ℕ
  pollutionDeclinesAfterTurningPoint : Prop
  empiricalEvidence : Prop
  policyImplications : Prop

structure EnvironmentalKuznetsCurveEvidence (A : EnvironmentalAdmissibleClass) (E : EnvironmentalKuznetsCurvePackage A) where
  invertedUHypothesisClosed : E.invertedUHypothesis
  pollutionDeclinesAfterTurningPointClosed : E.pollutionDeclinesAfterTurningPoint
  empiricalEvidenceClosed : E.empiricalEvidence
  policyImplicationsClosed : E.policyImplications

def EnvironmentalKuznetsCurveClosed (A : EnvironmentalAdmissibleClass) (E : EnvironmentalKuznetsCurvePackage A) : Prop :=
  E.invertedUHypothesis ∧ E.pollutionDeclinesAfterTurningPoint ∧ E.empiricalEvidence ∧ E.policyImplications

theorem environmental_kuznets_curve_closed_from_evidence
    (A : EnvironmentalAdmissibleClass) (E : EnvironmentalKuznetsCurvePackage A)
    (Ev : EnvironmentalKuznetsCurveEvidence A E) : EnvironmentalKuznetsCurveClosed A E := by
  exact And.intro Ev.invertedUHypothesisClosed
    (And.intro Ev.pollutionDeclinesAfterTurningPointClosed
      (And.intro Ev.empiricalEvidenceClosed Ev.policyImplicationsClosed))

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse