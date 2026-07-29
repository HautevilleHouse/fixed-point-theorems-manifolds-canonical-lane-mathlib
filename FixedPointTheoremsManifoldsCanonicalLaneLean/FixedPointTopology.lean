import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure ManifoldFixedPointSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  metric : carrier → carrier → ℝ
  complete : Prop
  convex : Prop
  locallyCompact : Prop
  completeTerm : complete
  convexTerm : convex
  locallyCompactTerm : locallyCompact

structure FixedPointAdmittedObject where
  space : ManifoldFixedPointSpace
  mapping : carrier → carrier
  containsFixedPoint : Prop
  fixedPoint : carrier
  containsFixedPointTerm : containsFixedPoint

def FixedPointWitnessClosed (O : FixedPointAdmittedObject) : Prop :=
  O.containsFixedPoint

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse
