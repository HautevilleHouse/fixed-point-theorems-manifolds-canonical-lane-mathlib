import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FixedPointSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FixedPointAdmittedObject where
  space : FixedPointSpace
  compactManifold : Prop
  continuousMap : Type
  fixedPointProperty : Prop
  conclusion : fixedPointProperty

structure FixedPointEndgameState where
  object : FixedPointAdmittedObject

def FixedPointWitnessClosed (O : FixedPointAdmittedObject) : Prop :=
  O.fixedPointProperty

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse