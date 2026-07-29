import EconomicsEnvironmentalEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def economicsProjection : Projection EnvironmentalEconomicsEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem economics_projection_idempotent (x : EnvironmentalEconomicsEndgameState) :
    economicsProjection.toFun (economicsProjection.toFun x) = economicsProjection.toFun x := by
  exact economicsProjection.idempotent x

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse