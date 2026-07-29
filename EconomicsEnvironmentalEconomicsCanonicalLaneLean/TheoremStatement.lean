import canonicalLaneMathlib.AdmissibleClass
import EconomicsEnvironmentalEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

structure EconomicsEnvironmentalAdmittedObject where
  economicSpace : Type u
  environmentalConstraints : Prop
  equilibriumExistence : Prop
  welfareOptimality : Prop
  sustainabilityCondition : Prop
  conclusion : equilibriumExistence ∧ welfareOptimality ∧ sustainabilityCondition

def EconomicsEnvironmentalWitnessClosed (O : EconomicsEnvironmentalAdmittedObject) : Prop :=
  O.equilibriumExistence ∧ O.welfareOptimality ∧ O.sustainabilityCondition

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse