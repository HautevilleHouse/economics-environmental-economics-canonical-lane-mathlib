import EconomicsEnvironmentalEconomicsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EnvironmentalEconomicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse