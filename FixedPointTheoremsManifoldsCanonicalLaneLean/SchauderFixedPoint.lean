import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure SchauderPackage where
  space : ManifoldFixedPointSpace
  compactConvexSet : Set space.carrier
  mapping : space.carrier → space.carrier
  continuous : Continuous mapping
  mapsCompactConvexToItself : Set.mapsTo mapping compactConvexSet compactConvexSet
  compactConvexNonempty : compactConvexSet.Nonempty
  continuousTerm : continuous
  mapsCompactConvexToItselfTerm : mapsCompactConvexToItself
  compactConvexNonemptyTerm : compactConvexNonempty

theorem schauder_fixed_point (S : SchauderPackage) :
    ∃ x : S.space.carrier, S.mapping x = x := by
  sorry

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse
