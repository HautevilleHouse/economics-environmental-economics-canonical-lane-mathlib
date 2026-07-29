import EconomicsEnvironmentalEconomicsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EconomicsEnvironmentalEconomicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EnvironmentalEconomicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EnvironmentalEconomicsAdmittedObject where
  space : EnvironmentalEconomicsSpace
  closedEconomy : Prop
  constraintsSatisfied : Prop
  optimalModel : Type
  optimalTopology : TopologicalSpace optimalModel
  equilibriumExists : Prop
  conclusion : equilibriumExists

structure EnvironmentalEconomicsEndgameState where
  object : EnvironmentalEconomicsAdmittedObject

def EnvironmentalEconomicsWitnessClosed (O : EnvironmentalEconomicsAdmittedObject) : Prop :=
  O.equilibriumExists

end EconomicsEnvironmentalEconomicsCanonicalLaneLean
end HautevilleHouse