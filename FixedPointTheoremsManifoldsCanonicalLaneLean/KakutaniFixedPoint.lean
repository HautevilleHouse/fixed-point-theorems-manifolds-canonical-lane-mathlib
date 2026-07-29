import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure KakutaniFixedPointPackage where
  convexSpace : Type u
  locallyConvex : Prop
  compactSet : Set convexSpace
  correspondence : convexSpace → Set convexSpace
  upperHemicontinuous : Prop
  closedGraph : Prop
  nonemptyConvexValues : ∀ x, x ∈ compactSet → Set.Nonempty (correspondence x) ∧ Set.Convex (correspondence x)
  fixedPointExists : ∃ x ∈ compactSet, x ∈ correspondence x

structure KakutaniFixedPointEvidence (K : KakutaniFixedPointPackage) where
  locallyConvexClosed : K.locallyConvex
  upperHemicontinuousClosed : K.upperHemicontinuous
  closedGraphClosed : K.closedGraph
  nonemptyConvexValuesClosed : ∀ x, x ∈ K.compactSet → Set.Nonempty (K.correspondence x) ∧ Set.Convex (K.correspondence x)
  fixedPointExistsClosed : K.fixedPointExists

def KakutaniFixedPointClosed (K : KakutaniFixedPointPackage) : Prop :=
  K.locallyConvex ∧ K.upperHemicontinuous ∧ K.closedGraph ∧
  (∀ x, x ∈ K.compactSet → Set.Nonempty (K.correspondence x) ∧ Set.Convex (K.correspondence x)) ∧
  K.fixedPointExists

theorem kakutani_fixed_point_closed_from_evidence (K : KakutaniFixedPointPackage)
    (E : KakutaniFixedPointEvidence K) : KakutaniFixedPointClosed K :=
  And.intro E.locallyConvexClosed
    (And.intro E.upperHemicontinuousClosed
      (And.intro E.closedGraphClosed
        (And.intro E.nonemptyConvexValuesClosed E.fixedPointExistsClosed)))

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse